(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1784461451)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp268566 (list gxc#::basic-xform::t))
            (__tmp268565 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp268566
         '()
         __tmp268565
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args267583%_
        (apply make-instance gxc#::optimize-call::t _%$args267583%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp268567
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
        (__make-atomic-promise __tmp268567)))
    (define gxc#apply-optimize-call
      (lambda (_%stx267575%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self267578%_
                (let ((__obj268557
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj268557))
               (__tmp268568
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self267578%_ _%stx267575%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp268568
           gxc#current-compile-method
           _%self267578%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp268570 (list gxc#::void::t))
            (__tmp268569 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp268570
         '()
         __tmp268569
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args267572%_
        (apply make-instance gxc#::check-return-type::t _%$args267572%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp268571
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
        (__make-atomic-promise __tmp268571)))
    (define gxc#apply-check-return-type
      (lambda (_%stx267564%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self267567%_
                (let ((__obj268559
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj268559))
               (__tmp268572
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self267567%_ _%stx267564%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp268572
           gxc#current-compile-method
           _%self267567%_))))
    (define gxc#optimize-call%
      (lambda (_%self266706%_ _%stx266707%_)
        (let* ((_%__stx267724267725%_ _%stx266707%_)
               (_%$%g266711266793%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx267724267725%_)))))
          (let ((_%__kont267726267727%_
                 (lambda (_%$%g266713267354%_ _%$%g266714267355%_)
                   (let* ((_%rator-id267375%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%$%g266714267355%_)))
                          (_%rator-type267377%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id267375%_)))
                          (_%$e267380%_
                           (let ()
                             (declare (not safe))
                             (__hash-get
                              gxc#special-procedure-optimizers
                              _%rator-id267375%_))))
                     (if _%$e267380%_
                         (_%$e267380%_ _%self266706%_ _%stx266707%_)
                         (if (or (not _%rator-type267377%_)
                                 (eq? (##structure-ref
                                       _%rator-type267377%_
                                       '1
                                       gxc#!type::t
                                       '#f)
                                      't))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self266706%_ _%stx266707%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%rator-type267377%_
                                    'gxc#!procedure::t))
                                 (let ()
                                   (let ((__tmp268573
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%rator-type267377%_
                                             '1
                                             '#f
                                             '#f))))
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"optimize-call "
                                      _%rator-id267375%_
                                      '" => "
                                      _%rator-type267377%_
                                      '" "
                                      __tmp268573))
                                   (let* ((_%optimized267397%_
                                           (let ((__method268560
                                                  (let ()
                                                    (declare (not safe))
                                                    (__method-ref
                                                     _%rator-type267377%_
                                                     'optimize-call))))
                                             (if __method268560
                                                 (let ((__tmp268574
                                                        (let ((__tmp268575
                                                               (lambda (_%$%g267389267392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g267390267394%_)
                         (cons _%$%g267389267392%_ _%$%g267390267394%_))))
                  (declare (not safe))
                  (foldr__0 __tmp268575 '() _%$%g266713267354%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__method268560
                                                    _%rator-type267377%_
                                                    _%self266706%_
                                                    _%stx266707%_
                                                    __tmp268574))
                                                 (begin
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Missing method"
                                                            _%rator-type267377%_
                                                            'optimize-call))
                                                   '#!void))))
                                          (_%__stx267672267673%_
                                           _%optimized267397%_)
                                          (_%$%g267400267429%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx267672267673%_)))))
                                     (let ((_%__kont267674267675%_
                                            (lambda (_%$%g267402267495%_
                                                     _%$%g267403267496%_)
                                              (let* ((_%optimized-rator-id267524%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#identifier-symbol
                                                         _%$%g267403267496%_)))
                                                     (_%rator-type267529%_
                                                      (let ((_%$e267526%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#optimizer-lookup-type
                        _%optimized-rator-id267524%_))))
                (if _%$e267526%_ _%$e267526%_ _%rator-type267377%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (class-instance?
                                                           gxc#!primitive::t
                                                           _%rator-type267529%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##memq _%optimized-rator-id267524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          gxc#checked-primitives))
                (and (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%rator-type267529%_
                        'gxc#!procedure::t))
                     (eq? (let ()
                            (declare (not safe))
                            (gxc#!procedure-origin _%rator-type267529%_))
                          (##structure-ref
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))
                           '1
                           gx#expander-context::t
                           '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%optimized267397%_
                                                    (let ((__tmp268576
                                                           (cons '%#call-unchecked
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '%#ref))
                                     (cons _%$%g267403267496%_ '()))
                               (let ((__tmp268577
                                      (lambda (_%$%g267537267540%_
                                               _%$%g267538267542%_)
                                        (cons _%$%g267537267540%_
                                              _%$%g267538267542%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp268577
                                  '()
                                  _%$%g267402267495%_))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp268576 _%stx266707%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont267678267679%_
                                            (lambda () _%optimized267397%_)))
                                       (let ((_%__match267721267722%_
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
                                                       _%__splice267676267677%_
                                                       _%$%target267416267473%_
                                                       _%$%tl267418267475%_)
                                                (letrec ((_%$%loop267419267478%_
                                                          (lambda (_%$%hd267417267481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%arg267423267483%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd267417267481%_))
                        (let ((_%$%e267420267485%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd267417267481%_))))
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
                                   _%$%arg267423267483%_))))
                        (let ((_%$%arg267424267493%_
                               (reverse _%$%arg267423267483%_)))
                          (_%__kont267674267675%_
                           _%$%arg267424267493%_
                           _%$%hd267414267468%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop267419267478%_
                                                   _%$%target267416267473%_
                                                   '())))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx267672267673%_))
                                             (let ((_%$%e267404267441%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx267672267673%_))))
                                               (let ((_%$%tl267406267446%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e267404267441%_)))
                                                     (_%$%hd267405267444%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e267404267441%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%$%hd267405267444%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#call
                                                            _%$%hd267405267444%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%tl267406267446%_))
                     (let ((_%$%e267407267449%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl267406267446%_))))
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
                               (gx#stx-pair? _%$%hd267408267452%_))
                             (let ((_%$%e267410267457%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%hd267408267452%_))))
                               (let ((_%$%tl267412267462%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e267410267457%_)))
                                     (_%$%hd267411267460%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e267410267457%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#identifier? _%$%hd267411267460%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-eq?
                                            '%#ref
                                            _%$%hd267411267460%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl267412267462%_))
                                             (let ((_%$%e267413267465%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl267412267462%_))))
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
                                                       (gx#stx-null?
                                                        _%$%tl267415267470%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%$%tl267409267454%_))
                                                         (let ((_%__splice267676267677%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%$%tl267409267454%_
                           '0))))
                   (let ((_%$%tl267418267475%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice267676267677%_ '1)))
                         (_%$%target267416267473%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice267676267677%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl267418267475%_))
                         (_%__match267721267722%_
                          _%$%e267404267441%_
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
                          _%__splice267676267677%_
                          _%$%target267416267473%_
                          _%$%tl267418267475%_)
                         (_%__kont267678267679%_))))
                 (_%__kont267678267679%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont267678267679%_))))
                                             (_%__kont267678267679%_))
                                         (_%__kont267678267679%_))
                                     (_%__kont267678267679%_))))
                             (_%__kont267678267679%_))))
                     (_%__kont267678267679%_))
                 (_%__kont267678267679%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont267678267679%_))))
                                             (_%__kont267678267679%_))))))
                                 (if (and (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%rator-type267377%_
                                             'gxc#!class::t))
                                          (eq? (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%rator-type267377%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               'procedure))
                                     (let ((__tmp268578
                                            (cons '%#call-unchecked
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref))
                      (cons _%$%g266714267355%_ '()))
                (map (lambda (_%$%g267548267550%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self266706%_
                          _%$%g267548267550%_)))
                     (let ((__tmp268579
                            (lambda (_%$%g267552267555%_ _%$%g267553267557%_)
                              (cons _%$%g267552267555%_ _%$%g267553267557%_))))
                       (declare (not safe))
                       (foldr__0 __tmp268579 '() _%$%g266713267354%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp268578
                                        _%stx266707%_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"illegal application; not a procedure"
                                        _%stx266707%_
                                        _%rator-type267377%_)))))))))
                (_%__kont267730267731%_
                 (lambda (_%$%g266736266962%_
                          _%$%g266737266963%_
                          _%$%g266738266964%_)
                   (let _%loop267082%_ ((_%rest-arg267084%_
                                         (let ((__tmp268586
                                                (lambda (_%$%g267280267283%_
                                                         _%$%g267281267285%_)
                                                  (cons _%$%g267280267283%_
                                                        _%$%g267281267285%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp268586
                                            '()
                                            _%$%g266738266964%_)))
                                        (_%rest-rand267085%_
                                         (let ((__tmp268587
                                                (lambda (_%$%g267287267290%_
                                                         _%$%g267288267292%_)
                                                  (cons _%$%g267287267290%_
                                                        _%$%g267288267292%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp268587
                                            '()
                                            _%$%g266736266962%_)))
                                        (_%bind267086%_ '())
                                        (_%subst267087%_ '()))
                     (let* ((_%$%rest-arg267088267096%_ _%rest-arg267084%_)
                            (_%$%else267090267109%_
                             (lambda ()
                               (let* ((_%body267104%_
                                       (if (null? _%subst267087%_)
                                           _%$%g266737266963%_
                                           (let ((__tmp268580
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-inline-subst__%
                                                     '#f
                                                     _%subst267087%_
                                                     _%$%g266737266963%_))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp268580
                                              _%stx266707%_))))
                                      (_%expr267106%_
                                       (let ((__tmp268581
                                              (cons '%#let-values
                                                    (cons _%bind267086%_
                                                          (cons _%body267104%_
                                                                '())))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp268581
                                          _%stx266707%_))))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-refine-type-info _%expr267106%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self266706%_
                                    _%expr267106%_)))))
                            (_%$%K267092267269%_
                             (lambda (_%rest-arg267112%_ _%arg-id267113%_)
                               (let* ((_%$%rest-rand267114267122%_
                                       _%rest-rand267085%_)
                                      (_%$%else267116267144%_
                                       (lambda ()
                                         (let ((__tmp268584
                                                (let ((__tmp268585
                                                       (lambda (_%$%g267129267132%_
                                                                _%$%g267130267134%_)
                                                         (cons _%$%g267129267132%_
                                                               _%$%g267130267134%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp268585
                                                   '()
                                                   _%$%g266738266964%_)))
                                               (__tmp268582
                                                (let ((__tmp268583
                                                       (lambda (_%$%g267136267139%_
                                                                _%$%g267137267141%_)
                                                         (cons _%$%g267136267139%_
                                                               _%$%g267137267141%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp268583
                                                   '()
                                                   _%$%g266736266962%_))))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"inline lambda arity mismatch"
                                            _%stx266707%_
                                            __tmp268584
                                            __tmp268582))))
                                      (_%$%K267118267257%_
                                       (lambda (_%rest-rand267147%_
                                                _%rand267148%_)
                                         (let* ((_%__stx267626267627%_
                                                 _%rand267148%_)
                                                (_%$%g267152267172%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx267626267627%_)))))
                                           (let ((_%__kont267628267629%_
                                                  (lambda (_%$%g267154267243%_)
                                                    (_%loop267082%_
                                                     _%rest-arg267112%_
                                                     _%rest-rand267147%_
                                                     _%bind267086%_
                                                     (cons (cons _%arg-id267113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand267148%_)
                   _%subst267087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont267630267631%_
                                                  (lambda (_%$%g267161267200%_)
                                                    (_%loop267082%_
                                                     _%rest-arg267112%_
                                                     _%rest-rand267147%_
                                                     _%bind267086%_
                                                     (cons (cons _%arg-id267113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%rand267148%_)
                   _%subst267087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont267632267633%_
                                                  (lambda ()
                                                    (_%loop267082%_
                                                     _%rest-arg267112%_
                                                     _%rest-rand267147%_
                                                     (cons (cons (cons _%arg-id267113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _%rand267148%_ '()))
                   _%bind267086%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%subst267087%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx267626267627%_))
                                                 (let ((_%$%e267155267227%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx267626267627%_))))
                                                   (let ((_%$%tl267157267232%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e267155267227%_)))
                                                         (_%$%hd267156267230%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e267155267227%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%$%hd267156267230%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#quote _%$%hd267156267230%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl267157267232%_))
                         (let ((_%$%e267158267235%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl267157267232%_))))
                           (let ((_%$%tl267160267240%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e267158267235%_)))
                                 (_%$%hd267159267238%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e267158267235%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl267160267240%_))
                                 (_%__kont267628267629%_ _%$%hd267159267238%_)
                                 (_%__kont267632267633%_))))
                         (_%__kont267632267633%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#ref _%$%hd267156267230%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl267157267232%_))
                             (let ((_%$%e267165267192%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl267157267232%_))))
                               (let ((_%$%tl267167267197%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e267165267192%_)))
                                     (_%$%hd267166267195%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e267165267192%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl267167267197%_))
                                     (_%__kont267630267631%_
                                      _%$%hd267166267195%_)
                                     (_%__kont267632267633%_))))
                             (_%__kont267632267633%_))
                         (_%__kont267632267633%_)))
                 (_%__kont267632267633%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont267632267633%_)))))))
                                 (if (pair? _%$%rest-rand267114267122%_)
                                     (let ((_%$%hd267119267260%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%rest-rand267114267122%_)))
                                           (_%$%tl267120267262%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%rest-rand267114267122%_))))
                                       (let* ((_%rand267265%_
                                               _%$%hd267119267260%_)
                                              (_%rest-rand267267%_
                                               _%$%tl267120267262%_))
                                         (_%$%K267118267257%_
                                          _%rest-rand267267%_
                                          _%rand267265%_)))
                                     (_%$%else267116267144%_))))))
                       (if (pair? _%$%rest-arg267088267096%_)
                           (let ((_%$%hd267093267272%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest-arg267088267096%_)))
                                 (_%$%tl267094267274%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest-arg267088267096%_))))
                             (let* ((_%arg-id267277%_ _%$%hd267093267272%_)
                                    (_%rest-arg267279%_ _%$%tl267094267274%_))
                               (_%$%K267092267269%_
                                _%rest-arg267279%_
                                _%arg-id267277%_)))
                           (_%$%else267090267109%_))))))
                (_%__kont267736267737%_
                 (lambda (_%$%g266772266836%_ _%$%g266773266837%_)
                   (let ((_%rator-type266854%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type
                             _%$%g266773266837%_))))
                     (if (and _%rator-type266854%_
                              (eq? (##structure-ref
                                    _%rator-type266854%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (if (let ()
                                    (declare (not safe))
                                    (class-instance?
                                     gxc#!primitive::t
                                     _%rator-type266854%_))
                                  '#f
                                  (not (and (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%rator-type266854%_
                                               'gxc#!procedure::t))
                                            (eq? (let ()
                                                   (declare (not safe))
                                                   (gxc#!procedure-origin
                                                    _%rator-type266854%_))
                                                 (##structure-ref
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#current-expander-context))
                                                  '1
                                                  gx#expander-context::t
                                                  '#f))))))
                         (let ((__tmp268588
                                (cons '%#call-unchecked
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self266706%_
                                               _%$%g266773266837%_))
                                            (map (lambda (_%$%g266856266858%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self266706%_
                                                      _%$%g266856266858%_)))
                                                 (let ((__tmp268589
                                                        (lambda (_%$%g266860266863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g266861266865%_)
                  (cons _%$%g266860266863%_ _%$%g266861266865%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp268589
                                                    '()
                                                    _%$%g266772266836%_)))))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp268588 _%stx266707%_))
                         (if (or (not _%rator-type266854%_)
                                 (let ((__tmp268590
                                        (##structure-ref
                                         _%rator-type266854%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp268590 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self266706%_ _%stx266707%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx266707%_
                                _%rator-type266854%_))))))))
            (let* ((_%__match267833267834%_
                    (lambda (_%$%e266774266798%_
                             _%$%hd266775266801%_
                             _%$%tl266776266803%_
                             _%$%e266777266806%_
                             _%$%hd266778266809%_
                             _%$%tl266779266811%_
                             _%__splice267738267739%_
                             _%$%target266780266814%_
                             _%$%tl266782266816%_)
                      (letrec ((_%$%loop266783266819%_
                                (lambda (_%$%hd266781266822%_
                                         _%$%rand266787266824%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd266781266822%_))
                                      (let ((_%$%e266784266826%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd266781266822%_))))
                                        (let ((_%$%lp-tl266786266831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e266784266826%_)))
                                              (_%$%lp-hd266785266829%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e266784266826%_))))
                                          (_%$%loop266783266819%_
                                           _%$%lp-tl266786266831%_
                                           (cons _%$%lp-hd266785266829%_
                                                 _%$%rand266787266824%_))))
                                      (let ((_%$%rand266788266834%_
                                             (reverse _%$%rand266787266824%_)))
                                        (_%__kont267736267737%_
                                         _%$%rand266788266834%_
                                         _%$%hd266778266809%_))))))
                        (_%$%loop266783266819%_
                         _%$%target266780266814%_
                         '()))))
                   (_%__match267825267826%_
                    (lambda (_%$%e266774266798%_
                             _%$%hd266775266801%_
                             _%$%tl266776266803%_
                             _%$%e266777266806%_
                             _%$%hd266778266809%_
                             _%$%tl266779266811%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl266779266811%_))
                          (let ((_%__splice267738267739%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl266779266811%_
                                    '0))))
                            (let ((_%$%tl266782266816%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice267738267739%_
                                      '1)))
                                  (_%$%target266780266814%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice267738267739%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl266782266816%_))
                                  (_%__match267833267834%_
                                   _%$%e266774266798%_
                                   _%$%hd266775266801%_
                                   _%$%tl266776266803%_
                                   _%$%e266777266806%_
                                   _%$%hd266778266809%_
                                   _%$%tl266779266811%_
                                   _%__splice267738267739%_
                                   _%$%target266780266814%_
                                   _%$%tl266782266816%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g266711266793%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g266711266793%_)))))
                   (_%__match267813267814%_
                    (lambda (_%$%e266739266878%_
                             _%$%hd266740266881%_
                             _%$%tl266741266883%_
                             _%$%e266742266886%_
                             _%$%hd266743266889%_
                             _%$%tl266744266891%_
                             _%$%e266745266894%_
                             _%$%hd266746266897%_
                             _%$%tl266747266899%_
                             _%$%e266748266902%_
                             _%$%hd266749266905%_
                             _%$%tl266750266907%_
                             _%__splice267732267733%_
                             _%$%target266751266910%_
                             _%$%tl266753266912%_)
                      (letrec ((_%$%loop266754266915%_
                                (lambda (_%$%hd266752266918%_
                                         _%$%arg266758266920%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd266752266918%_))
                                      (let ((_%$%e266755266922%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd266752266918%_))))
                                        (let ((_%$%lp-tl266757266927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e266755266922%_)))
                                              (_%$%lp-hd266756266925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e266755266922%_))))
                                          (_%$%loop266754266915%_
                                           _%$%lp-tl266757266927%_
                                           (cons _%$%lp-hd266756266925%_
                                                 _%$%arg266758266920%_))))
                                      (let ((_%$%arg266759266930%_
                                             (reverse _%$%arg266758266920%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl266750266907%_))
                                            (let ((_%$%e266760266932%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl266750266907%_))))
                                              (let ((_%$%tl266762266937%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e266760266932%_)))
                                                    (_%$%hd266761266935%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e266760266932%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl266762266937%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl266744266891%_))
                                                        (let ((_%__splice267734267735%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl266744266891%_
                          '0))))
                  (let ((_%$%tl266765266942%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice267734267735%_ '1)))
                        (_%$%target266763266940%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice267734267735%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl266765266942%_))
                        (letrec ((_%$%loop266766266945%_
                                  (lambda (_%$%hd266764266948%_
                                           _%$%rand266770266950%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd266764266948%_))
                                        (let ((_%$%e266767266952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd266764266948%_))))
                                          (let ((_%$%lp-tl266769266957%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e266767266952%_)))
                                                (_%$%lp-hd266768266955%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e266767266952%_))))
                                            (_%$%loop266766266945%_
                                             _%$%lp-tl266769266957%_
                                             (cons _%$%lp-hd266768266955%_
                                                   _%$%rand266770266950%_))))
                                        (let ((_%$%rand266771266960%_
                                               (reverse _%$%rand266770266950%_)))
                                          (let ((_%$%g266736266962%_
                                                 _%$%rand266771266960%_)
                                                (_%$%g266737266963%_
                                                 _%$%hd266761266935%_)
                                                (_%$%g266738266964%_
                                                 _%$%arg266759266930%_))
                                            (if (and (= (length (let ((__tmp268591
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%$%g266990266993%_
                                        _%$%g266991266995%_)
                                 (cons _%$%g266990266993%_
                                       _%$%g266991266995%_))))
                          (declare (not safe))
                          (foldr__0 __tmp268591 '() _%$%g266738266964%_)))
                (length (let ((__tmp268592
                               (lambda (_%$%g266997267000%_
                                        _%$%g266998267002%_)
                                 (cons _%$%g266997267000%_
                                       _%$%g266998267002%_))))
                          (declare (not safe))
                          (foldr__0 __tmp268592 '() _%$%g266736266962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp268595
                                                            (lambda (_%id267005%_)
                                                              (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gxc#mutable-binding? _%id267005%_)))))
                   (__tmp268593
                    (let ((__tmp268594
                           (lambda (_%$%g267006267009%_ _%$%g267007267011%_)
                             (cons _%$%g267006267009%_ _%$%g267007267011%_))))
                      (declare (not safe))
                      (foldr__0 __tmp268594 '() _%$%g266738266964%_))))
               (declare (not safe))
               (andmap__0 __tmp268595 __tmp268593))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp268598
                                                            (lambda (_%rand267014%_)
                                                              (let* ((_%__stx267600267601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%rand267014%_)
                             (_%$%g267017267030%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx267600267601%_)))))
                        (let ((_%__kont267602267603%_
                               (lambda (_%$%g267019267058%_)
                                 (not (let ()
                                        (declare (not safe))
                                        (gxc#mutable-binding?
                                         _%$%g267019267058%_)))))
                              (_%__kont267604267605%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx267600267601%_))
                              (let ((_%$%e267020267042%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx267600267601%_))))
                                (let ((_%$%tl267022267047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267020267042%_)))
                                      (_%$%hd267021267045%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267020267042%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd267021267045%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd267021267045%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl267022267047%_))
                                              (let ((_%$%e267023267050%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl267022267047%_))))
                                                (let ((_%$%tl267025267055%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e267023267050%_)))
                                                      (_%$%hd267024267053%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e267023267050%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl267025267055%_))
                                                      (_%__kont267602267603%_
                                                       _%$%hd267024267053%_)
                                                      (_%__kont267604267605%_))))
                                              (_%__kont267604267605%_))
                                          (_%__kont267604267605%_))
                                      (_%__kont267604267605%_))))
                              (_%__kont267604267605%_))))))
                   (__tmp268596
                    (let ((__tmp268597
                           (lambda (_%$%g267074267077%_ _%$%g267075267079%_)
                             (cons _%$%g267074267077%_ _%$%g267075267079%_))))
                      (declare (not safe))
                      (foldr__0 __tmp268597 '() _%$%g266736266962%_))))
               (declare (not safe))
               (andmap__0 __tmp268598 __tmp268596)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont267730267731%_
                                                 _%$%g266736266962%_
                                                 _%$%g266737266963%_
                                                 _%$%g266738266964%_)
                                                (_%__match267833267834%_
                                                 _%$%e266739266878%_
                                                 _%$%hd266740266881%_
                                                 _%$%tl266741266883%_
                                                 _%$%e266742266886%_
                                                 _%$%hd266743266889%_
                                                 _%$%tl266744266891%_
                                                 _%__splice267734267735%_
                                                 _%$%target266763266940%_
                                                 _%$%tl266765266942%_))))))))
                          (_%$%loop266766266945%_
                           _%$%target266763266940%_
                           '()))
                        (let () (declare (not safe)) (_%$%g266711266793%_)))))
                (let () (declare (not safe)) (_%$%g266711266793%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match267825267826%_
                                                     _%$%e266739266878%_
                                                     _%$%hd266740266881%_
                                                     _%$%tl266741266883%_
                                                     _%$%e266742266886%_
                                                     _%$%hd266743266889%_
                                                     _%$%tl266744266891%_))))
                                            (_%__match267825267826%_
                                             _%$%e266739266878%_
                                             _%$%hd266740266881%_
                                             _%$%tl266741266883%_
                                             _%$%e266742266886%_
                                             _%$%hd266743266889%_
                                             _%$%tl266744266891%_)))))))
                        (_%$%loop266754266915%_
                         _%$%target266751266910%_
                         '()))))
                   (_%__match267777267778%_
                    (lambda (_%$%e266715267300%_
                             _%$%hd266716267303%_
                             _%$%tl266717267305%_
                             _%$%e266718267308%_
                             _%$%hd266719267311%_
                             _%$%tl266720267313%_
                             _%$%e266721267316%_
                             _%$%hd266722267319%_
                             _%$%tl266723267321%_
                             _%$%e266724267324%_
                             _%$%hd266725267327%_
                             _%$%tl266726267329%_
                             _%__splice267728267729%_
                             _%$%target266727267332%_
                             _%$%tl266729267334%_)
                      (letrec ((_%$%loop266730267337%_
                                (lambda (_%$%hd266728267340%_
                                         _%$%rand266734267342%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd266728267340%_))
                                      (let ((_%$%e266731267344%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd266728267340%_))))
                                        (let ((_%$%lp-tl266733267349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e266731267344%_)))
                                              (_%$%lp-hd266732267347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e266731267344%_))))
                                          (_%$%loop266730267337%_
                                           _%$%lp-tl266733267349%_
                                           (cons _%$%lp-hd266732267347%_
                                                 _%$%rand266734267342%_))))
                                      (let ((_%$%rand266735267352%_
                                             (reverse _%$%rand266734267342%_)))
                                        (_%__kont267726267727%_
                                         _%$%rand266735267352%_
                                         _%$%hd266725267327%_))))))
                        (_%$%loop266730267337%_
                         _%$%target266727267332%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx267724267725%_))
                  (let ((_%$%e266715267300%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx267724267725%_))))
                    (let ((_%$%tl266717267305%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e266715267300%_)))
                          (_%$%hd266716267303%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e266715267300%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl266717267305%_))
                          (let ((_%$%e266718267308%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl266717267305%_))))
                            (let ((_%$%tl266720267313%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e266718267308%_)))
                                  (_%$%hd266719267311%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e266718267308%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd266719267311%_))
                                  (let ((_%$%e266721267316%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd266719267311%_))))
                                    (let ((_%$%tl266723267321%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e266721267316%_)))
                                          (_%$%hd266722267319%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e266721267316%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd266722267319%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd266722267319%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl266723267321%_))
                                                  (let ((_%$%e266724267324%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl266723267321%_))))
                                                    (let ((_%$%tl266726267329%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e266724267324%_)))
                                                          (_%$%hd266725267327%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e266724267324%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl266726267329%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%$%tl266720267313%_))
                      (let ((_%__splice267728267729%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl266720267313%_
                                '0))))
                        (let ((_%$%tl266729267334%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267728267729%_ '1)))
                              (_%$%target266727267332%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267728267729%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl266729267334%_))
                              (_%__match267777267778%_
                               _%$%e266715267300%_
                               _%$%hd266716267303%_
                               _%$%tl266717267305%_
                               _%$%e266718267308%_
                               _%$%hd266719267311%_
                               _%$%tl266720267313%_
                               _%$%e266721267316%_
                               _%$%hd266722267319%_
                               _%$%tl266723267321%_
                               _%$%e266724267324%_
                               _%$%hd266725267327%_
                               _%$%tl266726267329%_
                               _%__splice267728267729%_
                               _%$%target266727267332%_
                               _%$%tl266729267334%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g266711266793%_)))))
                      (let () (declare (not safe)) (_%$%g266711266793%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl266720267313%_))
                      (let ((_%__splice267738267739%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl266720267313%_
                                '0))))
                        (let ((_%$%tl266782266816%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267738267739%_ '1)))
                              (_%$%target266780266814%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267738267739%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl266782266816%_))
                              (_%__match267833267834%_
                               _%$%e266715267300%_
                               _%$%hd266716267303%_
                               _%$%tl266717267305%_
                               _%$%e266718267308%_
                               _%$%hd266719267311%_
                               _%$%tl266720267313%_
                               _%__splice267738267739%_
                               _%$%target266780266814%_
                               _%$%tl266782266816%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g266711266793%_)))))
                      (let () (declare (not safe)) (_%$%g266711266793%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl266720267313%_))
                                                      (let ((_%__splice267738267739%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl266720267313%_
                        '0))))
                (let ((_%$%tl266782266816%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice267738267739%_ '1)))
                      (_%$%target266780266814%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice267738267739%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl266782266816%_))
                      (_%__match267833267834%_
                       _%$%e266715267300%_
                       _%$%hd266716267303%_
                       _%$%tl266717267305%_
                       _%$%e266718267308%_
                       _%$%hd266719267311%_
                       _%$%tl266720267313%_
                       _%__splice267738267739%_
                       _%$%target266780266814%_
                       _%$%tl266782266816%_)
                      (let () (declare (not safe)) (_%$%g266711266793%_)))))
              (let () (declare (not safe)) (_%$%g266711266793%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#lambda
                                                     _%$%hd266722267319%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl266723267321%_))
                                                      (let ((_%$%e266748266902%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl266723267321%_))))
                (let ((_%$%tl266750266907%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e266748266902%_)))
                      (_%$%hd266749266905%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e266748266902%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%hd266749266905%_))
                      (let ((_%__splice267732267733%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%hd266749266905%_
                                '0))))
                        (let ((_%$%tl266753266912%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267732267733%_ '1)))
                              (_%$%target266751266910%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice267732267733%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl266753266912%_))
                              (_%__match267813267814%_
                               _%$%e266715267300%_
                               _%$%hd266716267303%_
                               _%$%tl266717267305%_
                               _%$%e266718267308%_
                               _%$%hd266719267311%_
                               _%$%tl266720267313%_
                               _%$%e266721267316%_
                               _%$%hd266722267319%_
                               _%$%tl266723267321%_
                               _%$%e266748266902%_
                               _%$%hd266749266905%_
                               _%$%tl266750266907%_
                               _%__splice267732267733%_
                               _%$%target266751266910%_
                               _%$%tl266753266912%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _%$%tl266720267313%_))
                                  (let ((_%__splice267738267739%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice->vector
                                            _%$%tl266720267313%_
                                            '0))))
                                    (let ((_%$%tl266782266816%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice267738267739%_
                                              '1)))
                                          (_%$%target266780266814%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice267738267739%_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl266782266816%_))
                                          (_%__match267833267834%_
                                           _%$%e266715267300%_
                                           _%$%hd266716267303%_
                                           _%$%tl266717267305%_
                                           _%$%e266718267308%_
                                           _%$%hd266719267311%_
                                           _%$%tl266720267313%_
                                           _%__splice267738267739%_
                                           _%$%target266780266814%_
                                           _%$%tl266782266816%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g266711266793%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g266711266793%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl266720267313%_))
                          (let ((_%__splice267738267739%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl266720267313%_
                                    '0))))
                            (let ((_%$%tl266782266816%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice267738267739%_
                                      '1)))
                                  (_%$%target266780266814%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice267738267739%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl266782266816%_))
                                  (_%__match267833267834%_
                                   _%$%e266715267300%_
                                   _%$%hd266716267303%_
                                   _%$%tl266717267305%_
                                   _%$%e266718267308%_
                                   _%$%hd266719267311%_
                                   _%$%tl266720267313%_
                                   _%__splice267738267739%_
                                   _%$%target266780266814%_
                                   _%$%tl266782266816%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g266711266793%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g266711266793%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl266720267313%_))
                  (let ((_%__splice267738267739%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl266720267313%_
                            '0))))
                    (let ((_%$%tl266782266816%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice267738267739%_ '1)))
                          (_%$%target266780266814%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice267738267739%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl266782266816%_))
                          (_%__match267833267834%_
                           _%$%e266715267300%_
                           _%$%hd266716267303%_
                           _%$%tl266717267305%_
                           _%$%e266718267308%_
                           _%$%hd266719267311%_
                           _%$%tl266720267313%_
                           _%__splice267738267739%_
                           _%$%target266780266814%_
                           _%$%tl266782266816%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g266711266793%_)))))
                  (let () (declare (not safe)) (_%$%g266711266793%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl266720267313%_))
                                                      (let ((_%__splice267738267739%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl266720267313%_
                        '0))))
                (let ((_%$%tl266782266816%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice267738267739%_ '1)))
                      (_%$%target266780266814%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice267738267739%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl266782266816%_))
                      (_%__match267833267834%_
                       _%$%e266715267300%_
                       _%$%hd266716267303%_
                       _%$%tl266717267305%_
                       _%$%e266718267308%_
                       _%$%hd266719267311%_
                       _%$%tl266720267313%_
                       _%__splice267738267739%_
                       _%$%target266780266814%_
                       _%$%tl266782266816%_)
                      (let () (declare (not safe)) (_%$%g266711266793%_)))))
              (let () (declare (not safe)) (_%$%g266711266793%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl266720267313%_))
                                              (let ((_%__splice267738267739%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl266720267313%_
                                                        '0))))
                                                (let ((_%$%tl266782266816%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice267738267739%_
                                                          '1)))
                                                      (_%$%target266780266814%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice267738267739%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl266782266816%_))
                                                      (_%__match267833267834%_
                                                       _%$%e266715267300%_
                                                       _%$%hd266716267303%_
                                                       _%$%tl266717267305%_
                                                       _%$%e266718267308%_
                                                       _%$%hd266719267311%_
                                                       _%$%tl266720267313%_
                                                       _%__splice267738267739%_
                                                       _%$%target266780266814%_
                                                       _%$%tl266782266816%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g266711266793%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g266711266793%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl266720267313%_))
                                      (let ((_%__splice267738267739%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl266720267313%_
                                                '0))))
                                        (let ((_%$%tl266782266816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice267738267739%_
                                                  '1)))
                                              (_%$%target266780266814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice267738267739%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl266782266816%_))
                                              (_%__match267833267834%_
                                               _%$%e266715267300%_
                                               _%$%hd266716267303%_
                                               _%$%tl266717267305%_
                                               _%$%e266718267308%_
                                               _%$%hd266719267311%_
                                               _%$%tl266720267313%_
                                               _%__splice267738267739%_
                                               _%$%target266780266814%_
                                               _%$%tl266782266816%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g266711266793%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g266711266793%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g266711266793%_)))))
                  (let () (declare (not safe)) (_%$%g266711266793%_))))))))
    (define gxc#optimize-special-cast
      (lambda (_%self266511%_ _%stx266512%_)
        (let* ((_%__stx267836267837%_ _%stx266512%_)
               (_%$%g266516266556%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx267836267837%_)))))
          (let ((_%__kont267838267839%_
                 (lambda (_%$%g266518266672%_ _%$%g266519266673%_)
                   (let* ((_%descriptor-id266693%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%$%g266519266673%_)))
                          (_%descriptor-type266695%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type
                              _%descriptor-id266693%_)))
                          (_%object-type266697%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%$%g266518266672%_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _%descriptor-type266695%_
                            'gxc#!interface::t))
                         (if (and _%object-type266697%_
                                  (eq? (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%descriptor-type266695%_
                                          '1
                                          '#f
                                          '#f))
                                       (##structure-ref
                                        _%object-type266697%_
                                        '1
                                        gxc#!type::t
                                        '#f)))
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self266511%_
                                _%$%g266518266672%_))
                             (let ((__tmp268599
                                    (cons '%#call-unchecked
                                          (cons '(%#ref cast)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref))
                                                            (cons _%$%g266519266673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self266511%_ _%$%g266518266672%_))
                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp268599
                                _%stx266512%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"illegal cast; not an interface type"
                            _%stx266512%_
                            _%descriptor-type266695%_))))))
                (_%__kont267840267841%_
                 (lambda (_%$%g266538266600%_ _%$%g266539266601%_)
                   (let ((__tmp268600
                          (cons '%#call-unchecked
                                (cons '(%#ref cast)
                                      (cons (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self266511%_
                                               _%$%g266539266601%_))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self266511%_
                                                     _%$%g266538266600%_))
                                                  '()))))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp268600 _%stx266512%_))))
                (_%__kont267842267843%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"illegal cast; arity mismatch"
                      _%stx266512%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx267836267837%_))
                (let ((_%$%e266520266624%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx267836267837%_))))
                  (let ((_%$%tl266522266629%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e266520266624%_)))
                        (_%$%hd266521266627%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e266520266624%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl266522266629%_))
                        (let ((_%$%e266523266632%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl266522266629%_))))
                          (let ((_%$%tl266525266637%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e266523266632%_)))
                                (_%$%hd266524266635%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e266523266632%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl266525266637%_))
                                (let ((_%$%e266526266640%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl266525266637%_))))
                                  (let ((_%$%tl266528266645%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e266526266640%_)))
                                        (_%$%hd266527266643%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e266526266640%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd266527266643%_))
                                        (let ((_%$%e266529266648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd266527266643%_))))
                                          (let ((_%$%tl266531266653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e266529266648%_)))
                                                (_%$%hd266530266651%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e266529266648%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd266530266651%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%$%hd266530266651%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl266531266653%_))
                                                        (let ((_%$%e266532266656%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl266531266653%_))))
                  (let ((_%$%tl266534266661%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e266532266656%_)))
                        (_%$%hd266533266659%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e266532266656%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl266534266661%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl266528266645%_))
                            (let ((_%$%e266535266664%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl266528266645%_))))
                              (let ((_%$%tl266537266669%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e266535266664%_)))
                                    (_%$%hd266536266667%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e266535266664%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl266537266669%_))
                                    (_%__kont267838267839%_
                                     _%$%hd266536266667%_
                                     _%$%hd266533266659%_)
                                    (_%__kont267842267843%_))))
                            (_%__kont267842267843%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl266528266645%_))
                            (let ((_%$%e266549266592%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl266528266645%_))))
                              (let ((_%$%tl266551266597%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e266549266592%_)))
                                    (_%$%hd266550266595%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e266549266592%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl266551266597%_))
                                    (_%__kont267840267841%_
                                     _%$%hd266550266595%_
                                     _%$%hd266527266643%_)
                                    (_%__kont267842267843%_))))
                            (_%__kont267842267843%_)))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl266528266645%_))
                    (let ((_%$%e266549266592%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl266528266645%_))))
                      (let ((_%$%tl266551266597%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e266549266592%_)))
                            (_%$%hd266550266595%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e266549266592%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl266551266597%_))
                            (_%__kont267840267841%_
                             _%$%hd266550266595%_
                             _%$%hd266527266643%_)
                            (_%__kont267842267843%_))))
                    (_%__kont267842267843%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl266528266645%_))
                                                        (let ((_%$%e266549266592%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl266528266645%_))))
                  (let ((_%$%tl266551266597%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e266549266592%_)))
                        (_%$%hd266550266595%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e266549266592%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl266551266597%_))
                        (_%__kont267840267841%_
                         _%$%hd266550266595%_
                         _%$%hd266527266643%_)
                        (_%__kont267842267843%_))))
                (_%__kont267842267843%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl266528266645%_))
                                                    (let ((_%$%e266549266592%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl266528266645%_))))
                                                      (let ((_%$%tl266551266597%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e266549266592%_)))
                    (_%$%hd266550266595%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e266549266592%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl266551266597%_))
                    (_%__kont267840267841%_
                     _%$%hd266550266595%_
                     _%$%hd266527266643%_)
                    (_%__kont267842267843%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont267842267843%_)))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl266528266645%_))
                                            (let ((_%$%e266549266592%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl266528266645%_))))
                                              (let ((_%$%tl266551266597%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e266549266592%_)))
                                                    (_%$%hd266550266595%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e266549266592%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl266551266597%_))
                                                    (_%__kont267840267841%_
                                                     _%$%hd266550266595%_
                                                     _%$%hd266527266643%_)
                                                    (_%__kont267842267843%_))))
                                            (_%__kont267842267843%_)))))
                                (_%__kont267842267843%_))))
                        (_%__kont267842267843%_))))
                (_%__kont267842267843%_))))))
    (define gxc#special-procedure-optimizers
      (let ((_%ht266508%_
             (let () (declare (not safe)) (make-hash-table-eq 'size: '1))))
        (let ()
          (declare (not safe))
          (__hash-put! _%ht266508%_ 'cast gxc#optimize-special-cast))
        _%ht266508%_))
    (define gxc#!procedure::optimize-call
      (lambda (_%self266470%_ _%ctx266471%_ _%stx266472%_ _%args266473%_)
        (let ((_%self266476%_ _%self266470%_))
          (if (let ((__method268561
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self266476%_ 'check-arguments))))
                (if __method268561
                    (let ()
                      (declare (not safe))
                      (__method268561
                       _%self266476%_
                       _%ctx266471%_
                       _%stx266472%_
                       _%args266473%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _%self266476%_
                               'check-arguments))
                      '#!void)))
              (let* ((_%signature266486%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self266476%_ '2 '#f '#f)))
                     (_%signature266488%_ _%signature266486%_)
                     (_%$e266498%_
                      (if _%signature266488%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature266488%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e266498%_
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%$e266498%_))
                        (let ((__tmp268601
                               (cons '%#call
                                     (cons (cons '%#ref
                                                 (cons _%$e266498%_ '()))
                                           (map (lambda (_%$%g266502266504%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx266471%_
                                                     _%$%g266502266504%_)))
                                                _%args266473%_)))))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp268601
                           _%stx266472%_
                           _%ctx266471%_))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx266471%_ _%stx266472%_)))
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx266471%_ _%stx266472%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx266471%_ _%stx266472%_))))))
    (define gxc#!procedure::optimize-call::specialize
      (lambda (__klass267585 __method-table267586)
        (let ((__check-arguments267587
               (let ((__tmp268602
                      (lambda ()
                        (let ((__method267588
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table267586
                                  'check-arguments
                                  '#f))))
                          (if __method267588
                              __method267588
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp268602))))
          (lambda (_%self266470%_ _%ctx266471%_ _%stx266472%_ _%args266473%_)
            (let ((_%self266476%_ _%self266470%_))
              (if ((force __check-arguments267587)
                   _%self266476%_
                   _%ctx266471%_
                   _%stx266472%_
                   _%args266473%_)
                  (let* ((_%signature266486%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self266476%_
                             '2
                             '#f
                             '#f)))
                         (_%signature266488%_ _%signature266486%_)
                         (_%$e266498%_
                          (if _%signature266488%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%signature266488%_
                                 '4
                                 '#f
                                 '#f))
                              '#f)))
                    (if _%$e266498%_
                        (if (let ()
                              (declare (not safe))
                              (gxc#symbol-in-local-scope? _%$e266498%_))
                            (let ((__tmp268603
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%$e266498%_ '()))
                                               (map (lambda (_%$%g266502266504%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%ctx266471%_
                                                         _%$%g266502266504%_)))
                                                    _%args266473%_)))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp268603
                               _%stx266472%_
                               _%ctx266471%_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _%ctx266471%_ _%stx266472%_)))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx266471%_ _%stx266472%_))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx266471%_ _%stx266472%_))))))))
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
      (lambda (_%self266223%_ _%ctx266224%_ _%stx266225%_ _%args266226%_)
        (let* ((_%self266229%_ _%self266223%_)
               (_%$%signature266238266240%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self266229%_ '2 '#f '#f))))
          (if _%$%signature266238266240%_
              (let* ((_%signature266242%_ _%$%signature266238266240%_)
                     (_%$%argument-types266243266245%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%signature266242%_
                         '3
                         '#f
                         '#f))))
                (if _%$%argument-types266243266245%_
                    (let* ((_%argument-types266247%_
                            _%$%argument-types266243266245%_)
                           (_%argument-types266252%_
                            (let ((__tmp268604
                                   (lambda (_%t266250%_)
                                     (if _%t266250%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _%stx266225%_
                                            _%t266250%_))
                                         '#f))))
                              (declare (not safe))
                              (gxc#map*
                               __tmp268604
                               _%argument-types266247%_))))
                      (let _%loop266254%_ ((_%rest-args266256%_ _%args266226%_)
                                           (_%rest-types266257%_
                                            _%argument-types266252%_)
                                           (_%result266258%_ '#t))
                        (let* ((_%$%rest-args266259266267%_
                                _%rest-args266256%_)
                               (_%$%else266261266275%_
                                (lambda () _%result266258%_))
                               (_%$%K266263266336%_
                                (lambda (_%rest-args266278%_ _%arg266279%_)
                                  (let* ((_%$%rest-types266280266291%_
                                          _%rest-types266257%_)
                                         (_%$%E266284266295%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-types266280266291%_
                                                     '([type . rest-types])
                                                     '([])
                                                     '(tail-type)))
                                            '#!void)))
                                    (let ((_%$%K266287266324%_
                                           (lambda (_%rest-types266321%_
                                                    _%type266322%_)
                                             (_%loop266254%_
                                              _%rest-args266278%_
                                              _%rest-types266321%_
                                              (if (gxc#check-expression-type!
                                                   _%stx266225%_
                                                   _%arg266279%_
                                                   _%type266322%_)
                                                  _%result266258%_
                                                  '#f))))
                                          (_%$%K266286266315%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"signature arity mismatch"
                                                _%stx266225%_
                                                _%argument-types266252%_))))
                                          (_%$%K266285266305%_
                                           (lambda (_%tail-type266299%_)
                                             (if (let ((__tmp268605
                                                        (lambda (_%$%g266300266302%_)
                                                          (gxc#check-expression-type!
                                                           _%stx266225%_
                                                           _%$%g266300266302%_
                                                           _%tail-type266299%_))))
                                                   (declare (not safe))
                                                   (andmap__0
                                                    __tmp268605
                                                    _%rest-args266278%_))
                                                 _%result266258%_
                                                 '#f))))
                                      (let ((_%$%try-match266282266318%_
                                             (lambda ()
                                               (if (null? _%$%rest-types266280266291%_)
                                                   (_%$%K266286266315%_)
                                                   (let ((_%tail-type266308%_
                                                          _%$%rest-types266280266291%_))
                                                     (_%$%K266285266305%_
                                                      _%tail-type266308%_))))))
                                        (if (pair? _%$%rest-types266280266291%_)
                                            (let ((_%$%tl266289266329%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%rest-types266280266291%_)))
                                                  (_%$%hd266288266327%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%rest-types266280266291%_))))
                                              (let ((_%type266332%_
                                                     _%$%hd266288266327%_)
                                                    (_%rest-types266334%_
                                                     _%$%tl266289266329%_))
                                                (_%$%K266287266324%_
                                                 _%rest-types266334%_
                                                 _%type266332%_)))
                                            (_%$%try-match266282266318%_))))))))
                          (if (pair? _%$%rest-args266259266267%_)
                              (let ((_%$%hd266264266339%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest-args266259266267%_)))
                                    (_%$%tl266265266341%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest-args266259266267%_))))
                                (let* ((_%arg266344%_ _%$%hd266264266339%_)
                                       (_%rest-args266346%_
                                        _%$%tl266265266341%_))
                                  (_%$%K266263266336%_
                                   _%rest-args266346%_
                                   _%arg266344%_)))
                              (_%$%else266261266275%_)))))
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
      (lambda (_%self266026%_ _%ctx266027%_ _%stx266028%_ _%args266029%_)
        (let* ((_%self266032%_ _%self266026%_)
               (_%$%g266042266052%_
                (lambda (_%$%g266043266049%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g266043266049%_))))
               (_%$%g266041266098%_
                (lambda (_%$%g266043266055%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g266043266055%_))
                      (let ((_%$%e266045266057%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g266043266055%_))))
                        (let ((_%$%hd266046266060%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e266045266057%_)))
                              (_%$%tl266047266062%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e266045266057%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl266047266062%_))
                              (let* ((_%klass266077%_
                                      (let ((__tmp268606
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self266032%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx266028%_
                                         __tmp268606)))
                                     (_%object266079%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx266027%_
                                         _%$%hd266046266060%_)))
                                     (_%instance?266084%_
                                      (let ((_%$e266081%_
                                             (gxc#expression-type?
                                              _%object266079%_
                                              _%klass266077%_)))
                                        (if _%$e266081%_
                                            _%$e266081%_
                                            (gxc#expression-type?
                                             _%$%hd266046266060%_
                                             _%klass266077%_))))
                                     (_%incompatible?266089%_
                                      (let ((_%$e266086%_
                                             (gxc#incompatible-type?
                                              _%object266079%_
                                              _%klass266077%_)))
                                        (if _%$e266086%_
                                            _%$e266086%_
                                            (gxc#incompatible-type?
                                             _%$%hd266046266060%_
                                             _%klass266077%_)))))
                                (if _%instance?266084%_
                                    (let ((__tmp268607
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object266079%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd266046266060%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object266079%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp268607
                                       _%stx266028%_))
                                    (if _%incompatible?266089%_
                                        (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#xform-call%
                                           _%ctx266027%_
                                           _%stx266028%_)))))
                              (_%$%g266042266052%_ _%$%g266043266055%_))))
                      (_%$%g266042266052%_ _%$%g266043266055%_)))))
          (_%$%g266041266098%_ _%args266029%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self265815%_ _%ctx265816%_ _%stx265817%_ _%args265818%_)
        (let* ((_%self265821%_ _%self265815%_)
               (_%$%g265831265841%_
                (lambda (_%$%g265832265838%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g265832265838%_))))
               (_%$%g265830265901%_
                (lambda (_%$%g265832265844%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g265832265844%_))
                      (let ((_%$%e265834265846%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g265832265844%_))))
                        (let ((_%$%hd265835265849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265834265846%_)))
                              (_%$%tl265836265851%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265834265846%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl265836265851%_))
                              (let* ((_%klass265866%_
                                      (let ((__tmp268608
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self265821%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx265817%_
                                         __tmp268608)))
                                     (_%object265868%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx265816%_
                                         _%$%hd265835265849%_)))
                                     (_%instance?265873%_
                                      (let ((_%$e265870%_
                                             (gxc#expression-type?
                                              _%object265868%_
                                              _%klass265866%_)))
                                        (if _%$e265870%_
                                            _%$e265870%_
                                            (gxc#expression-type?
                                             _%$%hd265835265849%_
                                             _%klass265866%_))))
                                     (_%incompatible?265878%_
                                      (let ((_%$e265875%_
                                             (gxc#incompatible-type?
                                              _%object265868%_
                                              _%klass265866%_)))
                                        (if _%$e265875%_
                                            _%$e265875%_
                                            (gxc#incompatible-type?
                                             _%$%hd265835265849%_
                                             _%klass265866%_))))
                                     (_%klass265881%_ _%klass265866%_))
                                (if _%instance?265873%_
                                    (let ((__tmp268609
                                           (if (or (gxc#expression-no-side-effects?
                                                    _%object265868%_)
                                                   (gxc#expression-no-side-effects?
                                                    _%$%hd265835265849%_))
                                               (cons '%#quote (cons '#t '()))
                                               (cons '%#begin
                                                     (cons _%object265868%_
                                                           (cons '(%#quote #t)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp268609
                                       _%stx265817%_))
                                    (if _%incompatible?265878%_
                                        (cons '%#quote (cons '#f '()))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass265881%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp268610
                                                   (cons '%#struct-direct-instance?
                                                         (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass265881%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%object265868%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp268610
                                               _%stx265817%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass265881%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp268611
                                                       (cons '%#struct-instance?
                                                             (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%klass265881%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%object265868%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp268611
                                                   _%stx265817%_))
                                                (let ((__tmp268612
                                                       (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons 'class-instance? '()))
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self265821%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons _%object265868%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp268612
                                                   _%stx265817%_)))))))
                              (_%$%g265831265841%_ _%$%g265832265844%_))))
                      (_%$%g265831265841%_ _%$%g265832265844%_)))))
          (_%$%g265830265901%_ _%args265818%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx265483%_)
        (let* ((_%__stx267923267924%_ _%stx265483%_)
               (_%$%g265488265529%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx267923267924%_)))))
          (let ((_%__kont267925267926%_ (lambda () '#t))
                (_%__kont267927267928%_ (lambda () '#t))
                (_%__kont267929267930%_
                 (lambda (_%$%g265502265595%_ _%$%g265503265596%_)
                   (let ((_%$%rator-type265617265619%_
                          (let ((__tmp268613
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol
                                    _%$%g265503265596%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp268613))))
                     (if _%$%rator-type265617265619%_
                         (let* ((_%rator-type265621%_
                                 _%$%rator-type265617265619%_)
                                (_%$%rator-signature265622265624%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type265621%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type265621%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%$%rator-signature265622265624%_
                               (let* ((_%rator-signature265626%_
                                       _%$%rator-signature265622265624%_)
                                      (_%$%rator-effect265627265629%_
                                       (if _%rator-signature265626%_
                                           (##direct-structure-ref
                                            _%rator-signature265626%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%$%rator-effect265627265629%_
                                     (let ((_%rator-effect265631%_
                                            _%$%rator-effect265627265629%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect265631%_)
                                               (equal? '(alloc)
                                                       _%rator-effect265631%_))
                                           (let ((__tmp268614
                                                  (let ((__tmp268615
                                                         (lambda (_%$%g265636265639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g265637265641%_)
                   (cons _%$%g265636265639%_ _%$%g265637265641%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp268615
                                                     '()
                                                     _%$%g265502265595%_))))
                                             (declare (not safe))
                                             (andmap__0
                                              gxc#expression-no-side-effects?
                                              __tmp268614))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont267933267934%_ (lambda () '#f)))
            (let ((_%__match268012268013%_
                   (lambda (_%$%e265504265541%_
                            _%$%hd265505265544%_
                            _%$%tl265506265546%_
                            _%$%e265507265549%_
                            _%$%hd265508265552%_
                            _%$%tl265509265554%_
                            _%$%e265510265557%_
                            _%$%hd265511265560%_
                            _%$%tl265512265562%_
                            _%$%e265513265565%_
                            _%$%hd265514265568%_
                            _%$%tl265515265570%_
                            _%__splice267931267932%_
                            _%$%target265516265573%_
                            _%$%tl265518265575%_)
                     (letrec ((_%$%loop265519265578%_
                               (lambda (_%$%hd265517265581%_
                                        _%$%rand265523265583%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd265517265581%_))
                                     (let ((_%$%e265520265585%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd265517265581%_))))
                                       (let ((_%$%lp-tl265522265590%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e265520265585%_)))
                                             (_%$%lp-hd265521265588%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e265520265585%_))))
                                         (_%$%loop265519265578%_
                                          _%$%lp-tl265522265590%_
                                          (cons _%$%lp-hd265521265588%_
                                                _%$%rand265523265583%_))))
                                     (let ((_%$%rand265524265593%_
                                            (reverse _%$%rand265523265583%_)))
                                       (_%__kont267929267930%_
                                        _%$%rand265524265593%_
                                        _%$%hd265514265568%_))))))
                       (_%$%loop265519265578%_
                        _%$%target265516265573%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx267923267924%_))
                  (let ((_%$%e265490265672%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx267923267924%_))))
                    (let ((_%$%tl265492265677%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e265490265672%_)))
                          (_%$%hd265491265675%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e265490265672%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd265491265675%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd265491265675%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl265492265677%_))
                                  (let ((_%$%e265493265680%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl265492265677%_))))
                                    (let ((_%$%tl265495265685%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e265493265680%_)))
                                          (_%$%hd265494265683%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e265493265680%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl265495265685%_))
                                          (_%__kont267925267926%_)
                                          (_%__kont267933267934%_))))
                                  (_%__kont267933267934%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd265491265675%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl265492265677%_))
                                      (let ((_%$%e265499265657%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl265492265677%_))))
                                        (let ((_%$%tl265501265662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e265499265657%_)))
                                              (_%$%hd265500265660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e265499265657%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl265501265662%_))
                                              (_%__kont267927267928%_)
                                              (_%__kont267933267934%_))))
                                      (_%__kont267933267934%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%$%hd265491265675%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl265492265677%_))
                                          (let ((_%$%e265507265549%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl265492265677%_))))
                                            (let ((_%$%tl265509265554%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e265507265549%_)))
                                                  (_%$%hd265508265552%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e265507265549%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd265508265552%_))
                                                  (let ((_%$%e265510265557%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd265508265552%_))))
                                                    (let ((_%$%tl265512265562%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e265510265557%_)))
                                                          (_%$%hd265511265560%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e265510265557%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd265511265560%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%$%hd265511265560%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl265512265562%_))
                          (let ((_%$%e265513265565%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl265512265562%_))))
                            (let ((_%$%tl265515265570%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e265513265565%_)))
                                  (_%$%hd265514265568%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e265513265565%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl265515265570%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl265509265554%_))
                                      (let ((_%__splice267931267932%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl265509265554%_
                                                '0))))
                                        (let ((_%$%tl265518265575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice267931267932%_
                                                  '1)))
                                              (_%$%target265516265573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice267931267932%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl265518265575%_))
                                              (_%__match268012268013%_
                                               _%$%e265490265672%_
                                               _%$%hd265491265675%_
                                               _%$%tl265492265677%_
                                               _%$%e265507265549%_
                                               _%$%hd265508265552%_
                                               _%$%tl265509265554%_
                                               _%$%e265510265557%_
                                               _%$%hd265511265560%_
                                               _%$%tl265512265562%_
                                               _%$%e265513265565%_
                                               _%$%hd265514265568%_
                                               _%$%tl265515265570%_
                                               _%__splice267931267932%_
                                               _%$%target265516265573%_
                                               _%$%tl265518265575%_)
                                              (_%__kont267933267934%_))))
                                      (_%__kont267933267934%_))
                                  (_%__kont267933267934%_))))
                          (_%__kont267933267934%_))
                      (_%__kont267933267934%_))
                  (_%__kont267933267934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont267933267934%_))))
                                          (_%__kont267933267934%_))
                                      (_%__kont267933267934%_))))
                          (_%__kont267933267934%_))))
                  (_%__kont267933267934%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx265478%_ _%klass265479%_)
        (let ((_%expr-type265481%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx265478%_))))
          (if _%expr-type265481%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type265481%_ _%klass265479%_))
              '#f))))
    (define gxc#incompatible-type?
      (lambda (_%expr265462%_ _%type265463%_)
        (if (not _%type265463%_)
            '#f
            (if (eq? (##structure-ref _%type265463%_ '1 gxc#!type::t '#f) 't)
                '#f
                (if (eq? (##structure-ref _%type265463%_ '1 gxc#!type::t '#f)
                         'false)
                    '#f
                    (let ((_%expr-type265469%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr265462%_))))
                      (if (not _%expr-type265469%_)
                          '#f
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type265469%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              '#f
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%expr-type265469%_
                                     'gxc#!abort::t))
                                  '#f
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#!type-subtype?
                                         _%expr-type265469%_
                                         _%type265463%_))
                                      '#f
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#!interface-instance?
                                             _%type265463%_))
                                          '#f
                                          (if (let ()
                                                (declare (not safe))
                                                (gxc#!type-subtype?
                                                 _%type265463%_
                                                 _%expr-type265469%_))
                                              '#f
                                              '#t))))))))))))
    (define gxc#check-expression-type!
      (lambda (_%stx265440%_ _%expr265441%_ _%type265442%_)
        (if (not _%type265442%_)
            '#f
            (let ((_%$e265445%_
                   (eq? (##structure-ref _%type265442%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e265445%_
                  _%$e265445%_
                  (let ((_%expr-type265449%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr265441%_))))
                    (if (not _%expr-type265449%_)
                        '#f
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type265449%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            '#f
                            (let ((_%$e265453%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type265449%_
                                      'gxc#!abort::t))))
                              (if _%$e265453%_
                                  _%$e265453%_
                                  (let ((_%$e265456%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type265449%_
                                            _%type265442%_))))
                                    (if _%$e265456%_
                                        _%$e265456%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type265442%_))
                                            '#f
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type265442%_
                                                   _%expr-type265449%_))
                                                '#f
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx265440%_
                                                   _%expr265441%_
                                                   _%expr-type265449%_
                                                   _%type265442%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self265254%_ _%ctx265255%_ _%stx265256%_ _%args265257%_)
        (let* ((_%self265260%_ _%self265254%_)
               (_%klass265270%_
                (let ((__tmp268616
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self265260%_
                          '1
                          '#f
                          '#f))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _%stx265256%_ __tmp268616)))
               (_%fields265272%_
                (length (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass265270%_
                           '5
                           '#f
                           '#f))))
               (_%args265278%_
                (map (lambda (_%$%g265273265275%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%ctx265255%_ _%$%g265273265275%_)))
                     _%args265257%_))
               (_%inline-make-object265280%_
                (cons '%#begin-annotation
                      (cons (cons '@type
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self265260%_
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
                           _%self265260%_
                           '1
                           '#f
                           '#f))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (make-list
                                                     _%fields265272%_
                                                     '(%#quote #f)))))
                                  '()))))
               (_%klass265283%_ _%klass265270%_)
               (_%$e265297%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass265283%_ '6 '#f '#f))))
          (if _%$e265297%_
              (let ((_%$obj265302%_
                     (let ((__tmp268617
                            (let () (declare (not safe)) (##gensym '__obj))))
                       (declare (not safe))
                       (make-symbol__0 __tmp268617)))
                    (_%ctor-impl265303%_
                     (let ()
                       (declare (not safe))
                       (gxc#!class-lookup-method
                        _%klass265283%_
                        _%$e265297%_))))
                (let ((__tmp268618
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj265302%_ '())
                                               (cons _%inline-make-object265280%_
                                                     '()))
                                         '())
                                   (cons (cons '%#begin
                                               (cons (if _%ctor-impl265303%_
                                                         (let ((__tmp268619
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl265303%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj265302%_ '()))
                                          _%args265278%_)))))
                   (declare (not safe))
                   (gxc#xform-wrap-apply
                    __tmp268619
                    _%stx265256%_
                    _%ctx265255%_))
                 (let ((_%$ctor265305%_
                        (let ((__tmp268620
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__constructor))))
                          (declare (not safe))
                          (make-symbol__0 __tmp268620))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$ctor265305%_ '())
                                           (cons (cons '%#call
                                                       (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'direct-method-ref '()))
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self265260%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#ref (cons _%$obj265302%_ '()))
                                 (cons (cons '%#quote (cons _%$e265297%_ '()))
                                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#ref
                                                       (cons _%$ctor265305%_
                                                             '()))
                                                 (cons (cons '%#call
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$ctor265305%_ '()))
                           (cons (cons '%#ref (cons _%$obj265302%_ '()))
                                 _%args265278%_)))
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
                         (##unchecked-structure-ref _%self265260%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#quote
                                                               (cons 'method:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote (cons _%$e265297%_ '())) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$obj265302%_ '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp268618 _%stx265256%_)))
              (let ((_%$e265307%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass265283%_
                        '10
                        '#f
                        '#f))))
                (if _%$e265307%_
                    (let* ((_%$obj265312%_
                            (let ((__tmp268621
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp268621)))
                           (_%metakons265314%_
                            (let ((__tmp268622
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx265256%_
                                      _%$e265307%_))))
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               __tmp268622
                               'instance-init!)))
                           (__tmp268623
                            (cons '%#let-values
                                  (cons (cons (cons (cons _%$obj265312%_ '())
                                                    (cons _%inline-make-object265280%_
                                                          '()))
                                              '())
                                        (cons (cons '%#begin
                                                    (cons (if _%metakons265314%_
                                                              (let ((__tmp268624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons265314%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self265260%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj265312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args265278%_))))))
                        (declare (not safe))
                        (gxc#xform-wrap-apply
                         __tmp268624
                         _%stx265256%_
                         _%ctx265255%_))
                      (cons '%#call
                            (cons (cons '%#ref (cons 'call-method '()))
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self265260%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons 'instance-init! '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj265312%_
                                                                '()))
                                                    _%args265278%_))))))
                  (cons (cons '%#ref (cons _%$obj265312%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp268623 _%stx265256%_))
                    (if (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass265283%_
                           '7
                           '#f
                           '#f))
                        (if (let ((__tmp268625
                                   (let ()
                                     (declare (not safe))
                                     (##length _%args265278%_))))
                              (declare (not safe))
                              (##fx= __tmp268625 _%fields265272%_))
                            (let ((__tmp268626
                                   (cons '%#begin-annotation
                                         (cons (cons '@type
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self265260%_
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
                                              _%self265260%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               _%args265278%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp268626
                               _%stx265256%_))
                            (let ((__tmp268628
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self265260%_
                                      '1
                                      '#f
                                      '#f)))
                                  (__tmp268627
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass265283%_
                                      '5
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _%stx265256%_
                               __tmp268628
                               __tmp268627)))
                        (let ((_%$obj265319%_
                               (let ((__tmp268629
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__obj))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp268629))))
                          (let _%lp265321%_ ((_%rest265323%_ _%args265278%_)
                                             (_%initializers265324%_ '()))
                            (let* ((_%__stx268015268016%_ _%rest265323%_)
                                   (_%$%g265328265349%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%__stx268015268016%_)))))
                              (let ((_%__kont268017268018%_
                                     (lambda (_%$%g265330265403%_
                                              _%$%g265331265404%_
                                              _%$%g265332265405%_)
                                       (let* ((_%slot265432%_
                                               (let ((__tmp268630
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g265332265405%_))))
                                                 (declare (not safe))
                                                 (keyword->symbol
                                                  __tmp268630)))
                                              (_%off265434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass265283%_
                                                  _%slot265432%_))))
                                         (if _%off265434%_
                                             (_%lp265321%_
                                              _%$%g265330265403%_
                                              (cons (cons _%off265434%_
                                                          _%$%g265331265404%_)
                                                    _%initializers265324%_))
                                             (let ((__tmp268631
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self265260%_
                                                       '1
                                                       '#f
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _%stx265256%_
                                                __tmp268631
                                                _%slot265432%_))))))
                                    (_%__kont268019268020%_
                                     (lambda ()
                                       (let ((__tmp268632
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj265319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object265280%_ '()))
                        '())
                  (cons (cons '%#begin
                              (let ((__tmp268634
                                     (let ((__tmp268635
                                            (lambda (_%i265363%_ _%r265364%_)
                                              (cons (cons '%#struct-unchecked-set!
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self265260%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons (car _%i265363%_) '()))
                              (cons (cons '%#ref (cons _%$obj265319%_ '()))
                                    (cons (cdr _%i265363%_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r265364%_))))
                                       (declare (not safe))
                                       (foldl__0
                                        __tmp268635
                                        '()
                                        _%initializers265324%_)))
                                    (__tmp268633
                                     (cons (cons '%#ref
                                                 (cons _%$obj265319%_ '()))
                                           '())))
                                (declare (not safe))
                                (##append __tmp268634 __tmp268633)))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp268632
                                          _%stx265256%_))))
                                    (_%__kont268021268022%_
                                     (lambda ()
                                       (let ((__tmp268636
                                              (cons '%#let-values
                                                    (cons (cons (cons (cons _%$obj265319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons _%inline-make-object265280%_ '()))
                        '())
                  (cons (cons '%#begin
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'class-instance-init!
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj265319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%args265278%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons '%#ref
                                                (cons _%$obj265319%_ '()))
                                          '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp268636
                                          _%stx265256%_)))))
                                (let* ((_%$%g265326265366%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%__stx268015268016%_))
                                              (_%__kont268019268020%_)
                                              (_%__kont268021268022%_))))
                                       (_%__match268052268053%_
                                        (lambda (_%$%e265333265371%_
                                                 _%$%hd265334265374%_
                                                 _%$%tl265335265376%_
                                                 _%$%e265336265379%_
                                                 _%$%hd265337265382%_
                                                 _%$%tl265338265384%_
                                                 _%$%e265339265387%_
                                                 _%$%hd265340265390%_
                                                 _%$%tl265341265392%_
                                                 _%$%e265342265395%_
                                                 _%$%hd265343265398%_
                                                 _%$%tl265344265400%_)
                                          (let ((_%$%g265330265403%_
                                                 _%$%tl265344265400%_)
                                                (_%$%g265331265404%_
                                                 _%$%hd265343265398%_)
                                                (_%$%g265332265405%_
                                                 _%$%hd265340265390%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword?
                                                   _%$%g265332265405%_))
                                                (_%__kont268017268018%_
                                                 _%$%g265330265403%_
                                                 _%$%g265331265404%_
                                                 _%$%g265332265405%_)
                                                (_%__kont268021268022%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx268015268016%_))
                                      (let ((_%$%e265333265371%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx268015268016%_))))
                                        (let ((_%$%tl265335265376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e265333265371%_)))
                                              (_%$%hd265334265374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e265333265371%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%hd265334265374%_))
                                              (let ((_%$%e265336265379%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd265334265374%_))))
                                                (let ((_%$%tl265338265384%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e265336265379%_)))
                                                      (_%$%hd265337265382%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e265336265379%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%$%hd265337265382%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _%$%hd265337265382%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl265338265384%_))
                      (let ((_%$%e265339265387%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl265338265384%_))))
                        (let ((_%$%tl265341265392%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265339265387%_)))
                              (_%$%hd265340265390%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265339265387%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl265341265392%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl265335265376%_))
                                  (let ((_%$%e265342265395%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl265335265376%_))))
                                    (let ((_%$%tl265344265400%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e265342265395%_)))
                                          (_%$%hd265343265398%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e265342265395%_))))
                                      (_%__match268052268053%_
                                       _%$%e265333265371%_
                                       _%$%hd265334265374%_
                                       _%$%tl265335265376%_
                                       _%$%e265336265379%_
                                       _%$%hd265337265382%_
                                       _%$%tl265338265384%_
                                       _%$%e265339265387%_
                                       _%$%hd265340265390%_
                                       _%$%tl265341265392%_
                                       _%$%e265342265395%_
                                       _%$%hd265343265398%_
                                       _%$%tl265344265400%_)))
                                  (_%__kont268021268022%_))
                              (_%__kont268021268022%_))))
                      (_%__kont268021268022%_))
                  (_%__kont268021268022%_))
              (_%__kont268021268022%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont268021268022%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g265326265366%_)))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::check-arguments
      (lambda (_%self265116%_ _%ctx265117%_ _%stx265118%_ _%args265119%_)
        (let ((_%self265122%_ _%self265116%_))
          (if (let ()
                (declare (not safe))
                (##unchecked-structure-ref _%self265122%_ '4 '#f '#f))
              (gxc#!procedure::check-arguments
               _%self265122%_
               _%ctx265117%_
               _%stx265118%_
               _%args265119%_)
              '#t))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'check-arguments
       gxc#!accessor::check-arguments
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self264899%_ _%ctx264900%_ _%stx264901%_ _%args264902%_)
        (let* ((_%self264905%_ _%self264899%_)
               (_%arguments-ok?264915%_
                (let ((__method268562
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self264905%_ 'check-arguments))))
                  (if __method268562
                      (let ()
                        (declare (not safe))
                        (__method268562
                         _%self264905%_
                         _%ctx264900%_
                         _%stx264901%_
                         _%args264902%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self264905%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g264917264927%_
                (lambda (_%$%g264918264924%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g264918264924%_))))
               (_%$%g264916264991%_
                (lambda (_%$%g264918264930%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g264918264930%_))
                      (let ((_%$%e264920264932%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g264918264930%_))))
                        (let ((_%$%hd264921264935%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e264920264932%_)))
                              (_%$%tl264922264937%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e264920264932%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl264922264937%_))
                              (let* ((_%klass264953%_
                                      (let ((__tmp268637
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self264905%_
                                                '1
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         _%stx264901%_
                                         __tmp268637)))
                                     (_%field264955%_
                                      (let ((__tmp268638
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self264905%_
                                                '3
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (gxc#!class-slot->field-offset
                                         _%klass264953%_
                                         __tmp268638)))
                                     (_%object264957%_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%ctx264900%_
                                         _%$%hd264921264935%_)))
                                     (_%klass264960%_ _%klass264953%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass264960%_
                                       '8
                                       '#f
                                       '#f))
                                    (let ((__tmp268639
                                           (cons (if (or _%arguments-ok?264915%_
                                                         (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self264905%_
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
                              _%self264905%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#quote (cons _%field264955%_ '()))
                     (cons _%object264957%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp268639
                                       _%stx264901%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass264960%_
                                           '7
                                           '#f
                                           '#f))
                                        (let ((__tmp268640
                                               (cons (if (or _%arguments-ok?264915%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self264905%_
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
                                  _%self264905%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field264955%_ '()))
                         (cons _%object264957%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp268640
                                           _%stx264901%_))
                                        (let ((_%$e264979%_
                                               (let ((__tmp268641
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self264905%_
                                                         '3
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#!class-slot-find-struct
                                                  _%klass264960%_
                                                  __tmp268641))))
                                          (if _%$e264979%_
                                              (let ((__tmp268642
                                                     (cons (if (or _%arguments-ok?264915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (not (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self264905%_
                                   '4
                                   '#f
                                   '#f))))
                       '%#struct-unchecked-ref
                       '%#struct-ref)
                   (cons (cons '%#ref
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self264905%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#quote (cons _%field264955%_ '()))
                               (cons _%object264957%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp268642
                                                 _%stx264901%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self264905%_
                                                     '4
                                                     '#f
                                                     '#f))
                                                  (let ((__tmp268643
                                                         (let ((_%$obj264988%_
                                                                (let ((__tmp268644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (##gensym '__obj))))
                          (declare (not safe))
                          (make-symbol__0 __tmp268644))))
                   (cons '%#let-values
                         (cons (cons (cons (cons _%$obj264988%_ '())
                                           (cons _%object264957%_ '()))
                                     '())
                               (cons (cons '%#if
                                           (cons (cons '%#struct-direct-instance?
                                                       (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass264960%_
                                    '1
                                    '#f
                                    '#f))
                                 '()))
                     (cons (cons '%#ref (cons _%$obj264988%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons '%#struct-unchecked-ref
                                                             (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self264905%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field264955%_ '()))
                                 (cons (cons '%#ref (cons _%$obj264988%_ '()))
                                       '()))))
               (cons (if _%arguments-ok?264915%_
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj264988%_ '()))
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self264905%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         (cons '%#call
                               (cons (cons '%#ref (cons 'class-slot-ref '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self264905%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           (cons (cons '%#ref
                                                       (cons _%$obj264988%_
                                                             '()))
                                                 (cons (cons '%#quote
                                                             (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self264905%_
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
                                                     __tmp268643
                                                     _%stx264901%_))
                                                  (let ((__tmp268645
                                                         (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'unchecked-slot-ref '()))
                             (cons _%object264957%_
                                   (cons (cons '%#quote
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self264905%_
                                                        '3
                                                        '#f
                                                        '#f))
                                                     '()))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp268645
                                                     _%stx264901%_))))))))
                              (_%$%g264917264927%_ _%$%g264918264930%_))))
                      (_%$%g264917264927%_ _%$%g264918264930%_)))))
          (_%$%g264916264991%_ _%args264902%_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass267589 __method-table267590)
        (let ((__check-arguments267591
               (let ((__tmp268646
                      (lambda ()
                        (let ((__method267592
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table267590
                                  'check-arguments
                                  '#f))))
                          (if __method267592
                              __method267592
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp268646)))
              (__slot267593
               (let ((__slot267594
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass267589 'slot))))
                 (if __slot267594
                     __slot267594
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_%self264899%_ _%ctx264900%_ _%stx264901%_ _%args264902%_)
            (let* ((_%self264905%_ _%self264899%_)
                   (_%arguments-ok?264915%_
                    ((force __check-arguments267591)
                     _%self264905%_
                     _%ctx264900%_
                     _%stx264901%_
                     _%args264902%_))
                   (_%$%g264917264927%_
                    (lambda (_%$%g264918264924%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g264918264924%_))))
                   (_%$%g264916264991%_
                    (lambda (_%$%g264918264930%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g264918264930%_))
                          (let ((_%$%e264920264932%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g264918264930%_))))
                            (let ((_%$%hd264921264935%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e264920264932%_)))
                                  (_%$%tl264922264937%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e264920264932%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl264922264937%_))
                                  (let* ((_%klass264953%_
                                          (let ((__tmp268647
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self264905%_
                                                    '1
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx264901%_
                                             __tmp268647)))
                                         (_%field264955%_
                                          (let ((__tmp268648
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self264905%_
                                                    '3
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (gxc#!class-slot->field-offset
                                             _%klass264953%_
                                             __tmp268648)))
                                         (_%object264957%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%ctx264900%_
                                             _%$%hd264921264935%_)))
                                         (_%klass264960%_ _%klass264953%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass264960%_
                                           '8
                                           '#f
                                           '#f))
                                        (let ((__tmp268649
                                               (cons (if (or _%arguments-ok?264915%_
                                                             (not (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self264905%_
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
                                  _%self264905%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#quote (cons _%field264955%_ '()))
                         (cons _%object264957%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp268649
                                           _%stx264901%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass264960%_
                                               '7
                                               '#f
                                               '#f))
                                            (let ((__tmp268650
                                                   (cons (if (or _%arguments-ok?264915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self264905%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-ref
                     '%#struct-ref)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self264905%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field264955%_ '()))
                             (cons _%object264957%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp268650
                                               _%stx264901%_))
                                            (let ((_%$e264979%_
                                                   (let ((__tmp268651
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self264905%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot-find-struct
                                                      _%klass264960%_
                                                      __tmp268651))))
                                              (if _%$e264979%_
                                                  (let ((__tmp268652
                                                         (cons (if (or _%arguments-ok?264915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (not (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self264905%_
                                       '4
                                       '#f
                                       '#f))))
                           '%#struct-unchecked-ref
                           '%#struct-ref)
                       (cons (cons '%#ref
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self264905%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#quote (cons _%field264955%_ '()))
                                   (cons _%object264957%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp268652
                                                     _%stx264901%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self264905%_
                                                         '4
                                                         '#f
                                                         '#f))
                                                      (let ((__tmp268653
                                                             (let ((_%$obj264988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp268654
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp268654))))
                       (cons '%#let-values
                             (cons (cons (cons (cons _%$obj264988%_ '())
                                               (cons _%object264957%_ '()))
                                         '())
                                   (cons (cons '%#if
                                               (cons (cons '%#struct-direct-instance?
                                                           (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%klass264960%_
                                        '1
                                        '#f
                                        '#f))
                                     '()))
                         (cons (cons '%#ref (cons _%$obj264988%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#struct-unchecked-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self264905%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field264955%_ '()))
                                     (cons (cons '%#ref
                                                 (cons _%$obj264988%_ '()))
                                           '()))))
                   (cons (if _%arguments-ok?264915%_
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-ref '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj264988%_ '()))
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self264905%_
                            __slot267593
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
                                                              _%self264905%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj264988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self264905%_
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
                (gxc#xform-wrap-source __tmp268653 _%stx264901%_))
              (let ((__tmp268655
                     (cons '%#call
                           (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                 (cons _%object264957%_
                                       (cons (cons '%#quote
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self264905%_
                                                            '3
                                                            '#f
                                                            '#f))
                                                         '()))
                                             '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp268655 _%stx264901%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g264917264927%_ _%$%g264918264930%_))))
                          (_%$%g264917264927%_ _%$%g264918264930%_)))))
              (_%$%g264916264991%_ _%args264902%_))))))
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
      (lambda (_%self264663%_ _%ctx264664%_ _%stx264665%_ _%args264666%_)
        (let* ((_%self264669%_ _%self264663%_)
               (_%arguments-ok?264679%_
                (let ((__method268563
                       (let ()
                         (declare (not safe))
                         (__method-ref _%self264669%_ 'check-arguments))))
                  (if __method268563
                      (let ()
                        (declare (not safe))
                        (__method268563
                         _%self264669%_
                         _%ctx264664%_
                         _%stx264665%_
                         _%args264666%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self264669%_
                                 'check-arguments))
                        '#!void))))
               (_%$%g264681264695%_
                (lambda (_%$%g264682264692%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g264682264692%_))))
               (_%$%g264680264774%_
                (lambda (_%$%g264682264698%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g264682264698%_))
                      (let ((_%$%e264685264700%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g264682264698%_))))
                        (let ((_%$%hd264686264703%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e264685264700%_)))
                              (_%$%tl264687264705%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e264685264700%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl264687264705%_))
                              (let ((_%$%e264688264708%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl264687264705%_))))
                                (let ((_%$%hd264689264711%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e264688264708%_)))
                                      (_%$%tl264690264713%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e264688264708%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl264690264713%_))
                                      (let* ((_%klass264733%_
                                              (let ((__tmp268656
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self264669%_
                                                        '1
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#optimizer-resolve-class
                                                 _%stx264665%_
                                                 __tmp268656)))
                                             (_%field264735%_
                                              (let ((__tmp268657
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self264669%_
                                                        '3
                                                        '#f
                                                        '#f))))
                                                (declare (not safe))
                                                (gxc#!class-slot->field-offset
                                                 _%klass264733%_
                                                 __tmp268657)))
                                             (_%object264737%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx264664%_
                                                 _%$%hd264686264703%_)))
                                             (_%value264739%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx264664%_
                                                 _%$%hd264689264711%_)))
                                             (_%klass264742%_ _%klass264733%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass264742%_
                                               '8
                                               '#f
                                               '#f))
                                            (let ((__tmp268658
                                                   (cons (if (or _%arguments-ok?264679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self264669%_
                                 '4
                                 '#f
                                 '#f))))
                     '%#struct-unchecked-set!
                     '%#struct-direct-set!)
                 (cons (cons '%#ref
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self264669%_
                                      '1
                                      '#f
                                      '#f))
                                   '()))
                       (cons (cons '%#quote (cons _%field264735%_ '()))
                             (cons _%object264737%_
                                   (cons _%value264739%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp268658
                                               _%stx264665%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass264742%_
                                                   '7
                                                   '#f
                                                   '#f))
                                                (let ((__tmp268659
                                                       (cons (if (or _%arguments-ok?264679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self264669%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self264669%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field264735%_ '()))
                                 (cons _%object264737%_
                                       (cons _%value264739%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp268659
                                                   _%stx264665%_))
                                                (let ((_%$e264762%_
                                                       (let ((__tmp268660
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self264669%_
                         '3
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#!class-slot-find-struct _%klass264742%_ __tmp268660))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%$e264762%_
                                                      (let ((__tmp268661
                                                             (cons (if (or _%arguments-ok?264679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (not (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self264669%_
                                           '3
                                           '#f
                                           '#f))))
                               '%#struct-unchecked-set!
                               '%#struct-set!)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self264669%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field264735%_ '()))
                                       (cons _%object264737%_
                                             (cons _%value264739%_ '())))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp268661 _%stx264665%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self264669%_ '4 '#f '#f))
                  (let ((__tmp268662
                         (let ((_%$obj264771%_
                                (let ((__tmp268663
                                       (let ()
                                         (declare (not safe))
                                         (##gensym '__obj))))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp268663))))
                           (cons '%#let-values
                                 (cons (cons (cons (cons _%$obj264771%_ '())
                                                   (cons _%object264737%_ '()))
                                             '())
                                       (cons (cons '%#if
                                                   (cons (cons '%#struct-direct-instance?
                                                               (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass264742%_
                                            '1
                                            '#f
                                            '#f))
                                         '()))
                             (cons (cons '%#ref (cons _%$obj264771%_ '()))
                                   '())))
                 (cons (cons '%#struct-unchecked-set!
                             (cons (cons '%#ref
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self264669%_
                                                  '1
                                                  '#f
                                                  '#f))
                                               '()))
                                   (cons (cons '%#quote
                                               (cons _%field264735%_ '()))
                                         (cons (cons '%#ref
                                                     (cons _%$obj264771%_ '()))
                                               (cons _%value264739%_ '())))))
                       (cons (if _%arguments-ok?264679%_
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'unchecked-slot-set!
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj264771%_
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self264669%_
                                '3
                                '#f
                                '#f))
                             '()))
                 (cons _%value264739%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (cons '%#call
                                       (cons (cons '%#ref
                                                   (cons 'class-slot-set! '()))
                                             (cons (cons '%#ref
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref _%self264669%_ '1 '#f '#f))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#ref
                                                               (cons _%$obj264771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons '%#quote
                             (cons (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%self264669%_
                                      '3
                                      '#f
                                      '#f))
                                   '()))
                       (cons _%value264739%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp268662 _%stx264665%_))
                  (let ((__tmp268664
                         (cons '%#call
                               (cons (cons '%#ref
                                           (cons 'unchecked-slot-set! '()))
                                     (cons _%object264737%_
                                           (cons (cons '%#quote
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref _%self264669%_ '3 '#f '#f))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%value264739%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp268664 _%stx264665%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g264681264695%_
                                       _%$%g264682264698%_))))
                              (_%$%g264681264695%_ _%$%g264682264698%_))))
                      (_%$%g264681264695%_ _%$%g264682264698%_)))))
          (_%$%g264680264774%_ _%args264666%_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass267595 __method-table267596)
        (let ((__check-arguments267597
               (let ((__tmp268665
                      (lambda ()
                        (let ((__method267598
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  __method-table267596
                                  'check-arguments
                                  '#f))))
                          (if __method267598
                              __method267598
                              (let ()
                                (declare (not safe))
                                (error '"Missing method"
                                       'check-arguments)))))))
                 (declare (not safe))
                 (__make-promise __tmp268665))))
          (lambda (_%self264663%_ _%ctx264664%_ _%stx264665%_ _%args264666%_)
            (let* ((_%self264669%_ _%self264663%_)
                   (_%arguments-ok?264679%_
                    ((force __check-arguments267597)
                     _%self264669%_
                     _%ctx264664%_
                     _%stx264665%_
                     _%args264666%_))
                   (_%$%g264681264695%_
                    (lambda (_%$%g264682264692%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g264682264692%_))))
                   (_%$%g264680264774%_
                    (lambda (_%$%g264682264698%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g264682264698%_))
                          (let ((_%$%e264685264700%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g264682264698%_))))
                            (let ((_%$%hd264686264703%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e264685264700%_)))
                                  (_%$%tl264687264705%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e264685264700%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl264687264705%_))
                                  (let ((_%$%e264688264708%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl264687264705%_))))
                                    (let ((_%$%hd264689264711%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e264688264708%_)))
                                          (_%$%tl264690264713%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e264688264708%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl264690264713%_))
                                          (let* ((_%klass264733%_
                                                  (let ((__tmp268666
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self264669%_
                                                            '1
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#optimizer-resolve-class
                                                     _%stx264665%_
                                                     __tmp268666)))
                                                 (_%field264735%_
                                                  (let ((__tmp268667
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%self264669%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (declare (not safe))
                                                    (gxc#!class-slot->field-offset
                                                     _%klass264733%_
                                                     __tmp268667)))
                                                 (_%object264737%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx264664%_
                                                     _%$%hd264686264703%_)))
                                                 (_%value264739%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%ctx264664%_
                                                     _%$%hd264689264711%_)))
                                                 (_%klass264742%_
                                                  _%klass264733%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass264742%_
                                                   '8
                                                   '#f
                                                   '#f))
                                                (let ((__tmp268668
                                                       (cons (if (or _%arguments-ok?264679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (not (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self264669%_
                                     '4
                                     '#f
                                     '#f))))
                         '%#struct-unchecked-set!
                         '%#struct-direct-set!)
                     (cons (cons '%#ref
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self264669%_
                                          '1
                                          '#f
                                          '#f))
                                       '()))
                           (cons (cons '%#quote (cons _%field264735%_ '()))
                                 (cons _%object264737%_
                                       (cons _%value264739%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp268668
                                                   _%stx264665%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%klass264742%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp268669
                                                           (cons (if (or _%arguments-ok?264679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (not (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self264669%_
                                         '4
                                         '#f
                                         '#f))))
                             '%#struct-unchecked-set!
                             '%#struct-set!)
                         (cons (cons '%#ref
                                     (cons (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%self264669%_
                                              '1
                                              '#f
                                              '#f))
                                           '()))
                               (cons (cons '%#quote (cons _%field264735%_ '()))
                                     (cons _%object264737%_
                                           (cons _%value264739%_ '())))))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp268669 _%stx264665%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$e264762%_
                                                           (let ((__tmp268670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self264669%_
                             '3
                             '#f
                             '#f))))
                     (declare (not safe))
                     (gxc#!class-slot-find-struct
                      _%klass264742%_
                      __tmp268670))))
              (if _%$e264762%_
                  (let ((__tmp268671
                         (cons (if (or _%arguments-ok?264679%_
                                       (not (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self264669%_
                                               '3
                                               '#f
                                               '#f))))
                                   '%#struct-unchecked-set!
                                   '%#struct-set!)
                               (cons (cons '%#ref
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self264669%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     (cons (cons '%#quote
                                                 (cons _%field264735%_ '()))
                                           (cons _%object264737%_
                                                 (cons _%value264739%_
                                                       '())))))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp268671 _%stx264665%_))
                  (if (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self264669%_ '4 '#f '#f))
                      (let ((__tmp268672
                             (let ((_%$obj264771%_
                                    (let ((__tmp268673
                                           (let ()
                                             (declare (not safe))
                                             (##gensym '__obj))))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp268673))))
                               (cons '%#let-values
                                     (cons (cons (cons (cons _%$obj264771%_
                                                             '())
                                                       (cons _%object264737%_
                                                             '()))
                                                 '())
                                           (cons (cons '%#if
                                                       (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons '%#quote
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass264742%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#ref (cons _%$obj264771%_ '()))
                                       '())))
                     (cons (cons '%#struct-unchecked-set!
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self264669%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field264735%_ '()))
                                             (cons (cons '%#ref
                                                         (cons _%$obj264771%_
                                                               '()))
                                                   (cons _%value264739%_
                                                         '())))))
                           (cons (if _%arguments-ok?264679%_
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'unchecked-slot-set!
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%$obj264771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#quote
                           (cons (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self264669%_
                                    '3
                                    '#f
                                    '#f))
                                 '()))
                     (cons _%value264739%_ '())))))
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
                              _%self264669%_
                              '1
                              '#f
                              '#f))
                           '()))
               (cons (cons '%#ref (cons _%$obj264771%_ '()))
                     (cons (cons '%#quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%self264669%_
                                          '3
                                          '#f
                                          '#f))
                                       '()))
                           (cons _%value264739%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp268672 _%stx264665%_))
                      (let ((__tmp268674
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons 'unchecked-slot-set! '()))
                                         (cons _%object264737%_
                                               (cons (cons '%#quote
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self264669%_
                            '3
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%value264739%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source
                         __tmp268674
                         _%stx264665%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g264681264695%_
                                           _%$%g264682264698%_))))
                                  (_%$%g264681264695%_ _%$%g264682264698%_))))
                          (_%$%g264681264695%_ _%$%g264682264698%_)))))
              (_%$%g264680264774%_ _%args264666%_))))))
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
      (lambda (_%self264479%_ _%ctx264480%_ _%stx264481%_ _%args264482%_)
        (let* ((_%self264485%_ _%self264479%_)
               (_%$%self264494264504%_ _%self264485%_)
               (_%$%E264496264507%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self264494264504%_
                           '((!lambda _ _ arity dispatch inline))))
                  '#!void))
               (_%$%K264497264517%_
                (lambda (_%inline264510%_ _%dispatch264511%_ _%arity264512%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match?
                         _%self264485%_
                         _%args264482%_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _%stx264481%_
                         _%arity264512%_)))
                  (if _%inline264510%_
                      (let ()
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp268675 (_%inline264510%_ _%stx264481%_)))
                          (declare (not safe))
                          (gxc#xform-wrap-apply
                           __tmp268675
                           _%stx264481%_
                           _%ctx264480%_)))
                      (if (and _%dispatch264511%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#symbol-in-local-scope?
                                  _%dispatch264511%_)))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _%dispatch264511%_))
                            (let ((__tmp268676
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _%dispatch264511%_
                                                           '()))
                                               _%args264482%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-apply
                               __tmp268676
                               _%stx264481%_
                               _%ctx264480%_)))
                          (gxc#!procedure::optimize-call
                           _%self264485%_
                           _%ctx264480%_
                           _%stx264481%_
                           _%args264482%_)))))
               (_%$%e264498264520%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264494264504%_
                   '1
                   '#f
                   '#f)))
               (_%$%e264499264523%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264494264504%_
                   '2
                   '#f
                   '#f)))
               (_%$%e264500264526%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264494264504%_
                   '3
                   '#f
                   '#f)))
               (_%arity264529%_ _%$%e264500264526%_)
               (_%$%e264501264531%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264494264504%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch264534%_ _%$%e264501264531%_)
               (_%$%e264502264536%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264494264504%_
                   '5
                   '#f
                   '#f)))
               (_%inline264539%_ _%$%e264502264536%_))
          (_%$%K264497264517%_
           _%inline264539%_
           _%dispatch264534%_
           _%arity264529%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self264331%_ _%ctx264332%_ _%stx264333%_ _%args264334%_)
        (let* ((_%self264337%_ _%self264331%_)
               (_%$e264351%_
                (let ((__tmp268678
                       (lambda (_%$%g264346264348%_)
                         (let ()
                           (declare (not safe))
                           (gxc#!lambda-arity-match?
                            _%$%g264346264348%_
                            _%args264334%_))))
                      (__tmp268677
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self264337%_
                          '3
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__find __tmp268678 __tmp268677))))
          (if _%$e264351%_
              (let ((__method268564
                     (let ()
                       (declare (not safe))
                       (__method-ref _%$e264351%_ 'optimize-call))))
                (if __method268564
                    (let ()
                      (declare (not safe))
                      (__method268564
                       _%$e264351%_
                       _%ctx264332%_
                       _%stx264333%_
                       _%args264334%_))
                    (begin
                      (let ()
                        (declare (not safe))
                        (error '"Missing method" _%$e264351%_ 'optimize-call))
                      '#!void)))
              (let ((__tmp268679
                     (map gxc#!lambda-arity
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self264337%_
                             '3
                             '#f
                             '#f)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"Illegal case-lambda application; arity mismatch"
                 _%stx264333%_
                 __tmp268679))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self264072%_ _%ctx264073%_ _%stx264074%_ _%args264075%_)
        (let* ((_%self264078%_ _%self264072%_)
               (_%$%self264087264096%_ _%self264078%_)
               (_%$%E264089264099%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self264087264096%_
                           '((!kw-lambda _ _ table dispatch))))
                  '#!void))
               (_%$%K264090264190%_
                (lambda (_%dispatch264102%_ _%table264103%_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#symbol-in-local-scope? _%dispatch264102%_))
                      (let* ((_%$%g264104264114%_
                              (let ()
                                (declare (not safe))
                                (gxc#optimizer-lookup-type
                                 _%dispatch264102%_)))
                             (_%$%else264106264122%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"unknown keyword dispatch lambda "
                                   _%dispatch264102%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#xform-call%
                                   _%ctx264073%_
                                   _%stx264074%_))))
                             (_%$%K264108264171%_
                              (lambda (_%main264125%_ _%keys264126%_)
                                (let ((_g268680_
                                       (gxc#!kw-lambda-split-args
                                        _%stx264074%_
                                        _%args264075%_)))
                                  (begin
                                    (let ((_g268681_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g268680_)
                                                 (##values-length _g268680_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g268681_ 2)))
                                          (error "Context expects 2 values"
                                                 _g268681_)))
                                    (let ((_%pargs264128%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g268680_ 0)))
                                          (_%kwargs264129%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g268680_ 1))))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"dispatch kw-lambda => "
                                           _%main264125%_))
                                        (if _%table264103%_
                                            (let ((_%xargs264137%_
                                                   (map (lambda (_%key264131%_)
                                                          (let ((_%$e264133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (agetq__0 _%key264131%_ _%kwargs264129%_))))
                    (if _%$e264133%_ _%$e264133%_ '(%#ref absent-value))))
                _%keys264126%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (for-each
                                               (lambda (_%kw264139%_)
                                                 (if (memq (car _%kw264139%_)
                                                           _%keys264126%_)
                                                     '#!void
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"Illegal keyword lambda application; unexpected keyword"
                                                        _%stx264074%_
                                                        _%keys264126%_
                                                        _%kw264139%_))))
                                               _%kwargs264129%_)
                                              (let ((__tmp268682
                                                     (cons '%#call
                                                           (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%main264125%_ '()))
                         (cons (cons '%#quote (cons '#f '()))
                               (append _%xargs264137%_ _%pargs264128%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-apply
                                                 __tmp268682
                                                 _%stx264074%_
                                                 _%ctx264073%_)))
                                            (let* ((_%kwt264141%_
                                                    (let ((__tmp268683
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__kwt))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp268683)))
                                                   (_%kwvars264145%_
                                                    (map (lambda (_%_264143%_)
                                                           (let ((__tmp268684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__kw))))
                     (declare (not safe))
                     (make-symbol__0 __tmp268684)))
                 _%kwargs264129%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwbind264150%_
                                                    (map (lambda (_%kw264147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar264148%_)
                   (cons (cons _%kwvar264148%_ '())
                         (cons (cdr _%kw264147%_) '())))
                 _%kwargs264129%_
                 _%kwvars264145%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%kwset264155%_
                                                    (map (lambda (_%kw264152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar264153%_)
                   (cons '%#call
                         (cons '(%#ref symbolic-table-set!)
                               (cons (cons '%#ref (cons _%kwt264141%_ '()))
                                     (cons (cons '%#quote
                                                 (cons (car _%kw264152%_) '()))
                                           (cons (cons '%#ref
                                                       (cons _%kwvar264153%_
                                                             '()))
                                                 '()))))))
                 _%kwargs264129%_
                 _%kwvars264145%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xkwargs264160%_
                                                    (map (lambda (_%kw264157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%kwvar264158%_)
                   (cons (car _%kw264157%_)
                         (cons '%#ref (cons _%kwvar264158%_ '()))))
                 _%kwargs264129%_
                 _%kwvars264145%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%xargs264168%_
                                                    (map (lambda (_%key264162%_)
                                                           (let ((_%$e264164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (agetq__0 _%key264162%_ _%xkwargs264160%_))))
                     (if _%$e264164%_ _%$e264164%_ '(%#ref absent-value))))
                 _%keys264126%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp268685
                                                    (cons '%#let-values
                                                          (cons _%kwbind264150%_
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%kwt264141%_ '())
                                                      (cons (let ((__tmp268686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '%#call
                                 (cons '(%#ref make-symbolic-table)
                                       (cons (cons '%#quote
                                                   (cons (length _%kwargs264129%_)
                                                         '()))
                                             (cons '(%#quote (length kwvars))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp268686 _%stx264074%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#begin
                                                      (let ((__tmp268687
                                                             (cons (let ((__tmp268688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons _%main264125%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%kwt264141%_
                                                                '()))
                                                    (append _%xargs264168%_
                                                            _%pargs264128%_))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp268688 _%stx264074%_))
                           '())))
                (declare (not safe))
                (##append _%kwset264155%_ __tmp268687)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-apply
                                               __tmp268685
                                               _%stx264074%_
                                               _%ctx264073%_))))))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%$%g264104264114%_
                               'gxc#!kw-lambda-primary::t))
                            (let* ((_%$%e264109264174%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g264104264114%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%$%e264110264177%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g264104264114%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%$%e264111264180%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g264104264114%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%keys264183%_ _%$%e264111264180%_)
                                   (_%$%e264112264185%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%$%g264104264114%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%main264188%_ _%$%e264112264185%_))
                              (_%$%K264108264171%_
                               _%main264188%_
                               _%keys264183%_))
                            (_%$%else264106264122%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#xform-call% _%ctx264073%_ _%stx264074%_)))))
               (_%$%e264091264193%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264087264096%_
                   '1
                   '#f
                   '#f)))
               (_%$%e264092264196%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264087264096%_
                   '2
                   '#f
                   '#f)))
               (_%$%e264093264199%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264087264096%_
                   '3
                   '#f
                   '#f)))
               (_%table264202%_ _%$%e264093264199%_)
               (_%$%e264094264204%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264087264096%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch264207%_ _%$%e264094264204%_))
          (_%$%K264090264190%_ _%dispatch264207%_ _%table264202%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx263685%_ _%args263686%_)
        (let _%lp263688%_ ((_%rest263690%_ _%args263686%_)
                           (_%pargs263691%_ '())
                           (_%kwargs263692%_ '()))
          (let* ((_%__stx268057268058%_ _%rest263690%_)
                 (_%$%g263698263750%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx268057268058%_)))))
            (let ((_%__kont268059268060%_
                   (lambda (_%$%g263700263929%_ _%$%g263701263930%_)
                     (_%lp263688%_
                      _%$%g263700263929%_
                      (cons _%$%g263701263930%_ _%pargs263691%_)
                      _%kwargs263692%_)))
                  (_%__kont268061268062%_
                   (lambda (_%$%g263715263875%_)
                     (values (let ()
                               (declare (not safe))
                               (foldl__0
                                cons
                                _%$%g263715263875%_
                                _%pargs263691%_))
                             (reverse _%kwargs263692%_))))
                  (_%__kont268063268064%_
                   (lambda (_%$%g263726263822%_
                            _%$%g263727263823%_
                            _%$%g263728263824%_)
                     (let ((_%kw263841%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g263728263824%_))))
                       (if (assq _%kw263841%_ _%kwargs263692%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx263685%_
                              _%kw263841%_))
                           (_%lp263688%_
                            _%$%g263726263822%_
                            _%pargs263691%_
                            (cons (cons _%kw263841%_ _%$%g263727263823%_)
                                  _%kwargs263692%_))))))
                  (_%__kont268065268066%_
                   (lambda (_%$%g263741263770%_ _%$%g263742263771%_)
                     (_%lp263688%_
                      _%$%g263741263770%_
                      (cons _%$%g263742263771%_ _%pargs263691%_)
                      _%kwargs263692%_)))
                  (_%__kont268067268068%_
                   (lambda ()
                     (values (reverse _%pargs263691%_)
                             (reverse _%kwargs263692%_)))))
              (let ((_%__match268164268165%_
                     (lambda (_%$%e263729263790%_
                              _%$%hd263730263793%_
                              _%$%tl263731263795%_
                              _%$%e263732263798%_
                              _%$%hd263733263801%_
                              _%$%tl263734263803%_
                              _%$%e263735263806%_
                              _%$%hd263736263809%_
                              _%$%tl263737263811%_
                              _%$%e263738263814%_
                              _%$%hd263739263817%_
                              _%$%tl263740263819%_)
                       (let ((_%$%g263726263822%_ _%$%tl263740263819%_)
                             (_%$%g263727263823%_ _%$%hd263739263817%_)
                             (_%$%g263728263824%_ _%$%hd263736263809%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%$%g263728263824%_))
                             (_%__kont268063268064%_
                              _%$%g263726263822%_
                              _%$%g263727263823%_
                              _%$%g263728263824%_)
                             (_%__kont268065268066%_
                              _%$%tl263731263795%_
                              _%$%hd263730263793%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx268057268058%_))
                    (let ((_%$%e263702263894%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx268057268058%_))))
                      (let ((_%$%tl263704263899%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e263702263894%_)))
                            (_%$%hd263703263897%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e263702263894%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd263703263897%_))
                            (let ((_%$%e263705263902%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd263703263897%_))))
                              (let ((_%$%tl263707263907%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e263705263902%_)))
                                    (_%$%hd263706263905%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e263705263902%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd263706263905%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd263706263905%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl263707263907%_))
                                            (let ((_%$%e263708263910%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl263707263907%_))))
                                              (let ((_%$%tl263710263915%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e263708263910%_)))
                                                    (_%$%hd263709263913%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e263708263910%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd263709263913%_))
                                                    (let ((_%$%e263711263918%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd263709263913%_))))
                                                      (if (equal? _%$%e263711263918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl263710263915%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl263704263899%_))
                          (let ((_%$%e263712263921%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl263704263899%_))))
                            (let ((_%$%tl263714263926%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e263712263921%_)))
                                  (_%$%hd263713263924%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e263712263921%_))))
                              (_%__kont268059268060%_
                               _%$%tl263714263926%_
                               _%$%hd263713263924%_)))
                          (_%__kont268065268066%_
                           _%$%tl263704263899%_
                           _%$%hd263703263897%_))
                      (_%__kont268065268066%_
                       _%$%tl263704263899%_
                       _%$%hd263703263897%_))
                  (if (equal? _%$%e263711263918%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl263710263915%_))
                          (_%__kont268061268062%_ _%$%tl263704263899%_)
                          (_%__kont268065268066%_
                           _%$%tl263704263899%_
                           _%$%hd263703263897%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl263710263915%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl263704263899%_))
                              (let ((_%$%e263738263814%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl263704263899%_))))
                                (let ((_%$%tl263740263819%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e263738263814%_)))
                                      (_%$%hd263739263817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e263738263814%_))))
                                  (_%__match268164268165%_
                                   _%$%e263702263894%_
                                   _%$%hd263703263897%_
                                   _%$%tl263704263899%_
                                   _%$%e263705263902%_
                                   _%$%hd263706263905%_
                                   _%$%tl263707263907%_
                                   _%$%e263708263910%_
                                   _%$%hd263709263913%_
                                   _%$%tl263710263915%_
                                   _%$%e263738263814%_
                                   _%$%hd263739263817%_
                                   _%$%tl263740263819%_)))
                              (_%__kont268065268066%_
                               _%$%tl263704263899%_
                               _%$%hd263703263897%_))
                          (_%__kont268065268066%_
                           _%$%tl263704263899%_
                           _%$%hd263703263897%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl263710263915%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl263704263899%_))
                                                            (let ((_%$%e263738263814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl263704263899%_))))
                      (let ((_%$%tl263740263819%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e263738263814%_)))
                            (_%$%hd263739263817%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e263738263814%_))))
                        (_%__match268164268165%_
                         _%$%e263702263894%_
                         _%$%hd263703263897%_
                         _%$%tl263704263899%_
                         _%$%e263705263902%_
                         _%$%hd263706263905%_
                         _%$%tl263707263907%_
                         _%$%e263708263910%_
                         _%$%hd263709263913%_
                         _%$%tl263710263915%_
                         _%$%e263738263814%_
                         _%$%hd263739263817%_
                         _%$%tl263740263819%_)))
                    (_%__kont268065268066%_
                     _%$%tl263704263899%_
                     _%$%hd263703263897%_))
                (_%__kont268065268066%_
                 _%$%tl263704263899%_
                 _%$%hd263703263897%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont268065268066%_
                                             _%$%tl263704263899%_
                                             _%$%hd263703263897%_))
                                        (_%__kont268065268066%_
                                         _%$%tl263704263899%_
                                         _%$%hd263703263897%_))
                                    (_%__kont268065268066%_
                                     _%$%tl263704263899%_
                                     _%$%hd263703263897%_))))
                            (_%__kont268065268066%_
                             _%$%tl263704263899%_
                             _%$%hd263703263897%_))))
                    (_%__kont268067268068%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self263669%_ _%ctx263670%_ _%stx263671%_ _%args263672%_)
        (let ((_%self263675%_ _%self263669%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx263670%_ _%stx263671%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self263359%_ _%stx263360%_)
        (let* ((_%__stx268173268174%_ _%stx263360%_)
               (_%$%g263363263403%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268173268174%_)))))
          (let ((_%__kont268175268176%_
                 (lambda (_%$%g263365263507%_ _%$%g263366263508%_)
                   (let ((_%$e263535%_
                          (member 'return:
                                  (let ((__tmp268689
                                         (lambda (_%$%g263527263530%_
                                                  _%$%g263528263532%_)
                                           (cons _%$%g263527263530%_
                                                 _%$%g263528263532%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp268689
                                     '()
                                     _%$%g263366263508%_))
                                  gx#stx-eq?)))
                     (if _%$e263535%_
                         (let ((_%type263540%_
                                (let ((__tmp268690
                                       (let ((__tmp268691 (cadr _%$e263535%_)))
                                         (declare (not safe))
                                         (gxc#identifier-symbol __tmp268691))))
                                  (declare (not safe))
                                  (gxc#optimizer-resolve-class
                                   _%stx263360%_
                                   __tmp268690))))
                           (gxc#check-return-type!
                            _%stx263360%_
                            _%$%g263365263507%_
                            _%type263540%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self263359%_
                              _%$%g263365263507%_)))
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1
                            _%self263359%_
                            _%$%g263365263507%_))))))
                (_%__kont268179268180%_
                 (lambda (_%$%g263388263432%_ _%$%g263389263433%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self263359%_ _%$%g263388263432%_)))))
            (let ((_%__match268210268211%_
                   (lambda (_%$%e263367263453%_
                            _%$%hd263368263456%_
                            _%$%tl263369263458%_
                            _%$%e263370263461%_
                            _%$%hd263371263464%_
                            _%$%tl263372263466%_
                            _%$%e263373263469%_
                            _%$%hd263374263472%_
                            _%$%tl263375263474%_
                            _%__splice268177268178%_
                            _%$%target263376263477%_
                            _%$%tl263378263479%_)
                     (letrec ((_%$%loop263379263482%_
                               (lambda (_%$%hd263377263485%_
                                        _%$%signature263383263487%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd263377263485%_))
                                     (let ((_%$%e263380263489%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd263377263485%_))))
                                       (let ((_%$%lp-tl263382263494%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e263380263489%_)))
                                             (_%$%lp-hd263381263492%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e263380263489%_))))
                                         (_%$%loop263379263482%_
                                          _%$%lp-tl263382263494%_
                                          (cons _%$%lp-hd263381263492%_
                                                _%$%signature263383263487%_))))
                                     (let ((_%$%signature263384263497%_
                                            (reverse _%$%signature263383263487%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl263372263466%_))
                                           (let ((_%$%e263385263499%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl263372263466%_))))
                                             (let ((_%$%tl263387263504%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e263385263499%_)))
                                                   (_%$%hd263386263502%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e263385263499%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl263387263504%_))
                                                   (_%__kont268175268176%_
                                                    _%$%hd263386263502%_
                                                    _%$%signature263384263497%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g263363263403%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g263363263403%_))))))))
                       (_%$%loop263379263482%_
                        _%$%target263376263477%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx268173268174%_))
                  (let ((_%$%e263367263453%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx268173268174%_))))
                    (let ((_%$%tl263369263458%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e263367263453%_)))
                          (_%$%hd263368263456%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e263367263453%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl263369263458%_))
                          (let ((_%$%e263370263461%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl263369263458%_))))
                            (let ((_%$%tl263372263466%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e263370263461%_)))
                                  (_%$%hd263371263464%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e263370263461%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd263371263464%_))
                                  (let ((_%$%e263373263469%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd263371263464%_))))
                                    (let ((_%$%tl263375263474%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e263373263469%_)))
                                          (_%$%hd263374263472%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e263373263469%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd263374263472%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%$%hd263374263472%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%$%tl263375263474%_))
                                                  (let ((_%__splice268177268178%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl263375263474%_
                                                            '0))))
                                                    (let ((_%$%tl263378263479%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice268177268178%_
                                                              '1)))
                                                          (_%$%target263376263477%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice268177268178%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl263378263479%_))
                                                          (_%__match268210268211%_
                                                           _%$%e263367263453%_
                                                           _%$%hd263368263456%_
                                                           _%$%tl263369263458%_
                                                           _%$%e263370263461%_
                                                           _%$%hd263371263464%_
                                                           _%$%tl263372263466%_
                                                           _%$%e263373263469%_
                                                           _%$%hd263374263472%_
                                                           _%$%tl263375263474%_
                                                           _%__splice268177268178%_
                                                           _%$%target263376263477%_
                                                           _%$%tl263378263479%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl263372263466%_))
                      (let ((_%$%e263396263424%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl263372263466%_))))
                        (let ((_%$%tl263398263429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e263396263424%_)))
                              (_%$%hd263397263427%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e263396263424%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl263398263429%_))
                              (_%__kont268179268180%_
                               _%$%hd263397263427%_
                               _%$%hd263371263464%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g263363263403%_)))))
                      (let () (declare (not safe)) (_%$%g263363263403%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl263372263466%_))
                                                      (let ((_%$%e263396263424%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl263372263466%_))))
                (let ((_%$%tl263398263429%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e263396263424%_)))
                      (_%$%hd263397263427%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e263396263424%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl263398263429%_))
                      (_%__kont268179268180%_
                       _%$%hd263397263427%_
                       _%$%hd263371263464%_)
                      (let () (declare (not safe)) (_%$%g263363263403%_)))))
              (let () (declare (not safe)) (_%$%g263363263403%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl263372263466%_))
                                                  (let ((_%$%e263396263424%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl263372263466%_))))
                                                    (let ((_%$%tl263398263429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e263396263424%_)))
                                                          (_%$%hd263397263427%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e263396263424%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl263398263429%_))
                                                          (_%__kont268179268180%_
                                                           _%$%hd263397263427%_
                                                           _%$%hd263371263464%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g263363263403%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g263363263403%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl263372263466%_))
                                              (let ((_%$%e263396263424%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl263372263466%_))))
                                                (let ((_%$%tl263398263429%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e263396263424%_)))
                                                      (_%$%hd263397263427%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e263396263424%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl263398263429%_))
                                                      (_%__kont268179268180%_
                                                       _%$%hd263397263427%_
                                                       _%$%hd263371263464%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g263363263403%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g263363263403%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl263372263466%_))
                                      (let ((_%$%e263396263424%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl263372263466%_))))
                                        (let ((_%$%tl263398263429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e263396263424%_)))
                                              (_%$%hd263397263427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e263396263424%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl263398263429%_))
                                              (_%__kont268179268180%_
                                               _%$%hd263397263427%_
                                               _%$%hd263371263464%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g263363263403%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g263363263403%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g263363263403%_)))))
                  (let () (declare (not safe)) (_%$%g263363263403%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx263334%_ _%expr263335%_ _%type263336%_)
        (let ((_%$e263338%_ (not _%type263336%_)))
          (if _%$e263338%_
              _%$e263338%_
              (let ((_%$e263341%_
                     (eq? (##structure-ref _%type263336%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e263341%_
                    _%$e263341%_
                    (let ((_%$e263344%_
                           (eq? (##structure-ref
                                 _%type263336%_
                                 '1
                                 gxc#!type::t
                                 '#f)
                                'void)))
                      (if _%$e263344%_
                          _%$e263344%_
                          (let ((_%expr-type263348%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#apply-basic-expression-type
                                    _%expr263335%_))))
                            (if (not _%expr-type263348%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"cannot verify procedure return type; no type information"
                                   _%stx263334%_
                                   _%type263336%_))
                                (if (eq? 't
                                         (##structure-ref
                                          _%expr-type263348%_
                                          '1
                                          gxc#!type::t
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"cannot verify procedure return type; unspecific type"
                                       _%stx263334%_
                                       _%type263336%_
                                       _%expr-type263348%_))
                                    (let ((_%$e263352%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%expr-type263348%_
                                              'gxc#!abort::t))))
                                      (if _%$e263352%_
                                          _%$e263352%_
                                          (let ((_%$e263355%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!type-subtype?
                                                    _%expr-type263348%_
                                                    _%type263336%_))))
                                            (if _%$e263355%_
                                                _%$e263355%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"procedure return type does not match signature"
                                                   _%stx263334%_
                                                   _%type263336%_
                                                   _%expr-type263348%_)))))))))))))))))
    (define gxc#optimize-if%
      (lambda (_%self262763%_ _%stx262764%_)
        (gxc#check-contract-violation!
         _%stx262764%_
         (let* ((_%__stx268259268260%_ _%stx262764%_)
                (_%$%g262769262879%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; invalid match target"
                      _%__stx268259268260%_)))))
           (let ((_%__kont268261268262%_
                  (lambda (_%$%g262771263308%_
                           _%$%g262772263309%_
                           _%$%g262773263310%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-e _%$%g262773263310%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self262763%_
                           _%$%g262772263309%_))
                        (let ()
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self262763%_
                           _%$%g262771263308%_)))))
                 (_%__kont268263268264%_
                  (lambda (_%$%g262792263137%_
                           _%$%g262793263138%_
                           _%$%g262794263139%_
                           _%$%g262795263140%_)
                    (let ((_%$e263172%_
                           (let ((__tmp268692
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g262795263140%_))))
                             (declare (not safe))
                             (gxc#optimizer-lookup-type __tmp268692))))
                      (if _%$e263172%_
                          (if (or (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e263172%_
                                     'gxc#!predicate::t))
                                  (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e263172%_
                                     'gxc#!primitive-predicate::t)))
                              (let* ((_%test263180%_
                                      (let ((__tmp268693
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '%#call))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '%#ref))
                       (cons _%$%g262795263140%_ '()))
                 (cons (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#ref))
                             (cons _%$%g262794263139%_ '()))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-apply
                                         __tmp268693
                                         _%stx262764%_
                                         _%self262763%_)))
                                     (_%K263184%_
                                      (let ((__tmp268694
                                             (lambda ()
                                               (let ((__tmp268697
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self262763%_
                                                           _%$%g262793263138%_))))
                                                     (__tmp268695
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#identifier-symbol _%$%g262794263139%_))
                          (let ((__tmp268696
                                 (##structure-ref
                                  _%$e263172%_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             _%stx262764%_
                             __tmp268696)))
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-path-type)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp268697
                                                  gxc#current-compile-path-type
                                                  __tmp268695)))))
                                        (declare (not safe))
                                        (__make-promise __tmp268694)))
                                     (_%E263187%_
                                      (let ((__tmp268698
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self262763%_
                                                  _%$%g262792263137%_)))))
                                        (declare (not safe))
                                        (__make-promise __tmp268698)))
                                     (_%__stx268233268234%_ _%test263180%_)
                                     (_%$%g263191263204%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx268233268234%_)))))
                                (let ((_%__kont268235268236%_
                                       (lambda (_%$%g263193263232%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%$%g263193263232%_))
                                             (force _%K263184%_)
                                             (force _%E263187%_))))
                                      (_%__kont268237268238%_
                                       (lambda ()
                                         (let ((__tmp268699
                                                (cons '%#if
                                                      (cons _%test263180%_
                                                            (cons (force _%K263184%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (force _%E263187%_) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp268699
                                            _%stx262764%_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%__stx268233268234%_))
                                      (let ((_%$%e263194263216%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%__stx268233268234%_))))
                                        (let ((_%$%tl263196263221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e263194263216%_)))
                                              (_%$%hd263195263219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e263194263216%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%$%hd263195263219%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#quote
                                                     _%$%hd263195263219%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl263196263221%_))
                                                      (let ((_%$%e263197263224%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl263196263221%_))))
                (let ((_%$%tl263199263229%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e263197263224%_)))
                      (_%$%hd263198263227%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e263197263224%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl263199263229%_))
                      (_%__kont268235268236%_ _%$%hd263198263227%_)
                      (_%__kont268237268238%_))))
              (_%__kont268237268238%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont268237268238%_))
                                              (_%__kont268237268238%_))))
                                      (_%__kont268237268238%_))))
                              (let ()
                                (declare (not safe))
                                (gxc#xform-operands
                                 _%self262763%_
                                 _%stx262764%_)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-operands
                             _%self262763%_
                             _%stx262764%_))))))
                 (_%__kont268265268266%_
                  (lambda (_%$%g262829263013%_
                           _%$%g262830263014%_
                           _%$%g262831263015%_
                           _%$%g262832263016%_)
                    (gxc#optimize-if%
                     _%self262763%_
                     (let ((__tmp268700
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#if))
                                  (cons _%$%g262831263015%_
                                        (cons _%$%g262829263013%_
                                              (cons _%$%g262830263014%_
                                                    '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp268700 _%stx262764%_)))))
                 (_%__kont268267268268%_
                  (lambda (_%$%g262860262916%_
                           _%$%g262861262917%_
                           _%$%g262862262918%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-operands _%self262763%_ _%stx262764%_)))))
             (let ((_%__match268466268467%_
                    (lambda (_%$%e262833262941%_
                             _%$%hd262834262944%_
                             _%$%tl262835262946%_
                             _%$%e262836262949%_
                             _%$%hd262837262952%_
                             _%$%tl262838262954%_
                             _%$%e262839262957%_
                             _%$%hd262840262960%_
                             _%$%tl262841262962%_
                             _%$%e262842262965%_
                             _%$%hd262843262968%_
                             _%$%tl262844262970%_
                             _%$%e262845262973%_
                             _%$%hd262846262976%_
                             _%$%tl262847262978%_
                             _%$%e262848262981%_
                             _%$%hd262849262984%_
                             _%$%tl262850262986%_
                             _%$%e262851262989%_
                             _%$%hd262852262992%_
                             _%$%tl262853262994%_
                             _%$%e262854262997%_
                             _%$%hd262855263000%_
                             _%$%tl262856263002%_
                             _%$%e262857263005%_
                             _%$%hd262858263008%_
                             _%$%tl262859263010%_)
                      (let ((_%$%g262829263013%_ _%$%hd262858263008%_)
                            (_%$%g262830263014%_ _%$%hd262855263000%_)
                            (_%$%g262831263015%_ _%$%hd262852262992%_)
                            (_%$%g262832263016%_ _%$%hd262849262984%_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _%$%g262832263016%_
                               'not))
                            (_%__kont268265268266%_
                             _%$%g262829263013%_
                             _%$%g262830263014%_
                             _%$%g262831263015%_
                             _%$%g262832263016%_)
                            (_%__kont268267268268%_
                             _%$%hd262858263008%_
                             _%$%hd262855263000%_
                             _%$%hd262837262952%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx268259268260%_))
                   (let ((_%$%e262774263260%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx268259268260%_))))
                     (let ((_%$%tl262776263265%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e262774263260%_)))
                           (_%$%hd262775263263%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e262774263260%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl262776263265%_))
                           (let ((_%$%e262777263268%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl262776263265%_))))
                             (let ((_%$%tl262779263273%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e262777263268%_)))
                                   (_%$%hd262778263271%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e262777263268%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd262778263271%_))
                                   (let ((_%$%e262780263276%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd262778263271%_))))
                                     (let ((_%$%tl262782263281%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e262780263276%_)))
                                           (_%$%hd262781263279%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e262780263276%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd262781263279%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#quote
                                                  _%$%hd262781263279%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl262782263281%_))
                                                   (let ((_%$%e262783263284%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl262782263281%_))))
                                                     (let ((_%$%tl262785263289%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e262783263284%_)))
                                                           (_%$%hd262784263287%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e262783263284%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl262785263289%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl262779263273%_))
                       (let ((_%$%e262786263292%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl262779263273%_))))
                         (let ((_%$%tl262788263297%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e262786263292%_)))
                               (_%$%hd262787263295%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e262786263292%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl262788263297%_))
                               (let ((_%$%e262789263300%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl262788263297%_))))
                                 (let ((_%$%tl262791263305%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e262789263300%_)))
                                       (_%$%hd262790263303%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e262789263300%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl262791263305%_))
                                       (_%__kont268261268262%_
                                        _%$%hd262790263303%_
                                        _%$%hd262787263295%_
                                        _%$%hd262784263287%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g262769262879%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g262769262879%_)))))
                       (let () (declare (not safe)) (_%$%g262769262879%_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl262779263273%_))
                       (let ((_%$%e262869262900%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl262779263273%_))))
                         (let ((_%$%tl262871262905%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e262869262900%_)))
                               (_%$%hd262870262903%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e262869262900%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl262871262905%_))
                               (let ((_%$%e262872262908%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl262871262905%_))))
                                 (let ((_%$%tl262874262913%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e262872262908%_)))
                                       (_%$%hd262873262911%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e262872262908%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl262874262913%_))
                                       (_%__kont268267268268%_
                                        _%$%hd262873262911%_
                                        _%$%hd262870262903%_
                                        _%$%hd262778263271%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g262769262879%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g262769262879%_)))))
                       (let () (declare (not safe)) (_%$%g262769262879%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl262779263273%_))
                                                       (let ((_%$%e262869262900%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl262779263273%_))))
                 (let ((_%$%tl262871262905%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e262869262900%_)))
                       (_%$%hd262870262903%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e262869262900%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl262871262905%_))
                       (let ((_%$%e262872262908%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl262871262905%_))))
                         (let ((_%$%tl262874262913%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e262872262908%_)))
                               (_%$%hd262873262911%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e262872262908%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl262874262913%_))
                               (_%__kont268267268268%_
                                _%$%hd262873262911%_
                                _%$%hd262870262903%_
                                _%$%hd262778263271%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g262769262879%_)))))
                       (let () (declare (not safe)) (_%$%g262769262879%_)))))
               (let () (declare (not safe)) (_%$%g262769262879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-eq?
                                                      '%#call
                                                      _%$%hd262781263279%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl262782263281%_))
                                                       (let ((_%$%e262805263073%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl262782263281%_))))
                 (let ((_%$%tl262807263078%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e262805263073%_)))
                       (_%$%hd262806263076%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e262805263073%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%hd262806263076%_))
                       (let ((_%$%e262808263081%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%hd262806263076%_))))
                         (let ((_%$%tl262810263086%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e262808263081%_)))
                               (_%$%hd262809263084%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e262808263081%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%$%hd262809263084%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-eq? '%#ref _%$%hd262809263084%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl262810263086%_))
                                       (let ((_%$%e262811263089%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl262810263086%_))))
                                         (let ((_%$%tl262813263094%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e262811263089%_)))
                                               (_%$%hd262812263092%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e262811263089%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl262813263094%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl262807263078%_))
                                                   (let ((_%$%e262814263097%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl262807263078%_))))
                                                     (let ((_%$%tl262816263102%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e262814263097%_)))
                                                           (_%$%hd262815263100%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e262814263097%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd262815263100%_))
                                                           (let ((_%$%e262817263105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd262815263100%_))))
                     (let ((_%$%tl262819263110%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e262817263105%_)))
                           (_%$%hd262818263108%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e262817263105%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%$%hd262818263108%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-eq? '%#ref _%$%hd262818263108%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl262819263110%_))
                                   (let ((_%$%e262820263113%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl262819263110%_))))
                                     (let ((_%$%tl262822263118%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e262820263113%_)))
                                           (_%$%hd262821263116%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e262820263113%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl262822263118%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl262816263102%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl262779263273%_))
                                                   (let ((_%$%e262823263121%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl262779263273%_))))
                                                     (let ((_%$%tl262825263126%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e262823263121%_)))
                                                           (_%$%hd262824263124%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e262823263121%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl262825263126%_))
                                                           (let ((_%$%e262826263129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl262825263126%_))))
                     (let ((_%$%tl262828263134%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e262826263129%_)))
                           (_%$%hd262827263132%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e262826263129%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl262828263134%_))
                           (_%__kont268263268264%_
                            _%$%hd262827263132%_
                            _%$%hd262824263124%_
                            _%$%hd262821263116%_
                            _%$%hd262812263092%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g262769262879%_)))))
                   (let () (declare (not safe)) (_%$%g262769262879%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262769262879%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl262779263273%_))
                                                   (let ((_%$%e262869262900%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl262779263273%_))))
                                                     (let ((_%$%tl262871262905%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e262869262900%_)))
                                                           (_%$%hd262870262903%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e262869262900%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl262871262905%_))
                                                           (let ((_%$%e262872262908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl262871262905%_))))
                     (let ((_%$%tl262874262913%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e262872262908%_)))
                           (_%$%hd262873262911%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e262872262908%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl262874262913%_))
                           (_%__kont268267268268%_
                            _%$%hd262873262911%_
                            _%$%hd262870262903%_
                            _%$%hd262778263271%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g262769262879%_)))))
                   (let () (declare (not safe)) (_%$%g262769262879%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262769262879%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%$%tl262816263102%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl262779263273%_))
                                                   (let ((_%$%e262854262997%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl262779263273%_))))
                                                     (let ((_%$%tl262856263002%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e262854262997%_)))
                                                           (_%$%hd262855263000%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e262854262997%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl262856263002%_))
                                                           (let ((_%$%e262857263005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl262856263002%_))))
                     (let ((_%$%tl262859263010%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e262857263005%_)))
                           (_%$%hd262858263008%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e262857263005%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl262859263010%_))
                           (_%__match268466268467%_
                            _%$%e262774263260%_
                            _%$%hd262775263263%_
                            _%$%tl262776263265%_
                            _%$%e262777263268%_
                            _%$%hd262778263271%_
                            _%$%tl262779263273%_
                            _%$%e262780263276%_
                            _%$%hd262781263279%_
                            _%$%tl262782263281%_
                            _%$%e262805263073%_
                            _%$%hd262806263076%_
                            _%$%tl262807263078%_
                            _%$%e262808263081%_
                            _%$%hd262809263084%_
                            _%$%tl262810263086%_
                            _%$%e262811263089%_
                            _%$%hd262812263092%_
                            _%$%tl262813263094%_
                            _%$%e262814263097%_
                            _%$%hd262815263100%_
                            _%$%tl262816263102%_
                            _%$%e262854262997%_
                            _%$%hd262855263000%_
                            _%$%tl262856263002%_
                            _%$%e262857263005%_
                            _%$%hd262858263008%_
                            _%$%tl262859263010%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g262769262879%_)))))
                   (let () (declare (not safe)) (_%$%g262769262879%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262769262879%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl262779263273%_))
                                                   (let ((_%$%e262869262900%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl262779263273%_))))
                                                     (let ((_%$%tl262871262905%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e262869262900%_)))
                                                           (_%$%hd262870262903%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e262869262900%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl262871262905%_))
                                                           (let ((_%$%e262872262908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl262871262905%_))))
                     (let ((_%$%tl262874262913%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e262872262908%_)))
                           (_%$%hd262873262911%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e262872262908%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl262874262913%_))
                           (_%__kont268267268268%_
                            _%$%hd262873262911%_
                            _%$%hd262870262903%_
                            _%$%hd262778263271%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g262769262879%_)))))
                   (let () (declare (not safe)) (_%$%g262769262879%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262769262879%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl262816263102%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl262779263273%_))
                                           (let ((_%$%e262854262997%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl262779263273%_))))
                                             (let ((_%$%tl262856263002%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e262854262997%_)))
                                                   (_%$%hd262855263000%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e262854262997%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl262856263002%_))
                                                   (let ((_%$%e262857263005%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl262856263002%_))))
                                                     (let ((_%$%tl262859263010%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e262857263005%_)))
                                                           (_%$%hd262858263008%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e262857263005%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl262859263010%_))
                                                           (_%__match268466268467%_
                                                            _%$%e262774263260%_
                                                            _%$%hd262775263263%_
                                                            _%$%tl262776263265%_
                                                            _%$%e262777263268%_
                                                            _%$%hd262778263271%_
                                                            _%$%tl262779263273%_
                                                            _%$%e262780263276%_
                                                            _%$%hd262781263279%_
                                                            _%$%tl262782263281%_
                                                            _%$%e262805263073%_
                                                            _%$%hd262806263076%_
                                                            _%$%tl262807263078%_
                                                            _%$%e262808263081%_
                                                            _%$%hd262809263084%_
                                                            _%$%tl262810263086%_
                                                            _%$%e262811263089%_
                                                            _%$%hd262812263092%_
                                                            _%$%tl262813263094%_
                                                            _%$%e262814263097%_
                                                            _%$%hd262815263100%_
                                                            _%$%tl262816263102%_
                                                            _%$%e262854262997%_
                                                            _%$%hd262855263000%_
                                                            _%$%tl262856263002%_
                                                            _%$%e262857263005%_
                                                            _%$%hd262858263008%_
                                                            _%$%tl262859263010%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g262769262879%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262769262879%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262769262879%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl262779263273%_))
                                           (let ((_%$%e262869262900%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl262779263273%_))))
                                             (let ((_%$%tl262871262905%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e262869262900%_)))
                                                   (_%$%hd262870262903%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e262869262900%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl262871262905%_))
                                                   (let ((_%$%e262872262908%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl262871262905%_))))
                                                     (let ((_%$%tl262874262913%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e262872262908%_)))
                                                           (_%$%hd262873262911%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e262872262908%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl262874262913%_))
                                                           (_%__kont268267268268%_
                                                            _%$%hd262873262911%_
                                                            _%$%hd262870262903%_
                                                            _%$%hd262778263271%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g262769262879%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262769262879%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262769262879%_)))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl262816263102%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl262779263273%_))
                                       (let ((_%$%e262854262997%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl262779263273%_))))
                                         (let ((_%$%tl262856263002%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e262854262997%_)))
                                               (_%$%hd262855263000%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e262854262997%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl262856263002%_))
                                               (let ((_%$%e262857263005%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl262856263002%_))))
                                                 (let ((_%$%tl262859263010%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e262857263005%_)))
                                                       (_%$%hd262858263008%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e262857263005%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl262859263010%_))
                                                       (_%__match268466268467%_
                                                        _%$%e262774263260%_
                                                        _%$%hd262775263263%_
                                                        _%$%tl262776263265%_
                                                        _%$%e262777263268%_
                                                        _%$%hd262778263271%_
                                                        _%$%tl262779263273%_
                                                        _%$%e262780263276%_
                                                        _%$%hd262781263279%_
                                                        _%$%tl262782263281%_
                                                        _%$%e262805263073%_
                                                        _%$%hd262806263076%_
                                                        _%$%tl262807263078%_
                                                        _%$%e262808263081%_
                                                        _%$%hd262809263084%_
                                                        _%$%tl262810263086%_
                                                        _%$%e262811263089%_
                                                        _%$%hd262812263092%_
                                                        _%$%tl262813263094%_
                                                        _%$%e262814263097%_
                                                        _%$%hd262815263100%_
                                                        _%$%tl262816263102%_
                                                        _%$%e262854262997%_
                                                        _%$%hd262855263000%_
                                                        _%$%tl262856263002%_
                                                        _%$%e262857263005%_
                                                        _%$%hd262858263008%_
                                                        _%$%tl262859263010%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g262769262879%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g262769262879%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g262769262879%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl262779263273%_))
                                       (let ((_%$%e262869262900%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl262779263273%_))))
                                         (let ((_%$%tl262871262905%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e262869262900%_)))
                                               (_%$%hd262870262903%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e262869262900%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl262871262905%_))
                                               (let ((_%$%e262872262908%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl262871262905%_))))
                                                 (let ((_%$%tl262874262913%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e262872262908%_)))
                                                       (_%$%hd262873262911%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e262872262908%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl262874262913%_))
                                                       (_%__kont268267268268%_
                                                        _%$%hd262873262911%_
                                                        _%$%hd262870262903%_
                                                        _%$%hd262778263271%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g262769262879%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g262769262879%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g262769262879%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl262816263102%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl262779263273%_))
                                   (let ((_%$%e262854262997%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl262779263273%_))))
                                     (let ((_%$%tl262856263002%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e262854262997%_)))
                                           (_%$%hd262855263000%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e262854262997%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl262856263002%_))
                                           (let ((_%$%e262857263005%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl262856263002%_))))
                                             (let ((_%$%tl262859263010%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e262857263005%_)))
                                                   (_%$%hd262858263008%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e262857263005%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl262859263010%_))
                                                   (_%__match268466268467%_
                                                    _%$%e262774263260%_
                                                    _%$%hd262775263263%_
                                                    _%$%tl262776263265%_
                                                    _%$%e262777263268%_
                                                    _%$%hd262778263271%_
                                                    _%$%tl262779263273%_
                                                    _%$%e262780263276%_
                                                    _%$%hd262781263279%_
                                                    _%$%tl262782263281%_
                                                    _%$%e262805263073%_
                                                    _%$%hd262806263076%_
                                                    _%$%tl262807263078%_
                                                    _%$%e262808263081%_
                                                    _%$%hd262809263084%_
                                                    _%$%tl262810263086%_
                                                    _%$%e262811263089%_
                                                    _%$%hd262812263092%_
                                                    _%$%tl262813263094%_
                                                    _%$%e262814263097%_
                                                    _%$%hd262815263100%_
                                                    _%$%tl262816263102%_
                                                    _%$%e262854262997%_
                                                    _%$%hd262855263000%_
                                                    _%$%tl262856263002%_
                                                    _%$%e262857263005%_
                                                    _%$%hd262858263008%_
                                                    _%$%tl262859263010%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262769262879%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262769262879%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262769262879%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl262779263273%_))
                                   (let ((_%$%e262869262900%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl262779263273%_))))
                                     (let ((_%$%tl262871262905%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e262869262900%_)))
                                           (_%$%hd262870262903%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e262869262900%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl262871262905%_))
                                           (let ((_%$%e262872262908%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl262871262905%_))))
                                             (let ((_%$%tl262874262913%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e262872262908%_)))
                                                   (_%$%hd262873262911%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e262872262908%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl262874262913%_))
                                                   (_%__kont268267268268%_
                                                    _%$%hd262873262911%_
                                                    _%$%hd262870262903%_
                                                    _%$%hd262778263271%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262769262879%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262769262879%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262769262879%_)))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl262816263102%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl262779263273%_))
                           (let ((_%$%e262854262997%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl262779263273%_))))
                             (let ((_%$%tl262856263002%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e262854262997%_)))
                                   (_%$%hd262855263000%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e262854262997%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl262856263002%_))
                                   (let ((_%$%e262857263005%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl262856263002%_))))
                                     (let ((_%$%tl262859263010%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e262857263005%_)))
                                           (_%$%hd262858263008%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e262857263005%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl262859263010%_))
                                           (_%__match268466268467%_
                                            _%$%e262774263260%_
                                            _%$%hd262775263263%_
                                            _%$%tl262776263265%_
                                            _%$%e262777263268%_
                                            _%$%hd262778263271%_
                                            _%$%tl262779263273%_
                                            _%$%e262780263276%_
                                            _%$%hd262781263279%_
                                            _%$%tl262782263281%_
                                            _%$%e262805263073%_
                                            _%$%hd262806263076%_
                                            _%$%tl262807263078%_
                                            _%$%e262808263081%_
                                            _%$%hd262809263084%_
                                            _%$%tl262810263086%_
                                            _%$%e262811263089%_
                                            _%$%hd262812263092%_
                                            _%$%tl262813263094%_
                                            _%$%e262814263097%_
                                            _%$%hd262815263100%_
                                            _%$%tl262816263102%_
                                            _%$%e262854262997%_
                                            _%$%hd262855263000%_
                                            _%$%tl262856263002%_
                                            _%$%e262857263005%_
                                            _%$%hd262858263008%_
                                            _%$%tl262859263010%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262769262879%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262769262879%_)))))
                           (let () (declare (not safe)) (_%$%g262769262879%_)))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl262779263273%_))
                           (let ((_%$%e262869262900%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl262779263273%_))))
                             (let ((_%$%tl262871262905%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e262869262900%_)))
                                   (_%$%hd262870262903%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e262869262900%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl262871262905%_))
                                   (let ((_%$%e262872262908%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl262871262905%_))))
                                     (let ((_%$%tl262874262913%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e262872262908%_)))
                                           (_%$%hd262873262911%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e262872262908%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl262874262913%_))
                                           (_%__kont268267268268%_
                                            _%$%hd262873262911%_
                                            _%$%hd262870262903%_
                                            _%$%hd262778263271%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262769262879%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262769262879%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g262769262879%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl262779263273%_))
                                                       (let ((_%$%e262869262900%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl262779263273%_))))
                 (let ((_%$%tl262871262905%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e262869262900%_)))
                       (_%$%hd262870262903%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e262869262900%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl262871262905%_))
                       (let ((_%$%e262872262908%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl262871262905%_))))
                         (let ((_%$%tl262874262913%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e262872262908%_)))
                               (_%$%hd262873262911%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e262872262908%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl262874262913%_))
                               (_%__kont268267268268%_
                                _%$%hd262873262911%_
                                _%$%hd262870262903%_
                                _%$%hd262778263271%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g262769262879%_)))))
                       (let () (declare (not safe)) (_%$%g262769262879%_)))))
               (let () (declare (not safe)) (_%$%g262769262879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl262779263273%_))
                                                   (let ((_%$%e262869262900%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl262779263273%_))))
                                                     (let ((_%$%tl262871262905%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e262869262900%_)))
                                                           (_%$%hd262870262903%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e262869262900%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl262871262905%_))
                                                           (let ((_%$%e262872262908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl262871262905%_))))
                     (let ((_%$%tl262874262913%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e262872262908%_)))
                           (_%$%hd262873262911%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e262872262908%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl262874262913%_))
                           (_%__kont268267268268%_
                            _%$%hd262873262911%_
                            _%$%hd262870262903%_
                            _%$%hd262778263271%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g262769262879%_)))))
                   (let () (declare (not safe)) (_%$%g262769262879%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262769262879%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl262779263273%_))
                                           (let ((_%$%e262869262900%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl262779263273%_))))
                                             (let ((_%$%tl262871262905%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e262869262900%_)))
                                                   (_%$%hd262870262903%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e262869262900%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl262871262905%_))
                                                   (let ((_%$%e262872262908%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl262871262905%_))))
                                                     (let ((_%$%tl262874262913%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e262872262908%_)))
                                                           (_%$%hd262873262911%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e262872262908%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl262874262913%_))
                                                           (_%__kont268267268268%_
                                                            _%$%hd262873262911%_
                                                            _%$%hd262870262903%_
                                                            _%$%hd262778263271%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g262769262879%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262769262879%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262769262879%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl262779263273%_))
                                       (let ((_%$%e262869262900%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl262779263273%_))))
                                         (let ((_%$%tl262871262905%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e262869262900%_)))
                                               (_%$%hd262870262903%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e262869262900%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl262871262905%_))
                                               (let ((_%$%e262872262908%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl262871262905%_))))
                                                 (let ((_%$%tl262874262913%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e262872262908%_)))
                                                       (_%$%hd262873262911%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e262872262908%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl262874262913%_))
                                                       (_%__kont268267268268%_
                                                        _%$%hd262873262911%_
                                                        _%$%hd262870262903%_
                                                        _%$%hd262778263271%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g262769262879%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g262769262879%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g262769262879%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl262779263273%_))
                                   (let ((_%$%e262869262900%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl262779263273%_))))
                                     (let ((_%$%tl262871262905%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e262869262900%_)))
                                           (_%$%hd262870262903%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e262869262900%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl262871262905%_))
                                           (let ((_%$%e262872262908%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl262871262905%_))))
                                             (let ((_%$%tl262874262913%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e262872262908%_)))
                                                   (_%$%hd262873262911%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e262872262908%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl262874262913%_))
                                                   (_%__kont268267268268%_
                                                    _%$%hd262873262911%_
                                                    _%$%hd262870262903%_
                                                    _%$%hd262778263271%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g262769262879%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262769262879%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262769262879%_))))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl262779263273%_))
                           (let ((_%$%e262869262900%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl262779263273%_))))
                             (let ((_%$%tl262871262905%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e262869262900%_)))
                                   (_%$%hd262870262903%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e262869262900%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl262871262905%_))
                                   (let ((_%$%e262872262908%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl262871262905%_))))
                                     (let ((_%$%tl262874262913%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e262872262908%_)))
                                           (_%$%hd262873262911%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e262872262908%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl262874262913%_))
                                           (_%__kont268267268268%_
                                            _%$%hd262873262911%_
                                            _%$%hd262870262903%_
                                            _%$%hd262778263271%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g262769262879%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262769262879%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g262769262879%_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%$%tl262779263273%_))
                   (let ((_%$%e262869262900%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl262779263273%_))))
                     (let ((_%$%tl262871262905%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e262869262900%_)))
                           (_%$%hd262870262903%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e262869262900%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl262871262905%_))
                           (let ((_%$%e262872262908%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl262871262905%_))))
                             (let ((_%$%tl262874262913%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e262872262908%_)))
                                   (_%$%hd262873262911%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e262872262908%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl262874262913%_))
                                   (_%__kont268267268268%_
                                    _%$%hd262873262911%_
                                    _%$%hd262870262903%_
                                    _%$%hd262778263271%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g262769262879%_)))))
                           (let ()
                             (declare (not safe))
                             (_%$%g262769262879%_)))))
                   (let () (declare (not safe)) (_%$%g262769262879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl262779263273%_))
                                                       (let ((_%$%e262869262900%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl262779263273%_))))
                 (let ((_%$%tl262871262905%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e262869262900%_)))
                       (_%$%hd262870262903%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e262869262900%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl262871262905%_))
                       (let ((_%$%e262872262908%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl262871262905%_))))
                         (let ((_%$%tl262874262913%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e262872262908%_)))
                               (_%$%hd262873262911%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e262872262908%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl262874262913%_))
                               (_%__kont268267268268%_
                                _%$%hd262873262911%_
                                _%$%hd262870262903%_
                                _%$%hd262778263271%_)
                               (let ()
                                 (declare (not safe))
                                 (_%$%g262769262879%_)))))
                       (let () (declare (not safe)) (_%$%g262769262879%_)))))
               (let () (declare (not safe)) (_%$%g262769262879%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl262779263273%_))
                                               (let ((_%$%e262869262900%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl262779263273%_))))
                                                 (let ((_%$%tl262871262905%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e262869262900%_)))
                                                       (_%$%hd262870262903%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e262869262900%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl262871262905%_))
                                                       (let ((_%$%e262872262908%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl262871262905%_))))
                 (let ((_%$%tl262874262913%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e262872262908%_)))
                       (_%$%hd262873262911%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e262872262908%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl262874262913%_))
                       (_%__kont268267268268%_
                        _%$%hd262873262911%_
                        _%$%hd262870262903%_
                        _%$%hd262778263271%_)
                       (let () (declare (not safe)) (_%$%g262769262879%_)))))
               (let () (declare (not safe)) (_%$%g262769262879%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g262769262879%_))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%tl262779263273%_))
                                       (let ((_%$%e262869262900%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%tl262779263273%_))))
                                         (let ((_%$%tl262871262905%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e262869262900%_)))
                                               (_%$%hd262870262903%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e262869262900%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl262871262905%_))
                                               (let ((_%$%e262872262908%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl262871262905%_))))
                                                 (let ((_%$%tl262874262913%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e262872262908%_)))
                                                       (_%$%hd262873262911%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e262872262908%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl262874262913%_))
                                                       (_%__kont268267268268%_
                                                        _%$%hd262873262911%_
                                                        _%$%hd262870262903%_
                                                        _%$%hd262778263271%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g262769262879%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g262769262879%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g262769262879%_))))))
                           (let ()
                             (declare (not safe))
                             (_%$%g262769262879%_)))))
                   (let () (declare (not safe)) (_%$%g262769262879%_)))))))))
    (define gxc#check-contract-violation!
      (lambda (_%stx262631%_ _%expr262632%_)
        (let* ((_%__stx268495268496%_ _%expr262632%_)
               (_%$%g262635262665%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268495268496%_)))))
          (let ((_%__kont268497268498%_
                 (lambda (_%$%g262637262733%_
                          _%$%g262638262734%_
                          _%$%g262639262735%_)
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"contract violation"
                      _%stx262631%_
                      _%$%g262639262735%_
                      _%$%g262638262734%_
                      _%$%g262637262733%_))))
                (_%__kont268499268500%_ (lambda () _%expr262632%_)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx268495268496%_))
                (let ((_%$%e262640262677%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx268495268496%_))))
                  (let ((_%$%tl262642262682%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e262640262677%_)))
                        (_%$%hd262641262680%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e262640262677%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd262641262680%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq?
                               '%#begin-annotation
                               _%$%hd262641262680%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl262642262682%_))
                                (let ((_%$%e262643262685%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl262642262682%_))))
                                  (let ((_%$%tl262645262690%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e262643262685%_)))
                                        (_%$%hd262644262688%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e262643262685%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd262644262688%_))
                                        (let ((_%$%e262646262693%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd262644262688%_))))
                                          (let ((_%$%tl262648262698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e262646262693%_)))
                                                (_%$%hd262647262696%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e262646262693%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%$%hd262647262696%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '@contract-violation
                                                       _%$%hd262647262696%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl262648262698%_))
                                                        (let ((_%$%e262649262701%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%tl262648262698%_))))
                  (let ((_%$%tl262651262706%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e262649262701%_)))
                        (_%$%hd262650262704%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e262649262701%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl262651262706%_))
                        (let ((_%$%e262652262709%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl262651262706%_))))
                          (let ((_%$%tl262654262714%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e262652262709%_)))
                                (_%$%hd262653262712%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e262652262709%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl262654262714%_))
                                (let ((_%$%e262655262717%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl262654262714%_))))
                                  (let ((_%$%tl262657262722%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e262655262717%_)))
                                        (_%$%hd262656262720%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e262655262717%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl262657262722%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl262645262690%_))
                                            (let ((_%$%e262658262725%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl262645262690%_))))
                                              (let ((_%$%tl262660262730%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e262658262725%_)))
                                                    (_%$%hd262659262728%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e262658262725%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl262660262730%_))
                                                    (_%__kont268497268498%_
                                                     _%$%hd262656262720%_
                                                     _%$%hd262653262712%_
                                                     _%$%hd262650262704%_)
                                                    (_%__kont268499268500%_))))
                                            (_%__kont268499268500%_))
                                        (_%__kont268499268500%_))))
                                (_%__kont268499268500%_))))
                        (_%__kont268499268500%_))))
                (_%__kont268499268500%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont268499268500%_))
                                                (_%__kont268499268500%_))))
                                        (_%__kont268499268500%_))))
                                (_%__kont268499268500%_))
                            (_%__kont268499268500%_))
                        (_%__kont268499268500%_))))
                (_%__kont268499268500%_))))))))
