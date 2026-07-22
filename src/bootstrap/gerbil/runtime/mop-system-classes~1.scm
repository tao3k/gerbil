(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g147234_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |[:0:]#defpred|
      (lambda (_%stx146717%_)
        (let* ((_%$%g146720146758%_
                (lambda (_%$%g146721146754%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g146721146754%_)))
               (_%$%g146719146925%_
                (lambda (_%$%g146721146762%_)
                  (if (gx#stx-pair? _%$%g146721146762%_)
                      (let ((_%$%e146726146765%_
                             (gx#syntax-e _%$%g146721146762%_)))
                        (let ((_%$%hd146727146769%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e146726146765%_)))
                              (_%$%tl146728146772%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e146726146765%_))))
                          (if (gx#stx-pair? _%$%tl146728146772%_)
                              (let ((_%$%e146729146775%_
                                     (gx#syntax-e _%$%tl146728146772%_)))
                                (let ((_%$%hd146730146779%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e146729146775%_)))
                                      (_%$%tl146731146782%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e146729146775%_))))
                                  (if (gx#stx-pair? _%$%hd146730146779%_)
                                      (let ((_%$%e146732146785%_
                                             (gx#syntax-e
                                              _%$%hd146730146779%_)))
                                        (let ((_%$%hd146733146789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e146732146785%_)))
                                              (_%$%tl146734146792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e146732146785%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl146734146792%_)
                                              (let ((_%$%e146735146795%_
                                                     (gx#syntax-e
                                                      _%$%tl146734146792%_)))
                                                (let ((_%$%hd146736146799%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e146735146795%_)))
                                                      (_%$%tl146737146802%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e146735146795%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl146737146802%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl146731146782%_)
                                                          (let ((_%$%e146738146805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl146731146782%_)))
                    (let ((_%$%hd146739146809%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e146738146805%_)))
                          (_%$%tl146740146812%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e146738146805%_))))
                      (if (gx#identifier? _%$%hd146739146809%_)
                          (if (gx#free-identifier=?
                               |[1]#_g147234_|
                               _%$%hd146739146809%_)
                              (if (gx#stx-pair? _%$%tl146740146812%_)
                                  (let ((_%$%e146741146815%_
                                         (gx#syntax-e _%$%tl146740146812%_)))
                                    (let ((_%$%hd146742146819%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e146741146815%_)))
                                          (_%$%tl146743146822%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e146741146815%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl146743146822%_)
                                          (let ((_g147235_
                                                 (gx#syntax-split-splice
                                                  _%$%tl146743146822%_
                                                  '0)))
                                            (begin
                                              (let ((_g147236_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g147235_)
                                                           (##values-length
                                                            _g147235_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g147236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g147236_)))
                                              (let ((_%$%target146744146825%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g147235_
                                                        0)))
                                                    (_%$%tl146746146828%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g147235_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl146746146828%_)
                                                    (letrec ((_%$%loop146747146831%_
                                                              (lambda (_%$%hd146745146835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body146751146838%_)
                        (if (gx#stx-pair? _%$%hd146745146835%_)
                            (let ((_%$%e146748146840%_
                                   (gx#syntax-e _%$%hd146745146835%_)))
                              (let ((_%$%lp-hd146749146844%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e146748146840%_)))
                                    (_%$%lp-tl146750146847%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e146748146840%_))))
                                (_%$%loop146747146831%_
                                 _%$%lp-tl146750146847%_
                                 (cons _%$%lp-hd146749146844%_
                                       _%$%body146751146838%_))))
                            (let* ((_%$%body146752146850%_
                                    (reverse _%$%body146751146838%_))
                                   (_%$%g146886146894%_
                                    (lambda (_%$%g146887146890%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g146887146890%_)))
                                   (_%$%g146885146921%_
                                    (lambda (_%$%g146887146898%_)
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _%$%hd146733146789%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@predicate)
                                  (cons _%$%g146887146898%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'lambda)
                                        (cons (cons _%$%hd146736146799%_ '())
                                              (let ((__tmp147237
                                                     (lambda (_%$%g146912146915%_
                                                              _%$%g146913146918%_)
                                                       (cons _%$%g146912146915%_
                                                             _%$%g146913146918%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp147237
                                                 '()
                                                 _%$%body146752146850%_))))
                                  '())))
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g146885146921%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                  _%stx146717%_
                                  _%$%hd146742146819%_))))))))
              (_%$%loop146747146831%_ _%$%target146744146825%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g146720146758%_
                                                     _%$%g146721146762%_)))))
                                          (_%$%g146720146758%_
                                           _%$%g146721146762%_))))
                                  (_%$%g146720146758%_ _%$%g146721146762%_))
                              (_%$%g146720146758%_ _%$%g146721146762%_))
                          (_%$%g146720146758%_ _%$%g146721146762%_))))
                  (_%$%g146720146758%_ _%$%g146721146762%_))
              (_%$%g146720146758%_ _%$%g146721146762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g146720146758%_
                                               _%$%g146721146762%_))))
                                      (_%$%g146720146758%_
                                       _%$%g146721146762%_))))
                              (_%$%g146720146758%_ _%$%g146721146762%_))))
                      (_%$%g146720146758%_ _%$%g146721146762%_)))))
          (_%$%g146719146925%_ _%stx146717%_))))
    (define |[:0:]#subtype-property-vector|
      (lambda (_%$stx146930%_)
        (let* ((_%$%g146934146954%_
                (lambda (_%$%g146935146950%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g146935146950%_)))
               (_%$%g146933147023%_
                (lambda (_%$%g146935146958%_)
                  (if (gx#stx-pair? _%$%g146935146958%_)
                      (let ((_%$%e146937146961%_
                             (gx#syntax-e _%$%g146935146958%_)))
                        (let ((_%$%hd146938146965%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e146937146961%_)))
                              (_%$%tl146939146968%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e146937146961%_))))
                          (if (gx#stx-pair/null? _%$%tl146939146968%_)
                              (let ((_g147238_
                                     (gx#syntax-split-splice
                                      _%$%tl146939146968%_
                                      '0)))
                                (begin
                                  (let ((_g147239_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g147238_)
                                               (##values-length _g147238_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g147239_ 2)))
                                        (error "Context expects 2 values"
                                               _g147239_)))
                                  (let ((_%$%target146940146971%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g147238_ 0)))
                                        (_%$%tl146942146974%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g147238_ 1))))
                                    (if (gx#stx-null? _%$%tl146942146974%_)
                                        (letrec ((_%$%loop146943146977%_
                                                  (lambda (_%$%hd146941146981%_
                                                           _%$%t146947146984%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd146941146981%_)
                                                        (let ((_%$%e146944146986%_
                                                               (gx#syntax-e
                                                                _%$%hd146941146981%_)))
                                                          (let ((_%$%lp-hd146945146990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e146944146986%_)))
                        (_%$%lp-tl146946146993%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e146944146986%_))))
                    (_%$%loop146943146977%_
                     _%$%lp-tl146946146993%_
                     (cons _%$%lp-hd146945146990%_ _%$%t146947146984%_))))
                (let ((_%$%t146948146996%_ (reverse _%$%t146947146984%_)))
                  (cons (gx#datum->syntax '#f 'let)
                        (cons (cons (gx#datum->syntax '#f 'vec)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-vector)
                                                (cons '32 (cons '#f '())))
                                          '()))
                              (let ((__tmp147241
                                     (lambda (_%$%g147014147017%_
                                              _%$%g147015147020%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'vec)
                                                         (cons _%$%g147014147017%_
                                                               (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$%g147015147020%_)))
                                    (__tmp147240
                                     (cons (gx#datum->syntax '#f 'vec) '())))
                                (declare (not safe))
                                (foldr__0
                                 __tmp147241
                                 __tmp147240
                                 _%$%t146948146996%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop146943146977%_
                                           _%$%target146940146971%_
                                           '()))
                                        (_%$%g146934146954%_
                                         _%$%g146935146958%_)))))
                              (_%$%g146934146954%_ _%$%g146935146958%_))))
                      (_%$%g146934146954%_ _%$%g146935146958%_)))))
          (_%$%g146933147023%_ _%$stx146930%_))))))
