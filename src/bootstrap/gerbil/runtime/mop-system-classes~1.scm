(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g147244_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |[:0:]#defpred|
      (lambda (_%stx146727%_)
        (let* ((_%$%g146730146768%_
                (lambda (_%$%g146731146764%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g146731146764%_)))
               (_%$%g146729146935%_
                (lambda (_%$%g146731146772%_)
                  (if (gx#stx-pair? _%$%g146731146772%_)
                      (let ((_%$%e146736146775%_
                             (gx#syntax-e _%$%g146731146772%_)))
                        (let ((_%$%hd146737146779%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e146736146775%_)))
                              (_%$%tl146738146782%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e146736146775%_))))
                          (if (gx#stx-pair? _%$%tl146738146782%_)
                              (let ((_%$%e146739146785%_
                                     (gx#syntax-e _%$%tl146738146782%_)))
                                (let ((_%$%hd146740146789%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e146739146785%_)))
                                      (_%$%tl146741146792%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e146739146785%_))))
                                  (if (gx#stx-pair? _%$%hd146740146789%_)
                                      (let ((_%$%e146742146795%_
                                             (gx#syntax-e
                                              _%$%hd146740146789%_)))
                                        (let ((_%$%hd146743146799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e146742146795%_)))
                                              (_%$%tl146744146802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e146742146795%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl146744146802%_)
                                              (let ((_%$%e146745146805%_
                                                     (gx#syntax-e
                                                      _%$%tl146744146802%_)))
                                                (let ((_%$%hd146746146809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e146745146805%_)))
                                                      (_%$%tl146747146812%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e146745146805%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl146747146812%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl146741146792%_)
                                                          (let ((_%$%e146748146815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl146741146792%_)))
                    (let ((_%$%hd146749146819%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e146748146815%_)))
                          (_%$%tl146750146822%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e146748146815%_))))
                      (if (gx#identifier? _%$%hd146749146819%_)
                          (if (gx#free-identifier=?
                               |[1]#_g147244_|
                               _%$%hd146749146819%_)
                              (if (gx#stx-pair? _%$%tl146750146822%_)
                                  (let ((_%$%e146751146825%_
                                         (gx#syntax-e _%$%tl146750146822%_)))
                                    (let ((_%$%hd146752146829%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e146751146825%_)))
                                          (_%$%tl146753146832%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e146751146825%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl146753146832%_)
                                          (let ((_g147245_
                                                 (gx#syntax-split-splice
                                                  _%$%tl146753146832%_
                                                  '0)))
                                            (begin
                                              (let ((_g147246_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g147245_)
                                                           (##values-length
                                                            _g147245_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g147246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g147246_)))
                                              (let ((_%$%target146754146835%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g147245_
                                                        0)))
                                                    (_%$%tl146756146838%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g147245_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl146756146838%_)
                                                    (letrec ((_%$%loop146757146841%_
                                                              (lambda (_%$%hd146755146845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body146761146848%_)
                        (if (gx#stx-pair? _%$%hd146755146845%_)
                            (let ((_%$%e146758146850%_
                                   (gx#syntax-e _%$%hd146755146845%_)))
                              (let ((_%$%lp-hd146759146854%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e146758146850%_)))
                                    (_%$%lp-tl146760146857%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e146758146850%_))))
                                (_%$%loop146757146841%_
                                 _%$%lp-tl146760146857%_
                                 (cons _%$%lp-hd146759146854%_
                                       _%$%body146761146848%_))))
                            (let* ((_%$%body146762146860%_
                                    (reverse _%$%body146761146848%_))
                                   (_%$%g146896146904%_
                                    (lambda (_%$%g146897146900%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g146897146900%_)))
                                   (_%$%g146895146931%_
                                    (lambda (_%$%g146897146908%_)
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _%$%hd146743146799%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@predicate)
                                  (cons _%$%g146897146908%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'lambda)
                                        (cons (cons _%$%hd146746146809%_ '())
                                              (let ((__tmp147247
                                                     (lambda (_%$%g146922146925%_
                                                              _%$%g146923146928%_)
                                                       (cons _%$%g146922146925%_
                                                             _%$%g146923146928%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp147247
                                                 '()
                                                 _%$%body146762146860%_))))
                                  '())))
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g146895146931%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                  _%stx146727%_
                                  _%$%hd146752146829%_))))))))
              (_%$%loop146757146841%_ _%$%target146754146835%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g146730146768%_
                                                     _%$%g146731146772%_)))))
                                          (_%$%g146730146768%_
                                           _%$%g146731146772%_))))
                                  (_%$%g146730146768%_ _%$%g146731146772%_))
                              (_%$%g146730146768%_ _%$%g146731146772%_))
                          (_%$%g146730146768%_ _%$%g146731146772%_))))
                  (_%$%g146730146768%_ _%$%g146731146772%_))
              (_%$%g146730146768%_ _%$%g146731146772%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g146730146768%_
                                               _%$%g146731146772%_))))
                                      (_%$%g146730146768%_
                                       _%$%g146731146772%_))))
                              (_%$%g146730146768%_ _%$%g146731146772%_))))
                      (_%$%g146730146768%_ _%$%g146731146772%_)))))
          (_%$%g146729146935%_ _%stx146727%_))))
    (define |[:0:]#subtype-property-vector|
      (lambda (_%$stx146940%_)
        (let* ((_%$%g146944146964%_
                (lambda (_%$%g146945146960%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g146945146960%_)))
               (_%$%g146943147033%_
                (lambda (_%$%g146945146968%_)
                  (if (gx#stx-pair? _%$%g146945146968%_)
                      (let ((_%$%e146947146971%_
                             (gx#syntax-e _%$%g146945146968%_)))
                        (let ((_%$%hd146948146975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e146947146971%_)))
                              (_%$%tl146949146978%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e146947146971%_))))
                          (if (gx#stx-pair/null? _%$%tl146949146978%_)
                              (let ((_g147248_
                                     (gx#syntax-split-splice
                                      _%$%tl146949146978%_
                                      '0)))
                                (begin
                                  (let ((_g147249_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g147248_)
                                               (##values-length _g147248_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g147249_ 2)))
                                        (error "Context expects 2 values"
                                               _g147249_)))
                                  (let ((_%$%target146950146981%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g147248_ 0)))
                                        (_%$%tl146952146984%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g147248_ 1))))
                                    (if (gx#stx-null? _%$%tl146952146984%_)
                                        (letrec ((_%$%loop146953146987%_
                                                  (lambda (_%$%hd146951146991%_
                                                           _%$%t146957146994%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd146951146991%_)
                                                        (let ((_%$%e146954146996%_
                                                               (gx#syntax-e
                                                                _%$%hd146951146991%_)))
                                                          (let ((_%$%lp-hd146955147000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e146954146996%_)))
                        (_%$%lp-tl146956147003%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e146954146996%_))))
                    (_%$%loop146953146987%_
                     _%$%lp-tl146956147003%_
                     (cons _%$%lp-hd146955147000%_ _%$%t146957146994%_))))
                (let ((_%$%t146958147006%_ (reverse _%$%t146957146994%_)))
                  (cons (gx#datum->syntax '#f 'let)
                        (cons (cons (gx#datum->syntax '#f 'vec)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-vector)
                                                (cons '32 (cons '#f '())))
                                          '()))
                              (let ((__tmp147251
                                     (lambda (_%$%g147024147027%_
                                              _%$%g147025147030%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'vec)
                                                         (cons _%$%g147024147027%_
                                                               (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$%g147025147030%_)))
                                    (__tmp147250
                                     (cons (gx#datum->syntax '#f 'vec) '())))
                                (declare (not safe))
                                (foldr__0
                                 __tmp147251
                                 __tmp147250
                                 _%$%t146958147006%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop146953146987%_
                                           _%$%target146950146981%_
                                           '()))
                                        (_%$%g146944146964%_
                                         _%$%g146945146968%_)))))
                              (_%$%g146944146964%_ _%$%g146945146968%_))))
                      (_%$%g146944146964%_ _%$%g146945146968%_)))))
          (_%$%g146943147033%_ _%$stx146940%_))))))
