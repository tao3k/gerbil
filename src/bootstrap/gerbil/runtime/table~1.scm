(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx123183%_)
      (let* ((_%$%g123187123205%_
              (lambda (_%$%g123188123201%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g123188123201%_)))
             (_%$%g123186123261%_
              (lambda (_%$%g123188123209%_)
                (if (gx#stx-pair? _%$%g123188123209%_)
                    (let ((_%$%e123191123212%_
                           (gx#syntax-e _%$%g123188123209%_)))
                      (let ((_%$%hd123192123216%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e123191123212%_)))
                            (_%$%tl123193123219%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e123191123212%_))))
                        (if (gx#stx-pair? _%$%tl123193123219%_)
                            (let ((_%$%e123194123222%_
                                   (gx#syntax-e _%$%tl123193123219%_)))
                              (let ((_%$%hd123195123226%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e123194123222%_)))
                                    (_%$%tl123196123229%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e123194123222%_))))
                                (if (gx#stx-pair? _%$%tl123196123229%_)
                                    (let ((_%$%e123197123232%_
                                           (gx#syntax-e _%$%tl123196123229%_)))
                                      (let ((_%$%hd123198123236%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e123197123232%_)))
                                            (_%$%tl123199123239%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e123197123232%_))))
                                        (if (gx#stx-null? _%$%tl123199123239%_)
                                            (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'lock)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '&raw-table-lock)
                                  (cons _%$%hd123195123226%_ '()))
                            '()))
                (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                            (cons (gx#datum->syntax '#f 'lock)
                                  (cons _%$%hd123198123236%_ '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g123187123205%_
                                             _%$%g123188123209%_))))
                                    (_%$%g123187123205%_
                                     _%$%g123188123209%_))))
                            (_%$%g123187123205%_ _%$%g123188123209%_))))
                    (_%$%g123187123205%_ _%$%g123188123209%_)))))
        (_%$%g123186123261%_ _%$stx123183%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx123265%_)
      (let* ((_%$%g123268123290%_
              (lambda (_%$%g123269123286%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g123269123286%_)))
             (_%$%g123267123603%_
              (lambda (_%$%g123269123294%_)
                (if (gx#stx-pair? _%$%g123269123294%_)
                    (let ((_%$%e123273123297%_
                           (gx#syntax-e _%$%g123269123294%_)))
                      (let ((_%$%hd123274123301%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e123273123297%_)))
                            (_%$%tl123275123304%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e123273123297%_))))
                        (if (gx#stx-pair? _%$%tl123275123304%_)
                            (let ((_%$%e123276123307%_
                                   (gx#syntax-e _%$%tl123275123304%_)))
                              (let ((_%$%hd123277123311%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e123276123307%_)))
                                    (_%$%tl123278123314%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e123276123307%_))))
                                (if (gx#stx-pair? _%$%tl123278123314%_)
                                    (let ((_%$%e123279123317%_
                                           (gx#syntax-e _%$%tl123278123314%_)))
                                      (let ((_%$%hd123280123321%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e123279123317%_)))
                                            (_%$%tl123281123324%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e123279123317%_))))
                                        (if (gx#stx-pair? _%$%tl123281123324%_)
                                            (let ((_%$%e123282123327%_
                                                   (gx#syntax-e
                                                    _%$%tl123281123324%_)))
                                              (let ((_%$%hd123283123331%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e123282123327%_)))
                                                    (_%$%tl123284123334%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e123282123327%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl123284123334%_)
                                                    (let* ((_%$%g123359123414%_
                                                            (lambda (_%$%g123360123410%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g123360123410%_)))
                                                           (_%$%g123358123599%_
                                                            (lambda (_%$%g123360123418%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g123360123418%_)
                          (let ((_%$%e123373123421%_
                                 (gx#syntax-e _%$%g123360123418%_)))
                            (let ((_%$%hd123374123425%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e123373123421%_)))
                                  (_%$%tl123375123428%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e123373123421%_))))
                              (if (gx#stx-pair? _%$%tl123375123428%_)
                                  (let ((_%$%e123376123431%_
                                         (gx#syntax-e _%$%tl123375123428%_)))
                                    (let ((_%$%hd123377123435%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e123376123431%_)))
                                          (_%$%tl123378123438%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e123376123431%_))))
                                      (if (gx#stx-pair? _%$%tl123378123438%_)
                                          (let ((_%$%e123379123441%_
                                                 (gx#syntax-e
                                                  _%$%tl123378123438%_)))
                                            (let ((_%$%hd123380123445%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e123379123441%_)))
                                                  (_%$%tl123381123448%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e123379123441%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl123381123448%_)
                                                  (let ((_%$%e123382123451%_
                                                         (gx#syntax-e
                                                          _%$%tl123381123448%_)))
                                                    (let ((_%$%hd123383123455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e123382123451%_)))
                                                          (_%$%tl123384123458%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e123382123451%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl123384123458%_)
                                                          (let ((_%$%e123385123461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl123384123458%_)))
                    (let ((_%$%hd123386123465%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e123385123461%_)))
                          (_%$%tl123387123468%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e123385123461%_))))
                      (if (gx#stx-pair? _%$%tl123387123468%_)
                          (let ((_%$%e123388123471%_
                                 (gx#syntax-e _%$%tl123387123468%_)))
                            (let ((_%$%hd123389123475%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e123388123471%_)))
                                  (_%$%tl123390123478%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e123388123471%_))))
                              (if (gx#stx-pair? _%$%tl123390123478%_)
                                  (let ((_%$%e123391123481%_
                                         (gx#syntax-e _%$%tl123390123478%_)))
                                    (let ((_%$%hd123392123485%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e123391123481%_)))
                                          (_%$%tl123393123488%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e123391123481%_))))
                                      (if (gx#stx-pair? _%$%tl123393123488%_)
                                          (let ((_%$%e123394123491%_
                                                 (gx#syntax-e
                                                  _%$%tl123393123488%_)))
                                            (let ((_%$%hd123395123495%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e123394123491%_)))
                                                  (_%$%tl123396123498%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e123394123491%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl123396123498%_)
                                                  (let ((_%$%e123397123501%_
                                                         (gx#syntax-e
                                                          _%$%tl123396123498%_)))
                                                    (let ((_%$%hd123398123505%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e123397123501%_)))
                                                          (_%$%tl123399123508%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e123397123501%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl123399123508%_)
                                                          (let ((_%$%e123400123511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl123399123508%_)))
                    (let ((_%$%hd123401123515%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e123400123511%_)))
                          (_%$%tl123402123518%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e123400123511%_))))
                      (if (gx#stx-pair? _%$%tl123402123518%_)
                          (let ((_%$%e123403123521%_
                                 (gx#syntax-e _%$%tl123402123518%_)))
                            (let ((_%$%hd123404123525%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e123403123521%_)))
                                  (_%$%tl123405123528%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e123403123521%_))))
                              (if (gx#stx-pair? _%$%tl123405123528%_)
                                  (let ((_%$%e123406123531%_
                                         (gx#syntax-e _%$%tl123405123528%_)))
                                    (let ((_%$%hd123407123535%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e123406123531%_)))
                                          (_%$%tl123408123538%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e123406123531%_))))
                                      (if (gx#stx-null? _%$%tl123408123538%_)
                                          (cons (gx#datum->syntax '#f 'begin)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'def)
                                                            (cons (cons _%$%hd123374123425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax '#f 'size-hint)
                                            (cons '#f '()))
                                      (cons (cons (gx#datum->syntax '#f 'seed)
                                                  (cons '0 '()))
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'make-raw-table)
                                      (cons (gx#datum->syntax '#f 'size-hint)
                                            (cons _%$%hd123280123321%_
                                                  (cons _%$%hd123283123331%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'seed)
                                                              '())))))
                                '())))
              (cons (cons (gx#datum->syntax '#f 'def)
                          (cons (cons _%$%hd123377123435%_
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'size-hint)
                                                  (cons '#f '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'seed)
                                                        (cons '0 '()))
                                                  '())))
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'make-raw-table/lock)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'size-hint)
                                                  (cons _%$%hd123280123321%_
                                                        (cons _%$%hd123283123331%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%$%hd123380123445%_
                                            (cons (gx#datum->syntax '#f 'tab)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'key)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'default)
                                                              '()))))
                                      (cons (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'table)
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         '&raw-table-table)
                                        (cons (gx#datum->syntax '#f 'tab) '()))
                                  '()))
                      (cons (cons (gx#datum->syntax '#f 'seed)
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '&raw-table-seed)
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    '()))
                                        '()))
                            '()))
                (cons (cons (gx#datum->syntax '#f '__table-ref)
                            (cons (gx#datum->syntax '#f 'table)
                                  (cons (gx#datum->syntax '#f 'seed)
                                        (cons _%$%hd123280123321%_
                                              (cons _%$%hd123283123331%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'default)
                        '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'def)
                                      (cons (cons _%$%hd123383123455%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'tab)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'key)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'default)
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'do-raw-table-lock)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'tab)
                                                              (cons (cons _%$%hd123380123445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (gx#datum->syntax '#f 'key)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'default)
                                                    '()))))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons (cons (gx#datum->syntax '#f 'def)
                                            (cons (cons _%$%hd123386123465%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'tab)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'key)
                            (cons (gx#datum->syntax '#f 'value) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'let)
                                                              (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '#f
                                         'table)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-table)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          '()))
                                              '()))
                                  (cons (cons (gx#datum->syntax '#f 'seed)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '&raw-table-seed)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                            (cons (cons (gx#datum->syntax '#f '__table-set!)
                                        (cons (gx#datum->syntax '#f 'table)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'seed)
                                                    (cons _%$%hd123280123321%_
                                                          (cons _%$%hd123283123331%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'key)
                              (cons (gx#datum->syntax '#f 'value)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons '()
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'set!)
                          (cons (cons (gx#datum->syntax '#f '&raw-table-free)
                                      (cons (gx#datum->syntax '#f 'tab) '()))
                                (cons (cons (gx#datum->syntax '#f 'fx-)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '&raw-table-free)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'tab)
                                                              '()))
                                                  (cons '1 '())))
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'set!)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             '&raw-table-count)
                                            (cons (gx#datum->syntax '#f 'tab)
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-count)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'tab)
                            '()))
                (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons '()
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'set!)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             '&raw-table-count)
                                            (cons (gx#datum->syntax '#f 'tab)
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-count)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'tab)
                            '()))
                (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons (gx#datum->syntax '#f 'def)
                                                  (cons (cons _%$%hd123389123475%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'tab)
                            (cons (gx#datum->syntax '#f 'key)
                                  (cons (gx#datum->syntax '#f 'value) '()))))
                (cons (cons (gx#datum->syntax '#f 'when)
                            (cons (cons (gx#datum->syntax '#f 'fx<)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '&raw-table-free)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fxquotient)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'vector-length)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           '&raw-table-table)
                                          (cons (gx#datum->syntax '#f 'tab)
                                                '()))
                                    '()))
                        (cons '4 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '__raw-table-rehash!)
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    '()))
                                        '())))
                      (cons (cons _%$%hd123386123465%_
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (gx#datum->syntax '#f 'key)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'value)
                                                    '()))))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons (cons _%$%hd123392123485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'tab)
                                  (cons (gx#datum->syntax '#f 'key)
                                        (cons (gx#datum->syntax '#f 'value)
                                              '()))))
                      (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (cons _%$%hd123389123475%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons (gx#datum->syntax '#f 'value) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons (cons _%$%hd123395123495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (gx#datum->syntax '#f 'key)
                                              (cons _%$%hd123398123505%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'default)
                                                          '())))))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'table)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '&raw-table-table)
                              (cons (gx#datum->syntax '#f 'tab) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'seed)
                        (cons (cons (gx#datum->syntax '#f '&raw-table-seed)
                                    (cons (gx#datum->syntax '#f 'tab) '()))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '__table-update!)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'table)
                        (cons (gx#datum->syntax '#f 'seed)
                              (cons _%$%hd123280123321%_
                                    (cons _%$%hd123283123331%_
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%$%hd123398123505%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'default)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda)
                                (cons '()
                                      (cons (cons (gx#datum->syntax '#f 'set!)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '&raw-table-free)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'tab)
                            '()))
                (cons (cons (gx#datum->syntax '#f 'fx-)
                            (cons (cons (gx#datum->syntax '#f '&raw-table-free)
                                        (cons (gx#datum->syntax '#f 'tab) '()))
                                  (cons '1 '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'set!)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '&raw-table-count)
                            (cons (gx#datum->syntax '#f 'tab) '()))
                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '&raw-table-count)
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    '()))
                                        (cons '1 '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons '()
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'set!)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '&raw-table-count)
                            (cons (gx#datum->syntax '#f 'tab) '()))
                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '&raw-table-count)
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    '()))
                                        (cons '1 '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons (cons _%$%hd123398123505%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%$%hd123398123505%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'default)
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (cons (cons (gx#datum->syntax '#f 'when)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fx<)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '&raw-table-free)
                              (cons (gx#datum->syntax '#f 'tab) '()))
                        (cons (cons (gx#datum->syntax '#f 'fxquotient)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-length)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '&raw-table-table)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'tab)
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons '4 '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '__raw-table-rehash!)
                        (cons (gx#datum->syntax '#f 'tab) '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons _%$%hd123395123495%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%$%hd123398123505%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%$%hd123401123515%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%$%hd123398123505%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'default)
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'do-raw-table-lock)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (cons _%$%hd123398123505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (gx#datum->syntax '#f 'key)
                                          (cons _%$%hd123398123505%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'default)
                                                      '())))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%$%hd123404123525%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'let)
                                                          (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'table)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '&raw-table-table)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'tab)
                                                      '()))
                                          '()))
                              (cons (cons (gx#datum->syntax '#f 'seed)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '&raw-table-seed)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'tab)
                                                            '()))
                                                '()))
                                    '()))
                        (cons (cons (gx#datum->syntax '#f '__table-del!)
                                    (cons (gx#datum->syntax '#f 'table)
                                          (cons (gx#datum->syntax '#f 'seed)
                                                (cons _%$%hd123280123321%_
                                                      (cons _%$%hd123283123331%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'key)
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons '()
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'set!)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '&raw-table-count)
                            (cons (gx#datum->syntax '#f 'tab) '()))
                      (cons (cons (gx#datum->syntax '#f 'fx-)
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '&raw-table-count)
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    '()))
                                        (cons '1 '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons (cons _%$%hd123407123535%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'tab)
                        (cons (gx#datum->syntax '#f 'key) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'do-raw-table-lock)
                        (cons (gx#datum->syntax '#f 'tab)
                              (cons (cons _%$%hd123404123525%_
                                          (cons (gx#datum->syntax '#f 'tab)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'key)
                                                      '())))
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g123359123414%_
                                           _%$%g123360123418%_))))
                                  (_%$%g123359123414%_ _%$%g123360123418%_))))
                          (_%$%g123359123414%_ _%$%g123360123418%_))))
                  (_%$%g123359123414%_ _%$%g123360123418%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g123359123414%_
                                                   _%$%g123360123418%_))))
                                          (_%$%g123359123414%_
                                           _%$%g123360123418%_))))
                                  (_%$%g123359123414%_ _%$%g123360123418%_))))
                          (_%$%g123359123414%_ _%$%g123360123418%_))))
                  (_%$%g123359123414%_ _%$%g123360123418%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g123359123414%_
                                                   _%$%g123360123418%_))))
                                          (_%$%g123359123414%_
                                           _%$%g123360123418%_))))
                                  (_%$%g123359123414%_ _%$%g123360123418%_))))
                          (_%$%g123359123414%_ _%$%g123360123418%_)))))
              (_%$%g123358123599%_
               (list (gx#stx-identifier
                      _%$%hd123277123311%_
                      '"make-"
                      _%$%hd123277123311%_)
                     (gx#stx-identifier
                      _%$%hd123277123311%_
                      '"make-"
                      _%$%hd123277123311%_
                      '"/lock")
                     (gx#stx-identifier
                      _%$%hd123277123311%_
                      _%$%hd123277123311%_
                      '"-ref")
                     (gx#stx-identifier
                      _%$%hd123277123311%_
                      _%$%hd123277123311%_
                      '"-ref/lock")
                     (gx#stx-identifier
                      _%$%hd123277123311%_
                      '"__"
                      _%$%hd123277123311%_
                      '"-set!")
                     (gx#stx-identifier
                      _%$%hd123277123311%_
                      _%$%hd123277123311%_
                      '"-set!")
                     (gx#stx-identifier
                      _%$%hd123277123311%_
                      _%$%hd123277123311%_
                      '"-set!/lock")
                     (gx#stx-identifier
                      _%$%hd123277123311%_
                      '"__"
                      _%$%hd123277123311%_
                      '"-update!")
                     (gx#stx-identifier
                      _%$%hd123277123311%_
                      _%$%hd123277123311%_
                      '"-update!")
                     (gx#stx-identifier
                      _%$%hd123277123311%_
                      _%$%hd123277123311%_
                      '"-update!/lock")
                     (gx#stx-identifier
                      _%$%hd123277123311%_
                      _%$%hd123277123311%_
                      '"-delete!")
                     (gx#stx-identifier
                      _%$%hd123277123311%_
                      _%$%hd123277123311%_
                      '"-delete!/lock"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g123268123290%_
                                                     _%$%g123269123294%_))))
                                            (_%$%g123268123290%_
                                             _%$%g123269123294%_))))
                                    (_%$%g123268123290%_
                                     _%$%g123269123294%_))))
                            (_%$%g123268123290%_ _%$%g123269123294%_))))
                    (_%$%g123268123290%_ _%$%g123269123294%_)))))
        (_%$%g123267123603%_ _%stx123265%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx123607%_)
      (let* ((_%$%g123611123633%_
              (lambda (_%$%g123612123629%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g123612123629%_)))
             (_%$%g123610123702%_
              (lambda (_%$%g123612123637%_)
                (if (gx#stx-pair? _%$%g123612123637%_)
                    (let ((_%$%e123616123640%_
                           (gx#syntax-e _%$%g123612123637%_)))
                      (let ((_%$%hd123617123644%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e123616123640%_)))
                            (_%$%tl123618123647%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e123616123640%_))))
                        (if (gx#stx-pair? _%$%tl123618123647%_)
                            (let ((_%$%e123619123650%_
                                   (gx#syntax-e _%$%tl123618123647%_)))
                              (let ((_%$%hd123620123654%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e123619123650%_)))
                                    (_%$%tl123621123657%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e123619123650%_))))
                                (if (gx#stx-pair? _%$%tl123621123657%_)
                                    (let ((_%$%e123622123660%_
                                           (gx#syntax-e _%$%tl123621123657%_)))
                                      (let ((_%$%hd123623123664%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e123622123660%_)))
                                            (_%$%tl123624123667%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e123622123660%_))))
                                        (if (gx#stx-pair? _%$%tl123624123667%_)
                                            (let ((_%$%e123625123670%_
                                                   (gx#syntax-e
                                                    _%$%tl123624123667%_)))
                                              (let ((_%$%hd123626123674%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e123625123670%_)))
                                                    (_%$%tl123627123677%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e123625123670%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl123627123677%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'next-probe)
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons _%$%hd123620123654%_
                                                (cons _%$%hd123623123664%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fx*)
                          (cons _%$%hd123623123664%_
                                (cons _%$%hd123623123664%_ '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                    (cons (gx#datum->syntax '#f 'next-probe)
                                          (cons _%$%hd123626123674%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g123611123633%_
                                                     _%$%g123612123637%_))))
                                            (_%$%g123611123633%_
                                             _%$%g123612123637%_))))
                                    (_%$%g123611123633%_
                                     _%$%g123612123637%_))))
                            (_%$%g123611123633%_ _%$%g123612123637%_))))
                    (_%$%g123611123633%_ _%$%g123612123637%_)))))
        (_%$%g123610123702%_ _%$stx123607%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx123706%_)
      (let* ((_%$%g123710123744%_
              (lambda (_%$%g123711123740%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g123711123740%_)))
             (_%$%g123709123855%_
              (lambda (_%$%g123711123748%_)
                (if (gx#stx-pair? _%$%g123711123748%_)
                    (let ((_%$%e123718123751%_
                           (gx#syntax-e _%$%g123711123748%_)))
                      (let ((_%$%hd123719123755%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e123718123751%_)))
                            (_%$%tl123720123758%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e123718123751%_))))
                        (if (gx#stx-pair? _%$%tl123720123758%_)
                            (let ((_%$%e123721123761%_
                                   (gx#syntax-e _%$%tl123720123758%_)))
                              (let ((_%$%hd123722123765%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e123721123761%_)))
                                    (_%$%tl123723123768%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e123721123761%_))))
                                (if (gx#stx-pair? _%$%tl123723123768%_)
                                    (let ((_%$%e123724123771%_
                                           (gx#syntax-e _%$%tl123723123768%_)))
                                      (let ((_%$%hd123725123775%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e123724123771%_)))
                                            (_%$%tl123726123778%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e123724123771%_))))
                                        (if (gx#stx-pair? _%$%tl123726123778%_)
                                            (let ((_%$%e123727123781%_
                                                   (gx#syntax-e
                                                    _%$%tl123726123778%_)))
                                              (let ((_%$%hd123728123785%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e123727123781%_)))
                                                    (_%$%tl123729123788%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e123727123781%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl123729123788%_)
                                                    (let ((_%$%e123730123791%_
                                                           (gx#syntax-e
                                                            _%$%tl123729123788%_)))
                                                      (let ((_%$%hd123731123795%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e123730123791%_)))
                    (_%$%tl123732123798%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e123730123791%_))))
                (if (gx#stx-pair? _%$%tl123732123798%_)
                    (let ((_%$%e123733123801%_
                           (gx#syntax-e _%$%tl123732123798%_)))
                      (let ((_%$%hd123734123805%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e123733123801%_)))
                            (_%$%tl123735123808%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e123733123801%_))))
                        (if (gx#stx-pair? _%$%tl123735123808%_)
                            (let ((_%$%e123736123811%_
                                   (gx#syntax-e _%$%tl123735123808%_)))
                              (let ((_%$%hd123737123815%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e123736123811%_)))
                                    (_%$%tl123738123818%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e123736123811%_))))
                                (if (gx#stx-null? _%$%tl123738123818%_)
                                    (cons (gx#datum->syntax '#f 'let*)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'h)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'fxxor)
                                (cons (cons _%$%hd123728123785%_
                                            (cons _%$%hd123734123805%_ '()))
                                      (cons _%$%hd123725123775%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'size)
                          (cons (cons (gx#datum->syntax '#f 'vector-length)
                                      (cons _%$%hd123722123765%_ '()))
                                '()))
                    (cons (cons (gx#datum->syntax '#f 'entries)
                                (cons (cons (gx#datum->syntax '#f 'fxquotient)
                                            (cons (gx#datum->syntax '#f 'size)
                                                  (cons '2 '())))
                                      '()))
                          (cons (cons (gx#datum->syntax '#f 'start)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'fxarithmetic-shift-left)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'fxmodulo)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'h)
                            (cons (gx#datum->syntax '#f 'entries) '())))
                (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'let)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'loop)
                          (cons (cons (cons (gx#datum->syntax '#f 'probe)
                                            (cons (gx#datum->syntax '#f 'start)
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'i)
                                                  (cons '1 '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'deleted)
                                                        (cons '#f '()))
                                                  '())))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'k)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'vector-ref)
                            (cons _%$%hd123722123765%_
                                  (cons (gx#datum->syntax '#f 'probe) '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'cond)
                                                              (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '#f
                                         'eq?)
                                        (cons (gx#datum->syntax '#f 'k)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'macro-unused-obj)
                                                          '())
                                                    '())))
                                  (cons _%$%hd123737123815%_ '()))
                            (cons (cons (cons (gx#datum->syntax '#f 'eq?)
                                              (cons (gx#datum->syntax '#f 'k)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'macro-deleted-obj)
                        '())
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'loop)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe-step)
                        (cons (gx#datum->syntax '#f 'start)
                              (cons (gx#datum->syntax '#f 'i)
                                    (cons (gx#datum->syntax '#f 'size) '()))))
                  (cons (cons (gx#datum->syntax '#f 'fx+)
                              (cons (gx#datum->syntax '#f 'i) (cons '1 '())))
                        (cons (cons (gx#datum->syntax '#f 'or)
                                    (cons (gx#datum->syntax '#f 'deleted)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                '())))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (cons _%$%hd123731123795%_
                                                    (cons _%$%hd123734123805%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-ref)
                                                          (cons _%$%hd123722123765%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'fx+)
                                    (cons (gx#datum->syntax '#f 'probe)
                                          (cons '1 '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'else)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'loop)
                        (cons (cons (gx#datum->syntax '#f 'probe-step)
                                    (cons (gx#datum->syntax '#f 'start)
                                          (cons (gx#datum->syntax '#f 'i)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'size)
                                                      '()))))
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'i)
                                                (cons '1 '())))
                                    (cons (gx#datum->syntax '#f 'deleted)
                                          '()))))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%g123710123744%_
                                     _%$%g123711123748%_))))
                            (_%$%g123710123744%_ _%$%g123711123748%_))))
                    (_%$%g123710123744%_ _%$%g123711123748%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g123710123744%_
                                                     _%$%g123711123748%_))))
                                            (_%$%g123710123744%_
                                             _%$%g123711123748%_))))
                                    (_%$%g123710123744%_
                                     _%$%g123711123748%_))))
                            (_%$%g123710123744%_ _%$%g123711123748%_))))
                    (_%$%g123710123744%_ _%$%g123711123748%_)))))
        (_%$%g123709123855%_ _%$stx123706%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx123859%_)
      (let* ((_%$%g123863123905%_
              (lambda (_%$%g123864123901%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g123864123901%_)))
             (_%$%g123862124044%_
              (lambda (_%$%g123864123909%_)
                (if (gx#stx-pair? _%$%g123864123909%_)
                    (let ((_%$%e123873123912%_
                           (gx#syntax-e _%$%g123864123909%_)))
                      (let ((_%$%hd123874123916%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e123873123912%_)))
                            (_%$%tl123875123919%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e123873123912%_))))
                        (if (gx#stx-pair? _%$%tl123875123919%_)
                            (let ((_%$%e123876123922%_
                                   (gx#syntax-e _%$%tl123875123919%_)))
                              (let ((_%$%hd123877123926%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e123876123922%_)))
                                    (_%$%tl123878123929%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e123876123922%_))))
                                (if (gx#stx-pair? _%$%tl123878123929%_)
                                    (let ((_%$%e123879123932%_
                                           (gx#syntax-e _%$%tl123878123929%_)))
                                      (let ((_%$%hd123880123936%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e123879123932%_)))
                                            (_%$%tl123881123939%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e123879123932%_))))
                                        (if (gx#stx-pair? _%$%tl123881123939%_)
                                            (let ((_%$%e123882123942%_
                                                   (gx#syntax-e
                                                    _%$%tl123881123939%_)))
                                              (let ((_%$%hd123883123946%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e123882123942%_)))
                                                    (_%$%tl123884123949%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e123882123942%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl123884123949%_)
                                                    (let ((_%$%e123885123952%_
                                                           (gx#syntax-e
                                                            _%$%tl123884123949%_)))
                                                      (let ((_%$%hd123886123956%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e123885123952%_)))
                    (_%$%tl123887123959%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e123885123952%_))))
                (if (gx#stx-pair? _%$%tl123887123959%_)
                    (let ((_%$%e123888123962%_
                           (gx#syntax-e _%$%tl123887123959%_)))
                      (let ((_%$%hd123889123966%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e123888123962%_)))
                            (_%$%tl123890123969%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e123888123962%_))))
                        (if (gx#stx-pair? _%$%tl123890123969%_)
                            (let ((_%$%e123891123972%_
                                   (gx#syntax-e _%$%tl123890123969%_)))
                              (let ((_%$%hd123892123976%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e123891123972%_)))
                                    (_%$%tl123893123979%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e123891123972%_))))
                                (if (gx#stx-pair? _%$%tl123893123979%_)
                                    (let ((_%$%e123894123982%_
                                           (gx#syntax-e _%$%tl123893123979%_)))
                                      (let ((_%$%hd123895123986%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e123894123982%_)))
                                            (_%$%tl123896123989%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e123894123982%_))))
                                        (if (gx#stx-pair? _%$%tl123896123989%_)
                                            (let ((_%$%e123897123992%_
                                                   (gx#syntax-e
                                                    _%$%tl123896123989%_)))
                                              (let ((_%$%hd123898123996%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e123897123992%_)))
                                                    (_%$%tl123899123999%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e123897123992%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl123899123999%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let*)
                                                          (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'h)
                                    (cons (cons (gx#datum->syntax '#f 'fxxor)
                                                (cons (cons _%$%hd123883123946%_
                                                            (cons _%$%hd123889123966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%$%hd123880123936%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (cons (cons (gx#datum->syntax '#f 'size)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'vector-length)
                                                      (cons _%$%hd123877123926%_
                                                            '()))
                                                '()))
                                    (cons (cons (gx#datum->syntax '#f 'entries)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'fxquotient)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'size)
                          (cons '2 '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'start)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fxarithmetic-shift-left)
                          (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                      (cons (gx#datum->syntax '#f 'h)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'entries)
                                                  '())))
                                (cons '1 '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        (cons (cons (gx#datum->syntax '#f 'let)
                                    (cons (gx#datum->syntax '#f 'loop)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'probe)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'start)
                          '()))
              (cons (cons (gx#datum->syntax '#f 'i) (cons '1 '()))
                    (cons (cons (gx#datum->syntax '#f 'deleted) (cons '#f '()))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'let)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'k)
                                (cons (cons (gx#datum->syntax '#f 'vector-ref)
                                            (cons _%$%hd123877123926%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'probe)
                                                        '())))
                                      '()))
                          (cons (cons (gx#datum->syntax '#f 'cond)
                                      (cons (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'eq?)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'k)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'macro-unused-obj)
                                  '())
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'deleted)
                            (cons (cons (gx#datum->syntax '#f 'begin)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'vector-set!)
                                                    (cons _%$%hd123877123926%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'deleted)
                        (cons _%$%hd123889123966%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd123877123926%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'fx+)
                                    (cons (gx#datum->syntax '#f 'deleted)
                                          (cons '1 '())))
                              (cons _%$%hd123892123976%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%$%hd123898123996%_
                                                                '())
                                                          '()))))
                                  (cons (cons (gx#datum->syntax '#f 'begin)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd123877123926%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'probe)
                              (cons _%$%hd123889123966%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-set!)
                        (cons _%$%hd123877123926%_
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                (cons '1 '())))
                                    (cons _%$%hd123892123976%_ '()))))
                  (cons (cons _%$%hd123895123986%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'eq?)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'k)
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'macro-deleted-obj)
                                        '())
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'loop)
                            (cons (cons (gx#datum->syntax '#f 'probe-step)
                                        (cons (gx#datum->syntax '#f 'start)
                                              (cons (gx#datum->syntax '#f 'i)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'size)
                                                          '()))))
                                  (cons (cons (gx#datum->syntax '#f 'fx+)
                                              (cons (gx#datum->syntax '#f 'i)
                                                    (cons '1 '())))
                                        (cons (cons (gx#datum->syntax '#f 'or)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'deleted)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (cons _%$%hd123886123956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd123889123966%_
                                  (cons (gx#datum->syntax '#f 'k) '())))
                      (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                  (cons _%$%hd123877123926%_
                                        (cons (gx#datum->syntax '#f 'probe)
                                              (cons _%$%hd123889123966%_
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                        (cons _%$%hd123877123926%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fx+)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe)
                        (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%$%hd123892123976%_
                                                          '()))))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'else)
                            (cons (cons (gx#datum->syntax '#f 'loop)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'probe-step)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'start)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'i)
                        (cons (gx#datum->syntax '#f 'size) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fx+)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'i)
                        (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'deleted)
                                                          '()))))
                                  '()))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '())))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g123863123905%_
                                                     _%$%g123864123909%_))))
                                            (_%$%g123863123905%_
                                             _%$%g123864123909%_))))
                                    (_%$%g123863123905%_
                                     _%$%g123864123909%_))))
                            (_%$%g123863123905%_ _%$%g123864123909%_))))
                    (_%$%g123863123905%_ _%$%g123864123909%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g123863123905%_
                                                     _%$%g123864123909%_))))
                                            (_%$%g123863123905%_
                                             _%$%g123864123909%_))))
                                    (_%$%g123863123905%_
                                     _%$%g123864123909%_))))
                            (_%$%g123863123905%_ _%$%g123864123909%_))))
                    (_%$%g123863123905%_ _%$%g123864123909%_)))))
        (_%$%g123862124044%_ _%$stx123859%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx124048%_)
      (let* ((_%$%g124052124098%_
              (lambda (_%$%g124053124094%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g124053124094%_)))
             (_%$%g124051124251%_
              (lambda (_%$%g124053124102%_)
                (if (gx#stx-pair? _%$%g124053124102%_)
                    (let ((_%$%e124063124105%_
                           (gx#syntax-e _%$%g124053124102%_)))
                      (let ((_%$%hd124064124109%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e124063124105%_)))
                            (_%$%tl124065124112%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e124063124105%_))))
                        (if (gx#stx-pair? _%$%tl124065124112%_)
                            (let ((_%$%e124066124115%_
                                   (gx#syntax-e _%$%tl124065124112%_)))
                              (let ((_%$%hd124067124119%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e124066124115%_)))
                                    (_%$%tl124068124122%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e124066124115%_))))
                                (if (gx#stx-pair? _%$%tl124068124122%_)
                                    (let ((_%$%e124069124125%_
                                           (gx#syntax-e _%$%tl124068124122%_)))
                                      (let ((_%$%hd124070124129%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e124069124125%_)))
                                            (_%$%tl124071124132%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e124069124125%_))))
                                        (if (gx#stx-pair? _%$%tl124071124132%_)
                                            (let ((_%$%e124072124135%_
                                                   (gx#syntax-e
                                                    _%$%tl124071124132%_)))
                                              (let ((_%$%hd124073124139%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e124072124135%_)))
                                                    (_%$%tl124074124142%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e124072124135%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl124074124142%_)
                                                    (let ((_%$%e124075124145%_
                                                           (gx#syntax-e
                                                            _%$%tl124074124142%_)))
                                                      (let ((_%$%hd124076124149%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e124075124145%_)))
                    (_%$%tl124077124152%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e124075124145%_))))
                (if (gx#stx-pair? _%$%tl124077124152%_)
                    (let ((_%$%e124078124155%_
                           (gx#syntax-e _%$%tl124077124152%_)))
                      (let ((_%$%hd124079124159%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e124078124155%_)))
                            (_%$%tl124080124162%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e124078124155%_))))
                        (if (gx#stx-pair? _%$%tl124080124162%_)
                            (let ((_%$%e124081124165%_
                                   (gx#syntax-e _%$%tl124080124162%_)))
                              (let ((_%$%hd124082124169%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e124081124165%_)))
                                    (_%$%tl124083124172%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e124081124165%_))))
                                (if (gx#stx-pair? _%$%tl124083124172%_)
                                    (let ((_%$%e124084124175%_
                                           (gx#syntax-e _%$%tl124083124172%_)))
                                      (let ((_%$%hd124085124179%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e124084124175%_)))
                                            (_%$%tl124086124182%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e124084124175%_))))
                                        (if (gx#stx-pair? _%$%tl124086124182%_)
                                            (let ((_%$%e124087124185%_
                                                   (gx#syntax-e
                                                    _%$%tl124086124182%_)))
                                              (let ((_%$%hd124088124189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e124087124185%_)))
                                                    (_%$%tl124089124192%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e124087124185%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl124089124192%_)
                                                    (let ((_%$%e124090124195%_
                                                           (gx#syntax-e
                                                            _%$%tl124089124192%_)))
                                                      (let ((_%$%hd124091124199%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e124090124195%_)))
                    (_%$%tl124092124202%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e124090124195%_))))
                (if (gx#stx-null? _%$%tl124092124202%_)
                    (cons (gx#datum->syntax '#f 'let*)
                          (cons (cons (cons (gx#datum->syntax '#f 'h)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'fxxor)
                                                        (cons (cons _%$%hd124073124139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd124079124159%_ '()))
                      (cons _%$%hd124070124129%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'size)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'vector-length)
                                                              (cons _%$%hd124067124119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'entries)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'fxquotient)
                            (cons (gx#datum->syntax '#f 'size) (cons '2 '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'start)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'fxarithmetic-shift-left)
                                  (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                              (cons (gx#datum->syntax '#f 'h)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'entries)
                                                          '())))
                                        (cons '1 '())))
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons (gx#datum->syntax '#f 'loop)
                                                  (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'probe)
                            (cons (gx#datum->syntax '#f 'start) '()))
                      (cons (cons (gx#datum->syntax '#f 'i) (cons '1 '()))
                            (cons (cons (gx#datum->syntax '#f 'deleted)
                                        (cons '#f '()))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (gx#datum->syntax '#f 'k)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'vector-ref)
                                                    (cons _%$%hd124067124119%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (gx#datum->syntax '#f 'cond)
                                              (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'eq?)
                        (cons (gx#datum->syntax '#f 'k)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'macro-unused-obj)
                                          '())
                                    '())))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons (gx#datum->syntax '#f 'deleted)
                                    (cons (cons (gx#datum->syntax '#f 'begin)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'vector-set!)
                                                            (cons _%$%hd124067124119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'deleted)
                                (cons _%$%hd124079124159%_ '()))))
              (cons (cons (gx#datum->syntax '#f 'vector-set!)
                          (cons _%$%hd124067124119%_
                                (cons (cons (gx#datum->syntax '#f 'fx+)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'deleted)
                                                  (cons '1 '())))
                                      (cons (cons _%$%hd124082124169%_
                                                  (cons _%$%hd124085124179%_
                                                        '()))
                                            '()))))
                    (cons (cons _%$%hd124091124199%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'vector-set!)
                          (cons _%$%hd124067124119%_
                                (cons (gx#datum->syntax '#f 'probe)
                                      (cons _%$%hd124079124159%_ '()))))
                    (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                (cons _%$%hd124067124119%_
                                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'probe)
                                                        (cons '1 '())))
                                            (cons (cons _%$%hd124082124169%_
                                                        (cons _%$%hd124085124179%_
                                                              '()))
                                                  '()))))
                          (cons (cons _%$%hd124088124189%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'eq?)
                              (cons (gx#datum->syntax '#f 'k)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'macro-deleted-obj)
                                                '())
                                          '())))
                        (cons (cons (gx#datum->syntax '#f 'loop)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'probe-step)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'start)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'i)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'size)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'fx+)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'i)
                                                            (cons '1 '())))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'or)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'deleted)
                          (cons (gx#datum->syntax '#f 'probe) '())))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '()))
                  (cons (cons (cons _%$%hd124076124149%_
                                    (cons _%$%hd124079124159%_
                                          (cons (gx#datum->syntax '#f 'k)
                                                '())))
                              (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                          (cons _%$%hd124067124119%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'probe)
                                                      (cons _%$%hd124079124159%_
                                                            '()))))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons _%$%hd124067124119%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fx+)
                          (cons (gx#datum->syntax '#f 'probe) (cons '1 '())))
                    (cons (cons _%$%hd124082124169%_
                                (cons (cons (gx#datum->syntax '#f 'vector-ref)
                                            (cons _%$%hd124067124119%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'fx+)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'probe)
                            (cons '1 '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (cons (cons (gx#datum->syntax '#f 'else)
                                    (cons (cons (gx#datum->syntax '#f 'loop)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'probe-step)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'start)
                          (cons (gx#datum->syntax '#f 'i)
                                (cons (gx#datum->syntax '#f 'size) '()))))
              (cons (cons (gx#datum->syntax '#f 'fx+)
                          (cons (gx#datum->syntax '#f 'i) (cons '1 '())))
                    (cons (gx#datum->syntax '#f 'deleted) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (_%$%g124052124098%_ _%$%g124053124102%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g124052124098%_
                                                     _%$%g124053124102%_))))
                                            (_%$%g124052124098%_
                                             _%$%g124053124102%_))))
                                    (_%$%g124052124098%_
                                     _%$%g124053124102%_))))
                            (_%$%g124052124098%_ _%$%g124053124102%_))))
                    (_%$%g124052124098%_ _%$%g124053124102%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g124052124098%_
                                                     _%$%g124053124102%_))))
                                            (_%$%g124052124098%_
                                             _%$%g124053124102%_))))
                                    (_%$%g124052124098%_
                                     _%$%g124053124102%_))))
                            (_%$%g124052124098%_ _%$%g124053124102%_))))
                    (_%$%g124052124098%_ _%$%g124053124102%_)))))
        (_%$%g124051124251%_ _%$stx124048%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx124255%_)
      (let* ((_%$%g124259124293%_
              (lambda (_%$%g124260124289%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g124260124289%_)))
             (_%$%g124258124404%_
              (lambda (_%$%g124260124297%_)
                (if (gx#stx-pair? _%$%g124260124297%_)
                    (let ((_%$%e124267124300%_
                           (gx#syntax-e _%$%g124260124297%_)))
                      (let ((_%$%hd124268124304%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e124267124300%_)))
                            (_%$%tl124269124307%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e124267124300%_))))
                        (if (gx#stx-pair? _%$%tl124269124307%_)
                            (let ((_%$%e124270124310%_
                                   (gx#syntax-e _%$%tl124269124307%_)))
                              (let ((_%$%hd124271124314%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e124270124310%_)))
                                    (_%$%tl124272124317%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e124270124310%_))))
                                (if (gx#stx-pair? _%$%tl124272124317%_)
                                    (let ((_%$%e124273124320%_
                                           (gx#syntax-e _%$%tl124272124317%_)))
                                      (let ((_%$%hd124274124324%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e124273124320%_)))
                                            (_%$%tl124275124327%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e124273124320%_))))
                                        (if (gx#stx-pair? _%$%tl124275124327%_)
                                            (let ((_%$%e124276124330%_
                                                   (gx#syntax-e
                                                    _%$%tl124275124327%_)))
                                              (let ((_%$%hd124277124334%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e124276124330%_)))
                                                    (_%$%tl124278124337%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e124276124330%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl124278124337%_)
                                                    (let ((_%$%e124279124340%_
                                                           (gx#syntax-e
                                                            _%$%tl124278124337%_)))
                                                      (let ((_%$%hd124280124344%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e124279124340%_)))
                    (_%$%tl124281124347%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e124279124340%_))))
                (if (gx#stx-pair? _%$%tl124281124347%_)
                    (let ((_%$%e124282124350%_
                           (gx#syntax-e _%$%tl124281124347%_)))
                      (let ((_%$%hd124283124354%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e124282124350%_)))
                            (_%$%tl124284124357%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e124282124350%_))))
                        (if (gx#stx-pair? _%$%tl124284124357%_)
                            (let ((_%$%e124285124360%_
                                   (gx#syntax-e _%$%tl124284124357%_)))
                              (let ((_%$%hd124286124364%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e124285124360%_)))
                                    (_%$%tl124287124367%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e124285124360%_))))
                                (if (gx#stx-null? _%$%tl124287124367%_)
                                    (cons (gx#datum->syntax '#f 'let*)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'h)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'fxxor)
                                (cons (cons _%$%hd124277124334%_
                                            (cons _%$%hd124283124354%_ '()))
                                      (cons _%$%hd124274124324%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'size)
                          (cons (cons (gx#datum->syntax '#f 'vector-length)
                                      (cons _%$%hd124271124314%_ '()))
                                '()))
                    (cons (cons (gx#datum->syntax '#f 'entries)
                                (cons (cons (gx#datum->syntax '#f 'fxquotient)
                                            (cons (gx#datum->syntax '#f 'size)
                                                  (cons '2 '())))
                                      '()))
                          (cons (cons (gx#datum->syntax '#f 'start)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'fxarithmetic-shift-left)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'fxmodulo)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'h)
                            (cons (gx#datum->syntax '#f 'entries) '())))
                (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'let)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'loop)
                          (cons (cons (cons (gx#datum->syntax '#f 'probe)
                                            (cons (gx#datum->syntax '#f 'start)
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'i)
                                                  (cons '1 '()))
                                            '()))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'k)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'vector-ref)
                            (cons _%$%hd124271124314%_
                                  (cons (gx#datum->syntax '#f 'probe) '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'cond)
                                                              (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '#f
                                         'eq?)
                                        (cons (gx#datum->syntax '#f 'k)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'macro-unused-obj)
                                                          '())
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'void) '())
                                        '()))
                            (cons (cons (cons (gx#datum->syntax '#f 'eq?)
                                              (cons (gx#datum->syntax '#f 'k)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'macro-deleted-obj)
                        '())
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'loop)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe-step)
                        (cons (gx#datum->syntax '#f 'start)
                              (cons (gx#datum->syntax '#f 'i)
                                    (cons (gx#datum->syntax '#f 'size) '()))))
                  (cons (cons (gx#datum->syntax '#f 'fx+)
                              (cons (gx#datum->syntax '#f 'i) (cons '1 '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (cons _%$%hd124280124344%_
                                                    (cons _%$%hd124283124354%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd124271124314%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'probe)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'macro-deleted-obj)
                                          '())
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-set!)
                        (cons _%$%hd124271124314%_
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                (cons '1 '())))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'macro-absent-obj)
                                                '())
                                          '()))))
                  (cons (cons _%$%hd124286124364%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'else)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'loop)
                        (cons (cons (gx#datum->syntax '#f 'probe-step)
                                    (cons (gx#datum->syntax '#f 'start)
                                          (cons (gx#datum->syntax '#f 'i)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'size)
                                                      '()))))
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'i)
                                                (cons '1 '())))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%g124259124293%_
                                     _%$%g124260124297%_))))
                            (_%$%g124259124293%_ _%$%g124260124297%_))))
                    (_%$%g124259124293%_ _%$%g124260124297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g124259124293%_
                                                     _%$%g124260124297%_))))
                                            (_%$%g124259124293%_
                                             _%$%g124260124297%_))))
                                    (_%$%g124259124293%_
                                     _%$%g124260124297%_))))
                            (_%$%g124259124293%_ _%$%g124260124297%_))))
                    (_%$%g124259124293%_ _%$%g124260124297%_)))))
        (_%$%g124258124404%_ _%$stx124255%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx124408%_)
      (let* ((_%$%g124412124430%_
              (lambda (_%$%g124413124426%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g124413124426%_)))
             (_%$%g124411124485%_
              (lambda (_%$%g124413124434%_)
                (if (gx#stx-pair? _%$%g124413124434%_)
                    (let ((_%$%e124416124437%_
                           (gx#syntax-e _%$%g124413124434%_)))
                      (let ((_%$%hd124417124441%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e124416124437%_)))
                            (_%$%tl124418124444%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e124416124437%_))))
                        (if (gx#stx-pair? _%$%tl124418124444%_)
                            (let ((_%$%e124419124447%_
                                   (gx#syntax-e _%$%tl124418124444%_)))
                              (let ((_%$%hd124420124451%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e124419124447%_)))
                                    (_%$%tl124421124454%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e124419124447%_))))
                                (if (gx#stx-pair? _%$%tl124421124454%_)
                                    (let ((_%$%e124422124457%_
                                           (gx#syntax-e _%$%tl124421124454%_)))
                                      (let ((_%$%hd124423124461%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e124422124457%_)))
                                            (_%$%tl124424124464%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e124422124457%_))))
                                        (if (gx#stx-null? _%$%tl124424124464%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   '__do-inline-lock!)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '&gc-table-lock)
                                                              (cons _%$%hd124420124451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%$%hd124423124461%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g124412124430%_
                                             _%$%g124413124434%_))))
                                    (_%$%g124412124430%_
                                     _%$%g124413124434%_))))
                            (_%$%g124412124430%_ _%$%g124413124434%_))))
                    (_%$%g124412124430%_ _%$%g124413124434%_)))))
        (_%$%g124411124485%_ _%$stx124408%_)))))
