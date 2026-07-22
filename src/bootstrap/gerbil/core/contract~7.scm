(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx61695%_)
      (let* ((_%$%g6169961713%_
              (lambda (_%$%g6170061709%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g6170061709%_)))
             (_%$%g6169861755%_
              (lambda (_%$%g6170061717%_)
                (if (gx#stx-pair? _%$%g6170061717%_)
                    (let ((_%$%e6170261720%_ (gx#syntax-e _%$%g6170061717%_)))
                      (let ((_%$%hd6170361724%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e6170261720%_)))
                            (_%$%tl6170461727%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e6170261720%_))))
                        (if (gx#stx-pair? _%$%tl6170461727%_)
                            (let ((_%$%e6170561730%_
                                   (gx#syntax-e _%$%tl6170461727%_)))
                              (let ((_%$%hd6170661734%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e6170561730%_)))
                                    (_%$%tl6170761737%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e6170561730%_))))
                                (if (gx#stx-null? _%$%tl6170761737%_)
                                    (cons (gx#datum->syntax '#f '?)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'or)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'not)
                                                            (cons _%$%hd6170661734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_%$%g6169961713%_ _%$%g6170061717%_))))
                            (_%$%g6169961713%_ _%$%g6170061717%_))))
                    (_%$%g6169961713%_ _%$%g6170061717%_)))))
        (_%$%g6169861755%_ _%$stx61695%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx61759%_)
      (let* ((_%$%g6176361781%_
              (lambda (_%$%g6176461777%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g6176461777%_)))
             (_%$%g6176261836%_
              (lambda (_%$%g6176461785%_)
                (if (gx#stx-pair? _%$%g6176461785%_)
                    (let ((_%$%e6176761788%_ (gx#syntax-e _%$%g6176461785%_)))
                      (let ((_%$%hd6176861792%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e6176761788%_)))
                            (_%$%tl6176961795%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e6176761788%_))))
                        (if (gx#stx-pair? _%$%tl6176961795%_)
                            (let ((_%$%e6177061798%_
                                   (gx#syntax-e _%$%tl6176961795%_)))
                              (let ((_%$%hd6177161802%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e6177061798%_)))
                                    (_%$%tl6177261805%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e6177061798%_))))
                                (if (gx#stx-pair? _%$%tl6177261805%_)
                                    (let ((_%$%e6177361808%_
                                           (gx#syntax-e _%$%tl6177261805%_)))
                                      (let ((_%$%hd6177461812%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e6177361808%_)))
                                            (_%$%tl6177561815%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e6177361808%_))))
                                        (if (gx#stx-null? _%$%tl6177561815%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'lambda)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'o)
                                                              '())
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'and)
                            (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                        (cons (gx#datum->syntax '#f 'o) '()))
                                  (cons (cons (gx#datum->syntax '#f 'fx>=)
                                              (cons (gx#datum->syntax '#f 'o)
                                                    (cons _%$%hd6177161802%_
                                                          '())))
                                        (cons (cons (gx#datum->syntax '#f 'fx<)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'o)
                                                          (cons _%$%hd6177461812%_
                                                                '())))
                                              '()))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g6176361781%_
                                             _%$%g6176461785%_))))
                                    (_%$%g6176361781%_ _%$%g6176461785%_))))
                            (_%$%g6176361781%_ _%$%g6176461785%_))))
                    (_%$%g6176361781%_ _%$%g6176461785%_)))))
        (_%$%g6176261836%_ _%$stx61759%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx61840%_)
      (let* ((_%$%g6184461862%_
              (lambda (_%$%g6184561858%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g6184561858%_)))
             (_%$%g6184361917%_
              (lambda (_%$%g6184561866%_)
                (if (gx#stx-pair? _%$%g6184561866%_)
                    (let ((_%$%e6184861869%_ (gx#syntax-e _%$%g6184561866%_)))
                      (let ((_%$%hd6184961873%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e6184861869%_)))
                            (_%$%tl6185061876%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e6184861869%_))))
                        (if (gx#stx-pair? _%$%tl6185061876%_)
                            (let ((_%$%e6185161879%_
                                   (gx#syntax-e _%$%tl6185061876%_)))
                              (let ((_%$%hd6185261883%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e6185161879%_)))
                                    (_%$%tl6185361886%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e6185161879%_))))
                                (if (gx#stx-pair? _%$%tl6185361886%_)
                                    (let ((_%$%e6185461889%_
                                           (gx#syntax-e _%$%tl6185361886%_)))
                                      (let ((_%$%hd6185561893%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e6185461889%_)))
                                            (_%$%tl6185661896%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e6185461889%_))))
                                        (if (gx#stx-null? _%$%tl6185661896%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'lambda)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'o)
                                                              '())
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'and)
                            (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                        (cons (gx#datum->syntax '#f 'o) '()))
                                  (cons (cons (gx#datum->syntax '#f 'fx<=)
                                              (cons _%$%hd6185261883%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'o)
                                                          (cons _%$%hd6185561893%_
                                                                '()))))
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g6184461862%_
                                             _%$%g6184561866%_))))
                                    (_%$%g6184461862%_ _%$%g6184561866%_))))
                            (_%$%g6184461862%_ _%$%g6184561866%_))))
                    (_%$%g6184461862%_ _%$%g6184561866%_)))))
        (_%$%g6184361917%_ _%$stx61840%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx61921%_)
      (let* ((_%$%g6192561939%_
              (lambda (_%$%g6192661935%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g6192661935%_)))
             (_%$%g6192461980%_
              (lambda (_%$%g6192661943%_)
                (if (gx#stx-pair? _%$%g6192661943%_)
                    (let ((_%$%e6192861946%_ (gx#syntax-e _%$%g6192661943%_)))
                      (let ((_%$%hd6192961950%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e6192861946%_)))
                            (_%$%tl6193061953%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e6192861946%_))))
                        (if (gx#stx-pair? _%$%tl6193061953%_)
                            (let ((_%$%e6193161956%_
                                   (gx#syntax-e _%$%tl6193061953%_)))
                              (let ((_%$%hd6193261960%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e6193161956%_)))
                                    (_%$%tl6193361963%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e6193161956%_))))
                                (if (gx#stx-null? _%$%tl6193361963%_)
                                    (cons (gx#datum->syntax '#f 'lambda)
                                          (cons (cons (gx#datum->syntax '#f 'o)
                                                      '())
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'and)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'list?)
                                (cons (gx#datum->syntax '#f 'o) '()))
                          (cons (cons (gx#datum->syntax '#f 'andmap)
                                      (cons _%$%hd6193261960%_
                                            (cons (gx#datum->syntax '#f 'o)
                                                  '())))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%g6192561939%_ _%$%g6192661943%_))))
                            (_%$%g6192561939%_ _%$%g6192661943%_))))
                    (_%$%g6192561939%_ _%$%g6192661943%_)))))
        (_%$%g6192461980%_ _%$stx61921%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#one-of|
    (lambda (_%$stx61984%_)
      (let* ((_%$%g6198862008%_
              (lambda (_%$%g6198962004%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g6198962004%_)))
             (_%$%g6198762077%_
              (lambda (_%$%g6198962012%_)
                (if (gx#stx-pair? _%$%g6198962012%_)
                    (let ((_%$%e6199162015%_ (gx#syntax-e _%$%g6198962012%_)))
                      (let ((_%$%hd6199262019%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e6199162015%_)))
                            (_%$%tl6199362022%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e6199162015%_))))
                        (if (gx#stx-pair/null? _%$%tl6199362022%_)
                            (let ((_g105433_
                                   (gx#syntax-split-splice
                                    _%$%tl6199362022%_
                                    '0)))
                              (begin
                                (let ((_g105434_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g105433_)
                                             (##values-length _g105433_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g105434_ 2)))
                                      (error "Context expects 2 values"
                                             _g105434_)))
                                (let ((_%$%target6199462025%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g105433_ 0)))
                                      (_%$%tl6199662028%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g105433_ 1))))
                                  (if (gx#stx-null? _%$%tl6199662028%_)
                                      (letrec ((_%$%loop6199762031%_
                                                (lambda (_%$%hd6199562035%_
                                                         _%$%val6200162038%_)
                                                  (if (gx#stx-pair?
                                                       _%$%hd6199562035%_)
                                                      (let ((_%$%e6199862040%_
                                                             (gx#syntax-e
                                                              _%$%hd6199562035%_)))
                                                        (let ((_%$%lp-hd6199962044%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e6199862040%_)))
                      (_%$%lp-tl6200062047%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e6199862040%_))))
                  (_%$%loop6199762031%_
                   _%$%lp-tl6200062047%_
                   (cons _%$%lp-hd6199962044%_ _%$%val6200162038%_))))
              (let ((_%$%val6200262050%_ (reverse _%$%val6200162038%_)))
                (cons (gx#datum->syntax '#f 'lambda)
                      (cons (cons (gx#datum->syntax '#f 'o) '())
                            (cons (cons (gx#datum->syntax '#f 'or)
                                        (foldr (lambda (_%$%g6206862071%_
                                                        _%$%g6206962074%_)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'o)
                           (cons (cons (gx#datum->syntax '#f 'quasiquote)
                                       (cons _%$%g6206862071%_ '()))
                                 '())))
               _%$%g6206962074%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()
                                               _%$%val6200262050%_))
                                  '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%loop6199762031%_
                                         _%$%target6199462025%_
                                         '()))
                                      (_%$%g6198862008%_ _%$%g6198962012%_)))))
                            (_%$%g6198862008%_ _%$%g6198962012%_))))
                    (_%$%g6198862008%_ _%$%g6198962012%_)))))
        (_%$%g6198762077%_ _%$stx61984%_)))))
