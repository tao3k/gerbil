(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g149433_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |[:0:]#defpred|
      (lambda (_%stx148916%_)
        (let* ((_%$%g148919148957%_
                (lambda (_%$%g148920148953%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g148920148953%_)))
               (_%$%g148918149124%_
                (lambda (_%$%g148920148961%_)
                  (if (gx#stx-pair? _%$%g148920148961%_)
                      (let ((_%$%e148925148964%_
                             (gx#syntax-e _%$%g148920148961%_)))
                        (let ((_%$%hd148926148968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e148925148964%_)))
                              (_%$%tl148927148971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e148925148964%_))))
                          (if (gx#stx-pair? _%$%tl148927148971%_)
                              (let ((_%$%e148928148974%_
                                     (gx#syntax-e _%$%tl148927148971%_)))
                                (let ((_%$%hd148929148978%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e148928148974%_)))
                                      (_%$%tl148930148981%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e148928148974%_))))
                                  (if (gx#stx-pair? _%$%hd148929148978%_)
                                      (let ((_%$%e148931148984%_
                                             (gx#syntax-e
                                              _%$%hd148929148978%_)))
                                        (let ((_%$%hd148932148988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e148931148984%_)))
                                              (_%$%tl148933148991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e148931148984%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl148933148991%_)
                                              (let ((_%$%e148934148994%_
                                                     (gx#syntax-e
                                                      _%$%tl148933148991%_)))
                                                (let ((_%$%hd148935148998%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e148934148994%_)))
                                                      (_%$%tl148936149001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e148934148994%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl148936149001%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl148930148981%_)
                                                          (let ((_%$%e148937149004%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl148930148981%_)))
                    (let ((_%$%hd148938149008%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e148937149004%_)))
                          (_%$%tl148939149011%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e148937149004%_))))
                      (if (gx#identifier? _%$%hd148938149008%_)
                          (if (gx#free-identifier=?
                               |[1]#_g149433_|
                               _%$%hd148938149008%_)
                              (if (gx#stx-pair? _%$%tl148939149011%_)
                                  (let ((_%$%e148940149014%_
                                         (gx#syntax-e _%$%tl148939149011%_)))
                                    (let ((_%$%hd148941149018%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e148940149014%_)))
                                          (_%$%tl148942149021%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e148940149014%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl148942149021%_)
                                          (let ((_g149434_
                                                 (gx#syntax-split-splice
                                                  _%$%tl148942149021%_
                                                  '0)))
                                            (begin
                                              (let ((_g149435_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g149434_)
                                                           (##values-length
                                                            _g149434_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g149435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g149435_)))
                                              (let ((_%$%target148943149024%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g149434_
                                                        0)))
                                                    (_%$%tl148945149027%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g149434_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl148945149027%_)
                                                    (letrec ((_%$%loop148946149030%_
                                                              (lambda (_%$%hd148944149034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body148950149037%_)
                        (if (gx#stx-pair? _%$%hd148944149034%_)
                            (let ((_%$%e148947149039%_
                                   (gx#syntax-e _%$%hd148944149034%_)))
                              (let ((_%$%lp-hd148948149043%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e148947149039%_)))
                                    (_%$%lp-tl148949149046%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e148947149039%_))))
                                (_%$%loop148946149030%_
                                 _%$%lp-tl148949149046%_
                                 (cons _%$%lp-hd148948149043%_
                                       _%$%body148950149037%_))))
                            (let* ((_%$%body148951149049%_
                                    (reverse _%$%body148950149037%_))
                                   (_%$%g149085149093%_
                                    (lambda (_%$%g149086149089%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g149086149089%_)))
                                   (_%$%g149084149120%_
                                    (lambda (_%$%g149086149097%_)
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _%$%hd148932148988%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@predicate)
                                  (cons _%$%g149086149097%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'lambda)
                                        (cons (cons _%$%hd148935148998%_ '())
                                              (let ((__tmp149436
                                                     (lambda (_%$%g149111149114%_
                                                              _%$%g149112149117%_)
                                                       (cons _%$%g149111149114%_
                                                             _%$%g149112149117%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp149436
                                                 '()
                                                 _%$%body148951149049%_))))
                                  '())))
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g149084149120%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                  _%stx148916%_
                                  _%$%hd148941149018%_))))))))
              (_%$%loop148946149030%_ _%$%target148943149024%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g148919148957%_
                                                     _%$%g148920148961%_)))))
                                          (_%$%g148919148957%_
                                           _%$%g148920148961%_))))
                                  (_%$%g148919148957%_ _%$%g148920148961%_))
                              (_%$%g148919148957%_ _%$%g148920148961%_))
                          (_%$%g148919148957%_ _%$%g148920148961%_))))
                  (_%$%g148919148957%_ _%$%g148920148961%_))
              (_%$%g148919148957%_ _%$%g148920148961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g148919148957%_
                                               _%$%g148920148961%_))))
                                      (_%$%g148919148957%_
                                       _%$%g148920148961%_))))
                              (_%$%g148919148957%_ _%$%g148920148961%_))))
                      (_%$%g148919148957%_ _%$%g148920148961%_)))))
          (_%$%g148918149124%_ _%stx148916%_))))
    (define |[:0:]#subtype-property-vector|
      (lambda (_%$stx149129%_)
        (let* ((_%$%g149133149153%_
                (lambda (_%$%g149134149149%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g149134149149%_)))
               (_%$%g149132149222%_
                (lambda (_%$%g149134149157%_)
                  (if (gx#stx-pair? _%$%g149134149157%_)
                      (let ((_%$%e149136149160%_
                             (gx#syntax-e _%$%g149134149157%_)))
                        (let ((_%$%hd149137149164%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e149136149160%_)))
                              (_%$%tl149138149167%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e149136149160%_))))
                          (if (gx#stx-pair/null? _%$%tl149138149167%_)
                              (let ((_g149437_
                                     (gx#syntax-split-splice
                                      _%$%tl149138149167%_
                                      '0)))
                                (begin
                                  (let ((_g149438_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g149437_)
                                               (##values-length _g149437_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g149438_ 2)))
                                        (error "Context expects 2 values"
                                               _g149438_)))
                                  (let ((_%$%target149139149170%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g149437_ 0)))
                                        (_%$%tl149141149173%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g149437_ 1))))
                                    (if (gx#stx-null? _%$%tl149141149173%_)
                                        (letrec ((_%$%loop149142149176%_
                                                  (lambda (_%$%hd149140149180%_
                                                           _%$%t149146149183%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd149140149180%_)
                                                        (let ((_%$%e149143149185%_
                                                               (gx#syntax-e
                                                                _%$%hd149140149180%_)))
                                                          (let ((_%$%lp-hd149144149189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e149143149185%_)))
                        (_%$%lp-tl149145149192%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e149143149185%_))))
                    (_%$%loop149142149176%_
                     _%$%lp-tl149145149192%_
                     (cons _%$%lp-hd149144149189%_ _%$%t149146149183%_))))
                (let ((_%$%t149147149195%_ (reverse _%$%t149146149183%_)))
                  (cons (gx#datum->syntax '#f 'let)
                        (cons (cons (gx#datum->syntax '#f 'vec)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-vector)
                                                (cons '32 (cons '#f '())))
                                          '()))
                              (let ((__tmp149440
                                     (lambda (_%$%g149213149216%_
                                              _%$%g149214149219%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'vec)
                                                         (cons _%$%g149213149216%_
                                                               (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$%g149214149219%_)))
                                    (__tmp149439
                                     (cons (gx#datum->syntax '#f 'vec) '())))
                                (declare (not safe))
                                (foldr__0
                                 __tmp149440
                                 __tmp149439
                                 _%$%t149147149195%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop149142149176%_
                                           _%$%target149139149170%_
                                           '()))
                                        (_%$%g149133149153%_
                                         _%$%g149134149157%_)))))
                              (_%$%g149133149153%_ _%$%g149134149157%_))))
                      (_%$%g149133149153%_ _%$%g149134149157%_)))))
          (_%$%g149132149222%_ _%$stx149129%_))))))
