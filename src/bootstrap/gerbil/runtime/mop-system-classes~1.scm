(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g149271_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |[:0:]#defpred|
      (lambda (_%stx148754%_)
        (let* ((_%$%g148757148795%_
                (lambda (_%$%g148758148791%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g148758148791%_)))
               (_%$%g148756148962%_
                (lambda (_%$%g148758148799%_)
                  (if (gx#stx-pair? _%$%g148758148799%_)
                      (let ((_%$%e148763148802%_
                             (gx#syntax-e _%$%g148758148799%_)))
                        (let ((_%$%hd148764148806%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e148763148802%_)))
                              (_%$%tl148765148809%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e148763148802%_))))
                          (if (gx#stx-pair? _%$%tl148765148809%_)
                              (let ((_%$%e148766148812%_
                                     (gx#syntax-e _%$%tl148765148809%_)))
                                (let ((_%$%hd148767148816%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e148766148812%_)))
                                      (_%$%tl148768148819%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e148766148812%_))))
                                  (if (gx#stx-pair? _%$%hd148767148816%_)
                                      (let ((_%$%e148769148822%_
                                             (gx#syntax-e
                                              _%$%hd148767148816%_)))
                                        (let ((_%$%hd148770148826%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e148769148822%_)))
                                              (_%$%tl148771148829%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e148769148822%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl148771148829%_)
                                              (let ((_%$%e148772148832%_
                                                     (gx#syntax-e
                                                      _%$%tl148771148829%_)))
                                                (let ((_%$%hd148773148836%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e148772148832%_)))
                                                      (_%$%tl148774148839%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e148772148832%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl148774148839%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl148768148819%_)
                                                          (let ((_%$%e148775148842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl148768148819%_)))
                    (let ((_%$%hd148776148846%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e148775148842%_)))
                          (_%$%tl148777148849%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e148775148842%_))))
                      (if (gx#identifier? _%$%hd148776148846%_)
                          (if (gx#free-identifier=?
                               |[1]#_g149271_|
                               _%$%hd148776148846%_)
                              (if (gx#stx-pair? _%$%tl148777148849%_)
                                  (let ((_%$%e148778148852%_
                                         (gx#syntax-e _%$%tl148777148849%_)))
                                    (let ((_%$%hd148779148856%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e148778148852%_)))
                                          (_%$%tl148780148859%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e148778148852%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl148780148859%_)
                                          (let ((_g149272_
                                                 (gx#syntax-split-splice
                                                  _%$%tl148780148859%_
                                                  '0)))
                                            (begin
                                              (let ((_g149273_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g149272_)
                                                           (##values-length
                                                            _g149272_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g149273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g149273_)))
                                              (let ((_%$%target148781148862%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g149272_
                                                        0)))
                                                    (_%$%tl148783148865%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g149272_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl148783148865%_)
                                                    (letrec ((_%$%loop148784148868%_
                                                              (lambda (_%$%hd148782148872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body148788148875%_)
                        (if (gx#stx-pair? _%$%hd148782148872%_)
                            (let ((_%$%e148785148877%_
                                   (gx#syntax-e _%$%hd148782148872%_)))
                              (let ((_%$%lp-hd148786148881%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e148785148877%_)))
                                    (_%$%lp-tl148787148884%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e148785148877%_))))
                                (_%$%loop148784148868%_
                                 _%$%lp-tl148787148884%_
                                 (cons _%$%lp-hd148786148881%_
                                       _%$%body148788148875%_))))
                            (let* ((_%$%body148789148887%_
                                    (reverse _%$%body148788148875%_))
                                   (_%$%g148923148931%_
                                    (lambda (_%$%g148924148927%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g148924148927%_)))
                                   (_%$%g148922148958%_
                                    (lambda (_%$%g148924148935%_)
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _%$%hd148770148826%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@predicate)
                                  (cons _%$%g148924148935%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'lambda)
                                        (cons (cons _%$%hd148773148836%_ '())
                                              (let ((__tmp149274
                                                     (lambda (_%$%g148949148952%_
                                                              _%$%g148950148955%_)
                                                       (cons _%$%g148949148952%_
                                                             _%$%g148950148955%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp149274
                                                 '()
                                                 _%$%body148789148887%_))))
                                  '())))
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g148922148958%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                  _%stx148754%_
                                  _%$%hd148779148856%_))))))))
              (_%$%loop148784148868%_ _%$%target148781148862%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g148757148795%_
                                                     _%$%g148758148799%_)))))
                                          (_%$%g148757148795%_
                                           _%$%g148758148799%_))))
                                  (_%$%g148757148795%_ _%$%g148758148799%_))
                              (_%$%g148757148795%_ _%$%g148758148799%_))
                          (_%$%g148757148795%_ _%$%g148758148799%_))))
                  (_%$%g148757148795%_ _%$%g148758148799%_))
              (_%$%g148757148795%_ _%$%g148758148799%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g148757148795%_
                                               _%$%g148758148799%_))))
                                      (_%$%g148757148795%_
                                       _%$%g148758148799%_))))
                              (_%$%g148757148795%_ _%$%g148758148799%_))))
                      (_%$%g148757148795%_ _%$%g148758148799%_)))))
          (_%$%g148756148962%_ _%stx148754%_))))
    (define |[:0:]#subtype-property-vector|
      (lambda (_%$stx148967%_)
        (let* ((_%$%g148971148991%_
                (lambda (_%$%g148972148987%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g148972148987%_)))
               (_%$%g148970149060%_
                (lambda (_%$%g148972148995%_)
                  (if (gx#stx-pair? _%$%g148972148995%_)
                      (let ((_%$%e148974148998%_
                             (gx#syntax-e _%$%g148972148995%_)))
                        (let ((_%$%hd148975149002%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e148974148998%_)))
                              (_%$%tl148976149005%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e148974148998%_))))
                          (if (gx#stx-pair/null? _%$%tl148976149005%_)
                              (let ((_g149275_
                                     (gx#syntax-split-splice
                                      _%$%tl148976149005%_
                                      '0)))
                                (begin
                                  (let ((_g149276_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g149275_)
                                               (##values-length _g149275_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g149276_ 2)))
                                        (error "Context expects 2 values"
                                               _g149276_)))
                                  (let ((_%$%target148977149008%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g149275_ 0)))
                                        (_%$%tl148979149011%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g149275_ 1))))
                                    (if (gx#stx-null? _%$%tl148979149011%_)
                                        (letrec ((_%$%loop148980149014%_
                                                  (lambda (_%$%hd148978149018%_
                                                           _%$%t148984149021%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd148978149018%_)
                                                        (let ((_%$%e148981149023%_
                                                               (gx#syntax-e
                                                                _%$%hd148978149018%_)))
                                                          (let ((_%$%lp-hd148982149027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e148981149023%_)))
                        (_%$%lp-tl148983149030%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e148981149023%_))))
                    (_%$%loop148980149014%_
                     _%$%lp-tl148983149030%_
                     (cons _%$%lp-hd148982149027%_ _%$%t148984149021%_))))
                (let ((_%$%t148985149033%_ (reverse _%$%t148984149021%_)))
                  (cons (gx#datum->syntax '#f 'let)
                        (cons (cons (gx#datum->syntax '#f 'vec)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-vector)
                                                (cons '32 (cons '#f '())))
                                          '()))
                              (let ((__tmp149278
                                     (lambda (_%$%g149051149054%_
                                              _%$%g149052149057%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'vec)
                                                         (cons _%$%g149051149054%_
                                                               (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$%g149052149057%_)))
                                    (__tmp149277
                                     (cons (gx#datum->syntax '#f 'vec) '())))
                                (declare (not safe))
                                (foldr__0
                                 __tmp149278
                                 __tmp149277
                                 _%$%t148985149033%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop148980149014%_
                                           _%$%target148977149008%_
                                           '()))
                                        (_%$%g148971148991%_
                                         _%$%g148972148995%_)))))
                              (_%$%g148971148991%_ _%$%g148972148995%_))))
                      (_%$%g148971148991%_ _%$%g148972148995%_)))))
          (_%$%g148970149060%_ _%$stx148967%_))))))
