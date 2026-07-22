(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g147261_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |[:0:]#defpred|
      (lambda (_%stx146744%_)
        (let* ((_%$%g146747146785%_
                (lambda (_%$%g146748146781%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g146748146781%_)))
               (_%$%g146746146952%_
                (lambda (_%$%g146748146789%_)
                  (if (gx#stx-pair? _%$%g146748146789%_)
                      (let ((_%$%e146753146792%_
                             (gx#syntax-e _%$%g146748146789%_)))
                        (let ((_%$%hd146754146796%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e146753146792%_)))
                              (_%$%tl146755146799%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e146753146792%_))))
                          (if (gx#stx-pair? _%$%tl146755146799%_)
                              (let ((_%$%e146756146802%_
                                     (gx#syntax-e _%$%tl146755146799%_)))
                                (let ((_%$%hd146757146806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e146756146802%_)))
                                      (_%$%tl146758146809%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e146756146802%_))))
                                  (if (gx#stx-pair? _%$%hd146757146806%_)
                                      (let ((_%$%e146759146812%_
                                             (gx#syntax-e
                                              _%$%hd146757146806%_)))
                                        (let ((_%$%hd146760146816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e146759146812%_)))
                                              (_%$%tl146761146819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e146759146812%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl146761146819%_)
                                              (let ((_%$%e146762146822%_
                                                     (gx#syntax-e
                                                      _%$%tl146761146819%_)))
                                                (let ((_%$%hd146763146826%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e146762146822%_)))
                                                      (_%$%tl146764146829%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e146762146822%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl146764146829%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl146758146809%_)
                                                          (let ((_%$%e146765146832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl146758146809%_)))
                    (let ((_%$%hd146766146836%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e146765146832%_)))
                          (_%$%tl146767146839%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e146765146832%_))))
                      (if (gx#identifier? _%$%hd146766146836%_)
                          (if (gx#free-identifier=?
                               |[1]#_g147261_|
                               _%$%hd146766146836%_)
                              (if (gx#stx-pair? _%$%tl146767146839%_)
                                  (let ((_%$%e146768146842%_
                                         (gx#syntax-e _%$%tl146767146839%_)))
                                    (let ((_%$%hd146769146846%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e146768146842%_)))
                                          (_%$%tl146770146849%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e146768146842%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl146770146849%_)
                                          (let ((_g147262_
                                                 (gx#syntax-split-splice
                                                  _%$%tl146770146849%_
                                                  '0)))
                                            (begin
                                              (let ((_g147263_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g147262_)
                                                           (##values-length
                                                            _g147262_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g147263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g147263_)))
                                              (let ((_%$%target146771146852%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g147262_
                                                        0)))
                                                    (_%$%tl146773146855%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g147262_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl146773146855%_)
                                                    (letrec ((_%$%loop146774146858%_
                                                              (lambda (_%$%hd146772146862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body146778146865%_)
                        (if (gx#stx-pair? _%$%hd146772146862%_)
                            (let ((_%$%e146775146867%_
                                   (gx#syntax-e _%$%hd146772146862%_)))
                              (let ((_%$%lp-hd146776146871%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e146775146867%_)))
                                    (_%$%lp-tl146777146874%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e146775146867%_))))
                                (_%$%loop146774146858%_
                                 _%$%lp-tl146777146874%_
                                 (cons _%$%lp-hd146776146871%_
                                       _%$%body146778146865%_))))
                            (let* ((_%$%body146779146877%_
                                    (reverse _%$%body146778146865%_))
                                   (_%$%g146913146921%_
                                    (lambda (_%$%g146914146917%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g146914146917%_)))
                                   (_%$%g146912146948%_
                                    (lambda (_%$%g146914146925%_)
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _%$%hd146760146816%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@predicate)
                                  (cons _%$%g146914146925%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'lambda)
                                        (cons (cons _%$%hd146763146826%_ '())
                                              (let ((__tmp147264
                                                     (lambda (_%$%g146939146942%_
                                                              _%$%g146940146945%_)
                                                       (cons _%$%g146939146942%_
                                                             _%$%g146940146945%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp147264
                                                 '()
                                                 _%$%body146779146877%_))))
                                  '())))
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g146912146948%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                  _%stx146744%_
                                  _%$%hd146769146846%_))))))))
              (_%$%loop146774146858%_ _%$%target146771146852%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g146747146785%_
                                                     _%$%g146748146789%_)))))
                                          (_%$%g146747146785%_
                                           _%$%g146748146789%_))))
                                  (_%$%g146747146785%_ _%$%g146748146789%_))
                              (_%$%g146747146785%_ _%$%g146748146789%_))
                          (_%$%g146747146785%_ _%$%g146748146789%_))))
                  (_%$%g146747146785%_ _%$%g146748146789%_))
              (_%$%g146747146785%_ _%$%g146748146789%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g146747146785%_
                                               _%$%g146748146789%_))))
                                      (_%$%g146747146785%_
                                       _%$%g146748146789%_))))
                              (_%$%g146747146785%_ _%$%g146748146789%_))))
                      (_%$%g146747146785%_ _%$%g146748146789%_)))))
          (_%$%g146746146952%_ _%stx146744%_))))
    (define |[:0:]#subtype-property-vector|
      (lambda (_%$stx146957%_)
        (let* ((_%$%g146961146981%_
                (lambda (_%$%g146962146977%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g146962146977%_)))
               (_%$%g146960147050%_
                (lambda (_%$%g146962146985%_)
                  (if (gx#stx-pair? _%$%g146962146985%_)
                      (let ((_%$%e146964146988%_
                             (gx#syntax-e _%$%g146962146985%_)))
                        (let ((_%$%hd146965146992%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e146964146988%_)))
                              (_%$%tl146966146995%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e146964146988%_))))
                          (if (gx#stx-pair/null? _%$%tl146966146995%_)
                              (let ((_g147265_
                                     (gx#syntax-split-splice
                                      _%$%tl146966146995%_
                                      '0)))
                                (begin
                                  (let ((_g147266_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g147265_)
                                               (##values-length _g147265_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g147266_ 2)))
                                        (error "Context expects 2 values"
                                               _g147266_)))
                                  (let ((_%$%target146967146998%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g147265_ 0)))
                                        (_%$%tl146969147001%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g147265_ 1))))
                                    (if (gx#stx-null? _%$%tl146969147001%_)
                                        (letrec ((_%$%loop146970147004%_
                                                  (lambda (_%$%hd146968147008%_
                                                           _%$%t146974147011%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd146968147008%_)
                                                        (let ((_%$%e146971147013%_
                                                               (gx#syntax-e
                                                                _%$%hd146968147008%_)))
                                                          (let ((_%$%lp-hd146972147017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e146971147013%_)))
                        (_%$%lp-tl146973147020%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e146971147013%_))))
                    (_%$%loop146970147004%_
                     _%$%lp-tl146973147020%_
                     (cons _%$%lp-hd146972147017%_ _%$%t146974147011%_))))
                (let ((_%$%t146975147023%_ (reverse _%$%t146974147011%_)))
                  (cons (gx#datum->syntax '#f 'let)
                        (cons (cons (gx#datum->syntax '#f 'vec)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-vector)
                                                (cons '32 (cons '#f '())))
                                          '()))
                              (let ((__tmp147268
                                     (lambda (_%$%g147041147044%_
                                              _%$%g147042147047%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'vec)
                                                         (cons _%$%g147041147044%_
                                                               (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$%g147042147047%_)))
                                    (__tmp147267
                                     (cons (gx#datum->syntax '#f 'vec) '())))
                                (declare (not safe))
                                (foldr__0
                                 __tmp147268
                                 __tmp147267
                                 _%$%t146975147023%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop146970147004%_
                                           _%$%target146967146998%_
                                           '()))
                                        (_%$%g146961146981%_
                                         _%$%g146962146985%_)))))
                              (_%$%g146961146981%_ _%$%g146962146985%_))))
                      (_%$%g146961146981%_ _%$%g146962146985%_)))))
          (_%$%g146960147050%_ _%$stx146957%_))))))
