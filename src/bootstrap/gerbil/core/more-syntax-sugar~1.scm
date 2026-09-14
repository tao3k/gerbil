(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[1]#_g50326_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-syntax-sugar[1]#_g50327_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-syntax-sugar[1]#_g50328_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
      (lambda (_%$stx49334%_)
        (let* ((_%$%g4933849349%_
                (lambda (_%$%g4933949345%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4933949345%_)))
               (_%$%g4933749379%_
                (lambda (_%$%g4933949353%_)
                  (if (gx#stx-pair? _%$%g4933949353%_)
                      (let ((_%$%e4934149356%_
                             (gx#syntax-e _%$%g4933949353%_)))
                        (let ((_%$%hd4934249360%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4934149356%_)))
                              (_%$%tl4934349363%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4934149356%_))))
                          (cons (gx#datum->syntax '#f 'make-setq-macro)
                                (cons 'macro:
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'syntax-rules)
                                                  _%$%tl4934349363%_)
                                            '())))))
                      (_%$%g4933849349%_ _%$%g4933949353%_)))))
          (_%$%g4933749379%_ _%$stx49334%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifiers|
      (lambda (_%stx49383%_)
        (let* ((_%$%g4938649419%_
                (lambda (_%$%g4938749415%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4938749415%_)))
               (_%$%g4938549983%_
                (lambda (_%$%g4938749423%_)
                  (if (gx#stx-pair? _%$%g4938749423%_)
                      (let ((_%$%e4939049426%_
                             (gx#syntax-e _%$%g4938749423%_)))
                        (let ((_%$%hd4939149430%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4939049426%_)))
                              (_%$%tl4939249433%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4939049426%_))))
                          (if (gx#stx-pair? _%$%tl4939249433%_)
                              (let ((_%$%e4939349436%_
                                     (gx#syntax-e _%$%tl4939249433%_)))
                                (let ((_%$%hd4939449440%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4939349436%_)))
                                      (_%$%tl4939549443%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4939349436%_))))
                                  (if (gx#stx-pair/null? _%$%hd4939449440%_)
                                      (let ((_g50320_
                                             (gx#syntax-split-splice
                                              _%$%hd4939449440%_
                                              '0)))
                                        (begin
                                          (let ((_g50321_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g50320_)
                                                       (##values-length
                                                        _g50320_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g50321_ 2)))
                                                (error "Context expects 2 values"
                                                       _g50321_)))
                                          (let ((_%$%target4939649446%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g50320_ 0)))
                                                (_%$%tl4939849449%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g50320_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4939849449%_)
                                                (letrec ((_%$%loop4939949452%_
                                                          (lambda (_%$%hd4939749456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause4940349459%_)
                    (if (gx#stx-pair? _%$%hd4939749456%_)
                        (let ((_%$%e4940049461%_
                               (gx#syntax-e _%$%hd4939749456%_)))
                          (let ((_%$%lp-hd4940149465%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4940049461%_)))
                                (_%$%lp-tl4940249468%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4940049461%_))))
                            (_%$%loop4939949452%_
                             _%$%lp-tl4940249468%_
                             (cons _%$%lp-hd4940149465%_
                                   _%$%clause4940349459%_))))
                        (let ((_%$%clause4940449471%_
                               (reverse _%$%clause4940349459%_)))
                          (if (gx#stx-pair/null? _%$%tl4939549443%_)
                              (let ((_g50322_
                                     (gx#syntax-split-splice
                                      _%$%tl4939549443%_
                                      '0)))
                                (begin
                                  (let ((_g50323_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g50322_)
                                               (##values-length _g50322_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g50323_ 2)))
                                        (error "Context expects 2 values"
                                               _g50323_)))
                                  (let ((_%$%target4940549474%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g50322_ 0)))
                                        (_%$%tl4940749477%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g50322_ 1))))
                                    (if (gx#stx-null? _%$%tl4940749477%_)
                                        (letrec ((_%$%loop4940849480%_
                                                  (lambda (_%$%hd4940649484%_
                                                           _%$%body4941249487%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4940649484%_)
                                                        (let ((_%$%e4940949489%_
                                                               (gx#syntax-e
                                                                _%$%hd4940649484%_)))
                                                          (let ((_%$%lp-hd4941049493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4940949489%_)))
                        (_%$%lp-tl4941149496%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4940949489%_))))
                    (_%$%loop4940849480%_
                     _%$%lp-tl4941149496%_
                     (cons _%$%lp-hd4941049493%_ _%$%body4941249487%_))))
                (let* ((_%$%body4941349499%_ (reverse _%$%body4941249487%_))
                       (_%$%g4952649543%_
                        (lambda (_%$%g4952749539%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g4952749539%_)))
                       (_%$%g4952549610%_
                        (lambda (_%$%g4952749547%_)
                          (if (gx#stx-pair/null? _%$%g4952749547%_)
                              (let ((_g50324_
                                     (gx#syntax-split-splice
                                      _%$%g4952749547%_
                                      '0)))
                                (begin
                                  (let ((_g50325_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g50324_)
                                               (##values-length _g50324_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g50325_ 2)))
                                        (error "Context expects 2 values"
                                               _g50325_)))
                                  (let ((_%$%target4952949550%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g50324_ 0)))
                                        (_%$%tl4953149553%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g50324_ 1))))
                                    (if (gx#stx-null? _%$%tl4953149553%_)
                                        (letrec ((_%$%loop4953249556%_
                                                  (lambda (_%$%hd4953049560%_
                                                           _%$%clause4953649563%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4953049560%_)
                                                        (let ((_%$%e4953349565%_
                                                               (gx#syntax-e
                                                                _%$%hd4953049560%_)))
                                                          (let ((_%$%lp-hd4953449569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4953349565%_)))
                        (_%$%lp-tl4953549572%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4953349565%_))))
                    (_%$%loop4953249556%_
                     _%$%lp-tl4953549572%_
                     (cons _%$%lp-hd4953449569%_ _%$%clause4953649563%_))))
                (let ((_%$%clause4953749575%_
                       (reverse _%$%clause4953649563%_)))
                  (cons (gx#datum->syntax '#f 'with-syntax*)
                        (cons (foldr (lambda (_%$%g4959349598%_
                                              _%$%g4959449601%_)
                                       (cons _%$%g4959349598%_
                                             _%$%g4959449601%_))
                                     '()
                                     _%$%clause4953749575%_)
                              (foldr (lambda (_%$%g4959549604%_
                                              _%$%g4959649607%_)
                                       (cons _%$%g4959549604%_
                                             _%$%g4959649607%_))
                                     '()
                                     _%$%body4941349499%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4953249556%_
                                           _%$%target4952949550%_
                                           '()))
                                        (_%$%g4952649543%_
                                         _%$%g4952749547%_)))))
                              (_%$%g4952649543%_ _%$%g4952749547%_)))))
                  (_%$%g4952549610%_
                   (map (lambda (_%clause49614%_)
                          (let* ((_%__stx5018950190%_ _%clause49614%_)
                                 (_%$%g4962049687%_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx5018950190%_))))
                            (let ((_%__kont5019250193%_
                                   (lambda (_%$%g4962249952%_
                                            _%$%g4962349954%_)
                                     (cons _%$%g4962349954%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'syntax-local-temp)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%$%g4962249952%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                                  (_%__kont5019450195%_
                                   (lambda (_%$%g4963649886%_
                                            _%$%g4963749888%_)
                                     (cons _%$%g4963749888%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'genident)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%$%g4963649886%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                                  (_%__kont5019650197%_
                                   (lambda (_%$%g4965049820%_
                                            _%$%g4965149822%_)
                                     (cons _%$%g4965149822%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'syntax-local-introduce)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%$%g4965049820%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                                  (_%__kont5019850199%_
                                   (lambda (_%$%g4966449742%_
                                            _%$%g4966549744%_
                                            _%$%g4966649745%_)
                                     (cons _%$%g4966649745%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-identifier)
                                                       (cons _%$%g4966549744%_
                                                             (foldr (lambda (_%$%g4976449767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g4976549770%_)
                              (cons _%$%g4976449767%_ _%$%g4976549770%_))
                            '()
                            _%$%g4966449742%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                              (let* ((_%__match5031850319%_
                                      (lambda (_%$%e4966749694%_
                                               _%$%hd4966849698%_
                                               _%$%tl4966949701%_
                                               _%$%e4967049704%_
                                               _%$%hd4967149708%_
                                               _%$%tl4967249711%_
                                               _%__splice5020050201%_
                                               _%$%target4967349714%_
                                               _%$%tl4967549717%_)
                                        (letrec ((_%$%loop4967649720%_
                                                  (lambda (_%$%hd4967449724%_
                                                           _%$%components4968049727%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4967449724%_)
                                                        (let ((_%$%e4967749729%_
                                                               (gx#syntax-e
                                                                _%$%hd4967449724%_)))
                                                          (let ((_%$%lp-tl4967949736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4967749729%_)))
                        (_%$%lp-hd4967849733%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4967749729%_))))
                    (_%$%loop4967649720%_
                     _%$%lp-tl4967949736%_
                     (cons _%$%lp-hd4967849733%_ _%$%components4968049727%_))))
                (let ((_%$%components4968149739%_
                       (reverse _%$%components4968049727%_)))
                  (let ((_%$%g4966449742%_ _%$%components4968149739%_)
                        (_%$%g4966549744%_ _%$%hd4967149708%_)
                        (_%$%g4966649745%_ _%$%hd4966849698%_))
                    (if (gx#identifier? _%$%g4966649745%_)
                        (_%__kont5019850199%_
                         _%$%g4966449742%_
                         _%$%g4966549744%_
                         _%$%g4966649745%_)
                        (_%$%g4962049687%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4967649720%_
                                           _%$%target4967349714%_
                                           '()))))
                                     (_%__match5029850299%_
                                      (lambda (_%$%e4965249780%_
                                               _%$%hd4965349784%_
                                               _%$%tl4965449787%_
                                               _%$%e4965549790%_
                                               _%$%hd4965649794%_
                                               _%$%tl4965749797%_
                                               _%$%e4965849800%_
                                               _%$%hd4965949804%_
                                               _%$%tl4966049807%_
                                               _%$%e4966149810%_
                                               _%$%hd4966249814%_
                                               _%$%tl4966349817%_)
                                        (let ((_%$%g4965049820%_
                                               _%$%hd4966249814%_)
                                              (_%$%g4965149822%_
                                               _%$%hd4965349784%_))
                                          (if (and (gx#identifier?
                                                    _%$%g4965149822%_)
                                                   (gx#identifier?
                                                    _%$%g4965049820%_))
                                              (_%__kont5019650197%_
                                               _%$%g4965049820%_
                                               _%$%g4965149822%_)
                                              (if (gx#stx-pair/null?
                                                   _%$%tl4965749797%_)
                                                  (let ((_%__splice5020050201%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl4965749797%_
                                                          '0)))
                                                    (let ((_%$%tl4967549717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice5020050201%_
                                                              '1)))
                                                          (_%$%target4967349714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice5020050201%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4967549717%_)
                                                          (_%__match5031850319%_
                                                           _%$%e4965249780%_
                                                           _%$%hd4965349784%_
                                                           _%$%tl4965449787%_
                                                           _%$%e4965549790%_
                                                           _%$%hd4965649794%_
                                                           _%$%tl4965749797%_
                                                           _%__splice5020050201%_
                                                           _%$%target4967349714%_
                                                           _%$%tl4967549717%_)
                                                          (_%$%g4962049687%_))))
                                                  (_%$%g4962049687%_))))))
                                     (_%__match5026650267%_
                                      (lambda (_%$%e4963849846%_
                                               _%$%hd4963949850%_
                                               _%$%tl4964049853%_
                                               _%$%e4964149856%_
                                               _%$%hd4964249860%_
                                               _%$%tl4964349863%_
                                               _%$%e4964449866%_
                                               _%$%hd4964549870%_
                                               _%$%tl4964649873%_
                                               _%$%e4964749876%_
                                               _%$%hd4964849880%_
                                               _%$%tl4964949883%_)
                                        (let ((_%$%g4963649886%_
                                               _%$%hd4964849880%_)
                                              (_%$%g4963749888%_
                                               _%$%hd4963949850%_))
                                          (if (and (gx#identifier?
                                                    _%$%g4963749888%_)
                                                   (gx#identifier?
                                                    _%$%g4963649886%_))
                                              (_%__kont5019450195%_
                                               _%$%g4963649886%_
                                               _%$%g4963749888%_)
                                              (if (gx#stx-pair/null?
                                                   _%$%tl4964349863%_)
                                                  (let ((_%__splice5020050201%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl4964349863%_
                                                          '0)))
                                                    (let ((_%$%tl4967549717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice5020050201%_
                                                              '1)))
                                                          (_%$%target4967349714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice5020050201%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4967549717%_)
                                                          (_%__match5031850319%_
                                                           _%$%e4963849846%_
                                                           _%$%hd4963949850%_
                                                           _%$%tl4964049853%_
                                                           _%$%e4964149856%_
                                                           _%$%hd4964249860%_
                                                           _%$%tl4964349863%_
                                                           _%__splice5020050201%_
                                                           _%$%target4967349714%_
                                                           _%$%tl4967549717%_)
                                                          (_%$%g4962049687%_))))
                                                  (_%$%g4962049687%_))))))
                                     (_%__match5023450235%_
                                      (lambda (_%$%e4962449912%_
                                               _%$%hd4962549916%_
                                               _%$%tl4962649919%_
                                               _%$%e4962749922%_
                                               _%$%hd4962849926%_
                                               _%$%tl4962949929%_
                                               _%$%e4963049932%_
                                               _%$%hd4963149936%_
                                               _%$%tl4963249939%_
                                               _%$%e4963349942%_
                                               _%$%hd4963449946%_
                                               _%$%tl4963549949%_)
                                        (let ((_%$%g4962249952%_
                                               _%$%hd4963449946%_)
                                              (_%$%g4962349954%_
                                               _%$%hd4962549916%_))
                                          (if (and (gx#identifier?
                                                    _%$%g4962349954%_)
                                                   (gx#identifier?
                                                    _%$%g4962249952%_))
                                              (_%__kont5019250193%_
                                               _%$%g4962249952%_
                                               _%$%g4962349954%_)
                                              (if (gx#stx-pair/null?
                                                   _%$%tl4962949929%_)
                                                  (let ((_%__splice5020050201%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl4962949929%_
                                                          '0)))
                                                    (let ((_%$%tl4967549717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice5020050201%_
                                                              '1)))
                                                          (_%$%target4967349714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice5020050201%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4967549717%_)
                                                          (_%__match5031850319%_
                                                           _%$%e4962449912%_
                                                           _%$%hd4962549916%_
                                                           _%$%tl4962649919%_
                                                           _%$%e4962749922%_
                                                           _%$%hd4962849926%_
                                                           _%$%tl4962949929%_
                                                           _%__splice5020050201%_
                                                           _%$%target4967349714%_
                                                           _%$%tl4967549717%_)
                                                          (_%$%g4962049687%_))))
                                                  (_%$%g4962049687%_)))))))
                                (if (gx#stx-pair? _%__stx5018950190%_)
                                    (let ((_%$%e4962449912%_
                                           (gx#syntax-e _%__stx5018950190%_)))
                                      (let ((_%$%tl4962649919%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4962449912%_)))
                                            (_%$%hd4962549916%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4962449912%_))))
                                        (if (gx#stx-pair? _%$%tl4962649919%_)
                                            (let ((_%$%e4962749922%_
                                                   (gx#syntax-e
                                                    _%$%tl4962649919%_)))
                                              (let ((_%$%tl4962949929%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4962749922%_)))
                                                    (_%$%hd4962849926%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4962749922%_))))
                                                (if (gx#stx-pair?
                                                     _%$%hd4962849926%_)
                                                    (let ((_%$%e4963049932%_
                                                           (gx#syntax-e
                                                            _%$%hd4962849926%_)))
                                                      (let ((_%$%tl4963249939%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e4963049932%_)))
                    (_%$%hd4963149936%_
                     (let () (declare (not safe)) (##car _%$%e4963049932%_))))
                (if (gx#identifier? _%$%hd4963149936%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/more-syntax-sugar[1]#_g50326_|
                         _%$%hd4963149936%_)
                        (if (gx#stx-pair? _%$%tl4963249939%_)
                            (let ((_%$%e4963349942%_
                                   (gx#syntax-e _%$%tl4963249939%_)))
                              (let ((_%$%tl4963549949%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4963349942%_)))
                                    (_%$%hd4963449946%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4963349942%_))))
                                (if (gx#stx-null? _%$%tl4963549949%_)
                                    (if (gx#stx-null? _%$%tl4962949929%_)
                                        (_%__match5023450235%_
                                         _%$%e4962449912%_
                                         _%$%hd4962549916%_
                                         _%$%tl4962649919%_
                                         _%$%e4962749922%_
                                         _%$%hd4962849926%_
                                         _%$%tl4962949929%_
                                         _%$%e4963049932%_
                                         _%$%hd4963149936%_
                                         _%$%tl4963249939%_
                                         _%$%e4963349942%_
                                         _%$%hd4963449946%_
                                         _%$%tl4963549949%_)
                                        (if (gx#stx-pair/null?
                                             _%$%tl4962949929%_)
                                            (let ((_%__splice5020050201%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4962949929%_
                                                    '0)))
                                              (let ((_%$%tl4967549717%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5020050201%_
                                                        '1)))
                                                    (_%$%target4967349714%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5020050201%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4967549717%_)
                                                    (_%__match5031850319%_
                                                     _%$%e4962449912%_
                                                     _%$%hd4962549916%_
                                                     _%$%tl4962649919%_
                                                     _%$%e4962749922%_
                                                     _%$%hd4962849926%_
                                                     _%$%tl4962949929%_
                                                     _%__splice5020050201%_
                                                     _%$%target4967349714%_
                                                     _%$%tl4967549717%_)
                                                    (_%$%g4962049687%_))))
                                            (_%$%g4962049687%_)))
                                    (if (gx#stx-pair/null? _%$%tl4962949929%_)
                                        (let ((_%__splice5020050201%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4962949929%_
                                                '0)))
                                          (let ((_%$%tl4967549717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice5020050201%_
                                                    '1)))
                                                (_%$%target4967349714%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice5020050201%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4967549717%_)
                                                (_%__match5031850319%_
                                                 _%$%e4962449912%_
                                                 _%$%hd4962549916%_
                                                 _%$%tl4962649919%_
                                                 _%$%e4962749922%_
                                                 _%$%hd4962849926%_
                                                 _%$%tl4962949929%_
                                                 _%__splice5020050201%_
                                                 _%$%target4967349714%_
                                                 _%$%tl4967549717%_)
                                                (_%$%g4962049687%_))))
                                        (_%$%g4962049687%_)))))
                            (if (gx#stx-pair/null? _%$%tl4962949929%_)
                                (let ((_%__splice5020050201%_
                                       (gx#syntax-split-splice->vector
                                        _%$%tl4962949929%_
                                        '0)))
                                  (let ((_%$%tl4967549717%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice5020050201%_
                                            '1)))
                                        (_%$%target4967349714%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice5020050201%_
                                            '0))))
                                    (if (gx#stx-null? _%$%tl4967549717%_)
                                        (_%__match5031850319%_
                                         _%$%e4962449912%_
                                         _%$%hd4962549916%_
                                         _%$%tl4962649919%_
                                         _%$%e4962749922%_
                                         _%$%hd4962849926%_
                                         _%$%tl4962949929%_
                                         _%__splice5020050201%_
                                         _%$%target4967349714%_
                                         _%$%tl4967549717%_)
                                        (_%$%g4962049687%_))))
                                (_%$%g4962049687%_)))
                        (if (gx#free-identifier=?
                             |gerbil/core/more-syntax-sugar[1]#_g50327_|
                             _%$%hd4963149936%_)
                            (if (gx#stx-pair? _%$%tl4963249939%_)
                                (let ((_%$%e4964749876%_
                                       (gx#syntax-e _%$%tl4963249939%_)))
                                  (let ((_%$%tl4964949883%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4964749876%_)))
                                        (_%$%hd4964849880%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4964749876%_))))
                                    (if (gx#stx-null? _%$%tl4964949883%_)
                                        (if (gx#stx-null? _%$%tl4962949929%_)
                                            (_%__match5026650267%_
                                             _%$%e4962449912%_
                                             _%$%hd4962549916%_
                                             _%$%tl4962649919%_
                                             _%$%e4962749922%_
                                             _%$%hd4962849926%_
                                             _%$%tl4962949929%_
                                             _%$%e4963049932%_
                                             _%$%hd4963149936%_
                                             _%$%tl4963249939%_
                                             _%$%e4964749876%_
                                             _%$%hd4964849880%_
                                             _%$%tl4964949883%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4962949929%_)
                                                (let ((_%__splice5020050201%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl4962949929%_
                                                        '0)))
                                                  (let ((_%$%tl4967549717%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice5020050201%_
                                                            '1)))
                                                        (_%$%target4967349714%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice5020050201%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4967549717%_)
                                                        (_%__match5031850319%_
                                                         _%$%e4962449912%_
                                                         _%$%hd4962549916%_
                                                         _%$%tl4962649919%_
                                                         _%$%e4962749922%_
                                                         _%$%hd4962849926%_
                                                         _%$%tl4962949929%_
                                                         _%__splice5020050201%_
                                                         _%$%target4967349714%_
                                                         _%$%tl4967549717%_)
                                                        (_%$%g4962049687%_))))
                                                (_%$%g4962049687%_)))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4962949929%_)
                                            (let ((_%__splice5020050201%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4962949929%_
                                                    '0)))
                                              (let ((_%$%tl4967549717%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5020050201%_
                                                        '1)))
                                                    (_%$%target4967349714%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5020050201%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4967549717%_)
                                                    (_%__match5031850319%_
                                                     _%$%e4962449912%_
                                                     _%$%hd4962549916%_
                                                     _%$%tl4962649919%_
                                                     _%$%e4962749922%_
                                                     _%$%hd4962849926%_
                                                     _%$%tl4962949929%_
                                                     _%__splice5020050201%_
                                                     _%$%target4967349714%_
                                                     _%$%tl4967549717%_)
                                                    (_%$%g4962049687%_))))
                                            (_%$%g4962049687%_)))))
                                (if (gx#stx-pair/null? _%$%tl4962949929%_)
                                    (let ((_%__splice5020050201%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl4962949929%_
                                            '0)))
                                      (let ((_%$%tl4967549717%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice5020050201%_
                                                '1)))
                                            (_%$%target4967349714%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice5020050201%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl4967549717%_)
                                            (_%__match5031850319%_
                                             _%$%e4962449912%_
                                             _%$%hd4962549916%_
                                             _%$%tl4962649919%_
                                             _%$%e4962749922%_
                                             _%$%hd4962849926%_
                                             _%$%tl4962949929%_
                                             _%__splice5020050201%_
                                             _%$%target4967349714%_
                                             _%$%tl4967549717%_)
                                            (_%$%g4962049687%_))))
                                    (_%$%g4962049687%_)))
                            (if (gx#free-identifier=?
                                 |gerbil/core/more-syntax-sugar[1]#_g50328_|
                                 _%$%hd4963149936%_)
                                (if (gx#stx-pair? _%$%tl4963249939%_)
                                    (let ((_%$%e4966149810%_
                                           (gx#syntax-e _%$%tl4963249939%_)))
                                      (let ((_%$%tl4966349817%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4966149810%_)))
                                            (_%$%hd4966249814%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4966149810%_))))
                                        (if (gx#stx-null? _%$%tl4966349817%_)
                                            (if (gx#stx-null?
                                                 _%$%tl4962949929%_)
                                                (_%__match5029850299%_
                                                 _%$%e4962449912%_
                                                 _%$%hd4962549916%_
                                                 _%$%tl4962649919%_
                                                 _%$%e4962749922%_
                                                 _%$%hd4962849926%_
                                                 _%$%tl4962949929%_
                                                 _%$%e4963049932%_
                                                 _%$%hd4963149936%_
                                                 _%$%tl4963249939%_
                                                 _%$%e4966149810%_
                                                 _%$%hd4966249814%_
                                                 _%$%tl4966349817%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4962949929%_)
                                                    (let ((_%__splice5020050201%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4962949929%_
                                                            '0)))
                                                      (let ((_%$%tl4967549717%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice5020050201%_ '1)))
                    (_%$%target4967349714%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice5020050201%_ '0))))
                (if (gx#stx-null? _%$%tl4967549717%_)
                    (_%__match5031850319%_
                     _%$%e4962449912%_
                     _%$%hd4962549916%_
                     _%$%tl4962649919%_
                     _%$%e4962749922%_
                     _%$%hd4962849926%_
                     _%$%tl4962949929%_
                     _%__splice5020050201%_
                     _%$%target4967349714%_
                     _%$%tl4967549717%_)
                    (_%$%g4962049687%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4962049687%_)))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4962949929%_)
                                                (let ((_%__splice5020050201%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl4962949929%_
                                                        '0)))
                                                  (let ((_%$%tl4967549717%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice5020050201%_
                                                            '1)))
                                                        (_%$%target4967349714%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice5020050201%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4967549717%_)
                                                        (_%__match5031850319%_
                                                         _%$%e4962449912%_
                                                         _%$%hd4962549916%_
                                                         _%$%tl4962649919%_
                                                         _%$%e4962749922%_
                                                         _%$%hd4962849926%_
                                                         _%$%tl4962949929%_
                                                         _%__splice5020050201%_
                                                         _%$%target4967349714%_
                                                         _%$%tl4967549717%_)
                                                        (_%$%g4962049687%_))))
                                                (_%$%g4962049687%_)))))
                                    (if (gx#stx-pair/null? _%$%tl4962949929%_)
                                        (let ((_%__splice5020050201%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4962949929%_
                                                '0)))
                                          (let ((_%$%tl4967549717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice5020050201%_
                                                    '1)))
                                                (_%$%target4967349714%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice5020050201%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4967549717%_)
                                                (_%__match5031850319%_
                                                 _%$%e4962449912%_
                                                 _%$%hd4962549916%_
                                                 _%$%tl4962649919%_
                                                 _%$%e4962749922%_
                                                 _%$%hd4962849926%_
                                                 _%$%tl4962949929%_
                                                 _%__splice5020050201%_
                                                 _%$%target4967349714%_
                                                 _%$%tl4967549717%_)
                                                (_%$%g4962049687%_))))
                                        (_%$%g4962049687%_)))
                                (if (gx#stx-pair/null? _%$%tl4962949929%_)
                                    (let ((_%__splice5020050201%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl4962949929%_
                                            '0)))
                                      (let ((_%$%tl4967549717%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice5020050201%_
                                                '1)))
                                            (_%$%target4967349714%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice5020050201%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl4967549717%_)
                                            (_%__match5031850319%_
                                             _%$%e4962449912%_
                                             _%$%hd4962549916%_
                                             _%$%tl4962649919%_
                                             _%$%e4962749922%_
                                             _%$%hd4962849926%_
                                             _%$%tl4962949929%_
                                             _%__splice5020050201%_
                                             _%$%target4967349714%_
                                             _%$%tl4967549717%_)
                                            (_%$%g4962049687%_))))
                                    (_%$%g4962049687%_)))))
                    (if (gx#stx-pair/null? _%$%tl4962949929%_)
                        (let ((_%__splice5020050201%_
                               (gx#syntax-split-splice->vector
                                _%$%tl4962949929%_
                                '0)))
                          (let ((_%$%tl4967549717%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice5020050201%_ '1)))
                                (_%$%target4967349714%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice5020050201%_ '0))))
                            (if (gx#stx-null? _%$%tl4967549717%_)
                                (_%__match5031850319%_
                                 _%$%e4962449912%_
                                 _%$%hd4962549916%_
                                 _%$%tl4962649919%_
                                 _%$%e4962749922%_
                                 _%$%hd4962849926%_
                                 _%$%tl4962949929%_
                                 _%__splice5020050201%_
                                 _%$%target4967349714%_
                                 _%$%tl4967549717%_)
                                (_%$%g4962049687%_))))
                        (_%$%g4962049687%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4962949929%_)
                                                        (let ((_%__splice5020050201%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4962949929%_
                                                                '0)))
                                                          (let ((_%$%tl4967549717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice5020050201%_ '1)))
                        (_%$%target4967349714%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice5020050201%_ '0))))
                    (if (gx#stx-null? _%$%tl4967549717%_)
                        (_%__match5031850319%_
                         _%$%e4962449912%_
                         _%$%hd4962549916%_
                         _%$%tl4962649919%_
                         _%$%e4962749922%_
                         _%$%hd4962849926%_
                         _%$%tl4962949929%_
                         _%__splice5020050201%_
                         _%$%target4967349714%_
                         _%$%tl4967549717%_)
                        (_%$%g4962049687%_))))
                (_%$%g4962049687%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g4962049687%_))))
                                    (_%$%g4962049687%_))))))
                        (foldr (lambda (_%$%g4997449977%_ _%$%g4997549980%_)
                                 (cons _%$%g4997449977%_ _%$%g4997549980%_))
                               '()
                               _%$%clause4940449471%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4940849480%_
                                           _%$%target4940549474%_
                                           '()))
                                        (_%$%g4938649419%_
                                         _%$%g4938749423%_)))))
                              (_%$%g4938649419%_ _%$%g4938749423%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4939949452%_
                                                   _%$%target4939649446%_
                                                   '()))
                                                (_%$%g4938649419%_
                                                 _%$%g4938749423%_)))))
                                      (_%$%g4938649419%_ _%$%g4938749423%_))))
                              (_%$%g4938649419%_ _%$%g4938749423%_))))
                      (_%$%g4938649419%_ _%$%g4938749423%_)))))
          (_%$%g4938549983%_ _%stx49383%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifier|
      (lambda (_%$stx49991%_)
        (let* ((_%$%g4999550032%_
                (lambda (_%$%g4999650028%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4999650028%_)))
               (_%$%g4999450169%_
                (lambda (_%$%g4999650036%_)
                  (if (gx#stx-pair? _%$%g4999650036%_)
                      (let ((_%$%e5000050039%_
                             (gx#syntax-e _%$%g4999650036%_)))
                        (let ((_%$%hd5000150043%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5000050039%_)))
                              (_%$%tl5000250046%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5000050039%_))))
                          (if (gx#stx-pair? _%$%tl5000250046%_)
                              (let ((_%$%e5000350049%_
                                     (gx#syntax-e _%$%tl5000250046%_)))
                                (let ((_%$%hd5000450053%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5000350049%_)))
                                      (_%$%tl5000550056%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5000350049%_))))
                                  (if (gx#stx-pair? _%$%hd5000450053%_)
                                      (let ((_%$%e5000650059%_
                                             (gx#syntax-e _%$%hd5000450053%_)))
                                        (let ((_%$%hd5000750063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5000650059%_)))
                                              (_%$%tl5000850066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5000650059%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl5000850066%_)
                                              (let ((_g50329_
                                                     (gx#syntax-split-splice
                                                      _%$%tl5000850066%_
                                                      '0)))
                                                (begin
                                                  (let ((_g50330_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g50329_)
                                                               (##values-length
                                                                _g50329_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g50330_ 2)))
                (error "Context expects 2 values" _g50330_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target5000950069%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g50329_
                                                            0)))
                                                        (_%$%tl5001150072%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g50329_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5001150072%_)
                                                        (letrec ((_%$%loop5001250075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd5001050079%_
                                   _%$%components5001650082%_)
                            (if (gx#stx-pair? _%$%hd5001050079%_)
                                (let ((_%$%e5001350084%_
                                       (gx#syntax-e _%$%hd5001050079%_)))
                                  (let ((_%$%lp-hd5001450088%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5001350084%_)))
                                        (_%$%lp-tl5001550091%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5001350084%_))))
                                    (_%$%loop5001250075%_
                                     _%$%lp-tl5001550091%_
                                     (cons _%$%lp-hd5001450088%_
                                           _%$%components5001650082%_))))
                                (let ((_%$%components5001750094%_
                                       (reverse _%$%components5001650082%_)))
                                  (if (gx#stx-pair/null? _%$%tl5000550056%_)
                                      (let ((_g50331_
                                             (gx#syntax-split-splice
                                              _%$%tl5000550056%_
                                              '0)))
                                        (begin
                                          (let ((_g50332_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g50331_)
                                                       (##values-length
                                                        _g50331_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g50332_ 2)))
                                                (error "Context expects 2 values"
                                                       _g50332_)))
                                          (let ((_%$%target5001850097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g50331_ 0)))
                                                (_%$%tl5002050100%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g50331_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl5002050100%_)
                                                (letrec ((_%$%loop5002150103%_
                                                          (lambda (_%$%hd5001950107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body5002550110%_)
                    (if (gx#stx-pair? _%$%hd5001950107%_)
                        (let ((_%$%e5002250112%_
                               (gx#syntax-e _%$%hd5001950107%_)))
                          (let ((_%$%lp-hd5002350116%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5002250112%_)))
                                (_%$%lp-tl5002450119%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5002250112%_))))
                            (_%$%loop5002150103%_
                             _%$%lp-tl5002450119%_
                             (cons _%$%lp-hd5002350116%_
                                   _%$%body5002550110%_))))
                        (let ((_%$%body5002650122%_
                               (reverse _%$%body5002550110%_)))
                          (if (gx#identifier? _%$%hd5000750063%_)
                              (cons (gx#datum->syntax '#f 'with-identifiers)
                                    (cons (cons (cons _%$%hd5000750063%_
                                                      (foldr (lambda (_%$%g5015250157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g5015350160%_)
                       (cons _%$%g5015250157%_ _%$%g5015350160%_))
                     '()
                     _%$%components5001750094%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (foldr (lambda (_%$%g5015450163%_
                                                          _%$%g5015550166%_)
                                                   (cons _%$%g5015450163%_
                                                         _%$%g5015550166%_))
                                                 '()
                                                 _%$%body5002650122%_)))
                              (_%$%g4999550032%_ _%$%g4999650036%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop5002150103%_
                                                   _%$%target5001850097%_
                                                   '()))
                                                (_%$%g4999550032%_
                                                 _%$%g4999650036%_)))))
                                      (_%$%g4999550032%_
                                       _%$%g4999650036%_)))))))
                  (_%$%loop5001250075%_ _%$%target5000950069%_ '()))
                (_%$%g4999550032%_ _%$%g4999650036%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4999550032%_
                                               _%$%g4999650036%_))))
                                      (_%$%g4999550032%_ _%$%g4999650036%_))))
                              (_%$%g4999550032%_ _%$%g4999650036%_))))
                      (_%$%g4999550032%_ _%$%g4999650036%_)))))
          (_%$%g4999450169%_ _%$stx49991%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
      (lambda (_%$stx50175%_)
        (let ((_%$%g5017850185%_
               (lambda (_%$%g5017950181%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5017950181%_))))
          (_%$%g5017850185%_ _%$stx50175%_))))))
