(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx123021%_)
      (let* ((_%$%g123025123043%_
              (lambda (_%$%g123026123039%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g123026123039%_)))
             (_%$%g123024123099%_
              (lambda (_%$%g123026123047%_)
                (if (gx#stx-pair? _%$%g123026123047%_)
                    (let ((_%$%e123029123050%_
                           (gx#syntax-e _%$%g123026123047%_)))
                      (let ((_%$%hd123030123054%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e123029123050%_)))
                            (_%$%tl123031123057%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e123029123050%_))))
                        (if (gx#stx-pair? _%$%tl123031123057%_)
                            (let ((_%$%e123032123060%_
                                   (gx#syntax-e _%$%tl123031123057%_)))
                              (let ((_%$%hd123033123064%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e123032123060%_)))
                                    (_%$%tl123034123067%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e123032123060%_))))
                                (if (gx#stx-pair? _%$%tl123034123067%_)
                                    (let ((_%$%e123035123070%_
                                           (gx#syntax-e _%$%tl123034123067%_)))
                                      (let ((_%$%hd123036123074%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e123035123070%_)))
                                            (_%$%tl123037123077%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e123035123070%_))))
                                        (if (gx#stx-null? _%$%tl123037123077%_)
                                            (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'lock)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '&raw-table-lock)
                                  (cons _%$%hd123033123064%_ '()))
                            '()))
                (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                            (cons (gx#datum->syntax '#f 'lock)
                                  (cons _%$%hd123036123074%_ '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g123025123043%_
                                             _%$%g123026123047%_))))
                                    (_%$%g123025123043%_
                                     _%$%g123026123047%_))))
                            (_%$%g123025123043%_ _%$%g123026123047%_))))
                    (_%$%g123025123043%_ _%$%g123026123047%_)))))
        (_%$%g123024123099%_ _%$stx123021%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx123103%_)
      (let* ((_%$%g123106123128%_
              (lambda (_%$%g123107123124%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g123107123124%_)))
             (_%$%g123105123441%_
              (lambda (_%$%g123107123132%_)
                (if (gx#stx-pair? _%$%g123107123132%_)
                    (let ((_%$%e123111123135%_
                           (gx#syntax-e _%$%g123107123132%_)))
                      (let ((_%$%hd123112123139%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e123111123135%_)))
                            (_%$%tl123113123142%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e123111123135%_))))
                        (if (gx#stx-pair? _%$%tl123113123142%_)
                            (let ((_%$%e123114123145%_
                                   (gx#syntax-e _%$%tl123113123142%_)))
                              (let ((_%$%hd123115123149%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e123114123145%_)))
                                    (_%$%tl123116123152%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e123114123145%_))))
                                (if (gx#stx-pair? _%$%tl123116123152%_)
                                    (let ((_%$%e123117123155%_
                                           (gx#syntax-e _%$%tl123116123152%_)))
                                      (let ((_%$%hd123118123159%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e123117123155%_)))
                                            (_%$%tl123119123162%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e123117123155%_))))
                                        (if (gx#stx-pair? _%$%tl123119123162%_)
                                            (let ((_%$%e123120123165%_
                                                   (gx#syntax-e
                                                    _%$%tl123119123162%_)))
                                              (let ((_%$%hd123121123169%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e123120123165%_)))
                                                    (_%$%tl123122123172%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e123120123165%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl123122123172%_)
                                                    (let* ((_%$%g123197123252%_
                                                            (lambda (_%$%g123198123248%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g123198123248%_)))
                                                           (_%$%g123196123437%_
                                                            (lambda (_%$%g123198123256%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g123198123256%_)
                          (let ((_%$%e123211123259%_
                                 (gx#syntax-e _%$%g123198123256%_)))
                            (let ((_%$%hd123212123263%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e123211123259%_)))
                                  (_%$%tl123213123266%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e123211123259%_))))
                              (if (gx#stx-pair? _%$%tl123213123266%_)
                                  (let ((_%$%e123214123269%_
                                         (gx#syntax-e _%$%tl123213123266%_)))
                                    (let ((_%$%hd123215123273%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e123214123269%_)))
                                          (_%$%tl123216123276%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e123214123269%_))))
                                      (if (gx#stx-pair? _%$%tl123216123276%_)
                                          (let ((_%$%e123217123279%_
                                                 (gx#syntax-e
                                                  _%$%tl123216123276%_)))
                                            (let ((_%$%hd123218123283%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e123217123279%_)))
                                                  (_%$%tl123219123286%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e123217123279%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl123219123286%_)
                                                  (let ((_%$%e123220123289%_
                                                         (gx#syntax-e
                                                          _%$%tl123219123286%_)))
                                                    (let ((_%$%hd123221123293%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e123220123289%_)))
                                                          (_%$%tl123222123296%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e123220123289%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl123222123296%_)
                                                          (let ((_%$%e123223123299%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl123222123296%_)))
                    (let ((_%$%hd123224123303%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e123223123299%_)))
                          (_%$%tl123225123306%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e123223123299%_))))
                      (if (gx#stx-pair? _%$%tl123225123306%_)
                          (let ((_%$%e123226123309%_
                                 (gx#syntax-e _%$%tl123225123306%_)))
                            (let ((_%$%hd123227123313%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e123226123309%_)))
                                  (_%$%tl123228123316%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e123226123309%_))))
                              (if (gx#stx-pair? _%$%tl123228123316%_)
                                  (let ((_%$%e123229123319%_
                                         (gx#syntax-e _%$%tl123228123316%_)))
                                    (let ((_%$%hd123230123323%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e123229123319%_)))
                                          (_%$%tl123231123326%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e123229123319%_))))
                                      (if (gx#stx-pair? _%$%tl123231123326%_)
                                          (let ((_%$%e123232123329%_
                                                 (gx#syntax-e
                                                  _%$%tl123231123326%_)))
                                            (let ((_%$%hd123233123333%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e123232123329%_)))
                                                  (_%$%tl123234123336%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e123232123329%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl123234123336%_)
                                                  (let ((_%$%e123235123339%_
                                                         (gx#syntax-e
                                                          _%$%tl123234123336%_)))
                                                    (let ((_%$%hd123236123343%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e123235123339%_)))
                                                          (_%$%tl123237123346%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e123235123339%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl123237123346%_)
                                                          (let ((_%$%e123238123349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl123237123346%_)))
                    (let ((_%$%hd123239123353%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e123238123349%_)))
                          (_%$%tl123240123356%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e123238123349%_))))
                      (if (gx#stx-pair? _%$%tl123240123356%_)
                          (let ((_%$%e123241123359%_
                                 (gx#syntax-e _%$%tl123240123356%_)))
                            (let ((_%$%hd123242123363%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e123241123359%_)))
                                  (_%$%tl123243123366%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e123241123359%_))))
                              (if (gx#stx-pair? _%$%tl123243123366%_)
                                  (let ((_%$%e123244123369%_
                                         (gx#syntax-e _%$%tl123243123366%_)))
                                    (let ((_%$%hd123245123373%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e123244123369%_)))
                                          (_%$%tl123246123376%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e123244123369%_))))
                                      (if (gx#stx-null? _%$%tl123246123376%_)
                                          (cons (gx#datum->syntax '#f 'begin)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'def)
                                                            (cons (cons _%$%hd123212123263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax '#f 'size-hint)
                                            (cons '#f '()))
                                      (cons (cons (gx#datum->syntax '#f 'seed)
                                                  (cons '0 '()))
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'make-raw-table)
                                      (cons (gx#datum->syntax '#f 'size-hint)
                                            (cons _%$%hd123118123159%_
                                                  (cons _%$%hd123121123169%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'seed)
                                                              '())))))
                                '())))
              (cons (cons (gx#datum->syntax '#f 'def)
                          (cons (cons _%$%hd123215123273%_
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
                                                  (cons _%$%hd123118123159%_
                                                        (cons _%$%hd123121123169%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%$%hd123218123283%_
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
                                        (cons _%$%hd123118123159%_
                                              (cons _%$%hd123121123169%_
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
                                      (cons (cons _%$%hd123221123293%_
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
                                                              (cons (cons _%$%hd123218123283%_
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
                                            (cons (cons _%$%hd123224123303%_
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
                                                    (cons _%$%hd123118123159%_
                                                          (cons _%$%hd123121123169%_
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
                                                  (cons (cons _%$%hd123227123313%_
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
                      (cons (cons _%$%hd123224123303%_
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
                                                        (cons (cons _%$%hd123230123323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'tab)
                                  (cons (gx#datum->syntax '#f 'key)
                                        (cons (gx#datum->syntax '#f 'value)
                                              '()))))
                      (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (cons _%$%hd123227123313%_
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
                                                              (cons (cons _%$%hd123233123333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (gx#datum->syntax '#f 'key)
                                              (cons _%$%hd123236123343%_
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
                              (cons _%$%hd123118123159%_
                                    (cons _%$%hd123121123169%_
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%$%hd123236123343%_
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
                            (cons (cons _%$%hd123236123343%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%$%hd123236123343%_
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
                                        (cons (cons _%$%hd123233123333%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%$%hd123236123343%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%$%hd123239123353%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%$%hd123236123343%_
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
                                                          (cons (cons _%$%hd123236123343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (gx#datum->syntax '#f 'key)
                                          (cons _%$%hd123236123343%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'default)
                                                      '())))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%$%hd123242123363%_
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
                                                (cons _%$%hd123118123159%_
                                                      (cons _%$%hd123121123169%_
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
                                              (cons (cons _%$%hd123245123373%_
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
                              (cons (cons _%$%hd123242123363%_
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
                                          (_%$%g123197123252%_
                                           _%$%g123198123256%_))))
                                  (_%$%g123197123252%_ _%$%g123198123256%_))))
                          (_%$%g123197123252%_ _%$%g123198123256%_))))
                  (_%$%g123197123252%_ _%$%g123198123256%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g123197123252%_
                                                   _%$%g123198123256%_))))
                                          (_%$%g123197123252%_
                                           _%$%g123198123256%_))))
                                  (_%$%g123197123252%_ _%$%g123198123256%_))))
                          (_%$%g123197123252%_ _%$%g123198123256%_))))
                  (_%$%g123197123252%_ _%$%g123198123256%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g123197123252%_
                                                   _%$%g123198123256%_))))
                                          (_%$%g123197123252%_
                                           _%$%g123198123256%_))))
                                  (_%$%g123197123252%_ _%$%g123198123256%_))))
                          (_%$%g123197123252%_ _%$%g123198123256%_)))))
              (_%$%g123196123437%_
               (list (gx#stx-identifier
                      _%$%hd123115123149%_
                      '"make-"
                      _%$%hd123115123149%_)
                     (gx#stx-identifier
                      _%$%hd123115123149%_
                      '"make-"
                      _%$%hd123115123149%_
                      '"/lock")
                     (gx#stx-identifier
                      _%$%hd123115123149%_
                      _%$%hd123115123149%_
                      '"-ref")
                     (gx#stx-identifier
                      _%$%hd123115123149%_
                      _%$%hd123115123149%_
                      '"-ref/lock")
                     (gx#stx-identifier
                      _%$%hd123115123149%_
                      '"__"
                      _%$%hd123115123149%_
                      '"-set!")
                     (gx#stx-identifier
                      _%$%hd123115123149%_
                      _%$%hd123115123149%_
                      '"-set!")
                     (gx#stx-identifier
                      _%$%hd123115123149%_
                      _%$%hd123115123149%_
                      '"-set!/lock")
                     (gx#stx-identifier
                      _%$%hd123115123149%_
                      '"__"
                      _%$%hd123115123149%_
                      '"-update!")
                     (gx#stx-identifier
                      _%$%hd123115123149%_
                      _%$%hd123115123149%_
                      '"-update!")
                     (gx#stx-identifier
                      _%$%hd123115123149%_
                      _%$%hd123115123149%_
                      '"-update!/lock")
                     (gx#stx-identifier
                      _%$%hd123115123149%_
                      _%$%hd123115123149%_
                      '"-delete!")
                     (gx#stx-identifier
                      _%$%hd123115123149%_
                      _%$%hd123115123149%_
                      '"-delete!/lock"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g123106123128%_
                                                     _%$%g123107123132%_))))
                                            (_%$%g123106123128%_
                                             _%$%g123107123132%_))))
                                    (_%$%g123106123128%_
                                     _%$%g123107123132%_))))
                            (_%$%g123106123128%_ _%$%g123107123132%_))))
                    (_%$%g123106123128%_ _%$%g123107123132%_)))))
        (_%$%g123105123441%_ _%stx123103%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx123445%_)
      (let* ((_%$%g123449123471%_
              (lambda (_%$%g123450123467%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g123450123467%_)))
             (_%$%g123448123540%_
              (lambda (_%$%g123450123475%_)
                (if (gx#stx-pair? _%$%g123450123475%_)
                    (let ((_%$%e123454123478%_
                           (gx#syntax-e _%$%g123450123475%_)))
                      (let ((_%$%hd123455123482%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e123454123478%_)))
                            (_%$%tl123456123485%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e123454123478%_))))
                        (if (gx#stx-pair? _%$%tl123456123485%_)
                            (let ((_%$%e123457123488%_
                                   (gx#syntax-e _%$%tl123456123485%_)))
                              (let ((_%$%hd123458123492%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e123457123488%_)))
                                    (_%$%tl123459123495%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e123457123488%_))))
                                (if (gx#stx-pair? _%$%tl123459123495%_)
                                    (let ((_%$%e123460123498%_
                                           (gx#syntax-e _%$%tl123459123495%_)))
                                      (let ((_%$%hd123461123502%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e123460123498%_)))
                                            (_%$%tl123462123505%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e123460123498%_))))
                                        (if (gx#stx-pair? _%$%tl123462123505%_)
                                            (let ((_%$%e123463123508%_
                                                   (gx#syntax-e
                                                    _%$%tl123462123505%_)))
                                              (let ((_%$%hd123464123512%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e123463123508%_)))
                                                    (_%$%tl123465123515%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e123463123508%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl123465123515%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'next-probe)
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons _%$%hd123458123492%_
                                                (cons _%$%hd123461123502%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fx*)
                          (cons _%$%hd123461123502%_
                                (cons _%$%hd123461123502%_ '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                    (cons (gx#datum->syntax '#f 'next-probe)
                                          (cons _%$%hd123464123512%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g123449123471%_
                                                     _%$%g123450123475%_))))
                                            (_%$%g123449123471%_
                                             _%$%g123450123475%_))))
                                    (_%$%g123449123471%_
                                     _%$%g123450123475%_))))
                            (_%$%g123449123471%_ _%$%g123450123475%_))))
                    (_%$%g123449123471%_ _%$%g123450123475%_)))))
        (_%$%g123448123540%_ _%$stx123445%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx123544%_)
      (let* ((_%$%g123548123582%_
              (lambda (_%$%g123549123578%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g123549123578%_)))
             (_%$%g123547123693%_
              (lambda (_%$%g123549123586%_)
                (if (gx#stx-pair? _%$%g123549123586%_)
                    (let ((_%$%e123556123589%_
                           (gx#syntax-e _%$%g123549123586%_)))
                      (let ((_%$%hd123557123593%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e123556123589%_)))
                            (_%$%tl123558123596%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e123556123589%_))))
                        (if (gx#stx-pair? _%$%tl123558123596%_)
                            (let ((_%$%e123559123599%_
                                   (gx#syntax-e _%$%tl123558123596%_)))
                              (let ((_%$%hd123560123603%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e123559123599%_)))
                                    (_%$%tl123561123606%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e123559123599%_))))
                                (if (gx#stx-pair? _%$%tl123561123606%_)
                                    (let ((_%$%e123562123609%_
                                           (gx#syntax-e _%$%tl123561123606%_)))
                                      (let ((_%$%hd123563123613%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e123562123609%_)))
                                            (_%$%tl123564123616%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e123562123609%_))))
                                        (if (gx#stx-pair? _%$%tl123564123616%_)
                                            (let ((_%$%e123565123619%_
                                                   (gx#syntax-e
                                                    _%$%tl123564123616%_)))
                                              (let ((_%$%hd123566123623%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e123565123619%_)))
                                                    (_%$%tl123567123626%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e123565123619%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl123567123626%_)
                                                    (let ((_%$%e123568123629%_
                                                           (gx#syntax-e
                                                            _%$%tl123567123626%_)))
                                                      (let ((_%$%hd123569123633%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e123568123629%_)))
                    (_%$%tl123570123636%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e123568123629%_))))
                (if (gx#stx-pair? _%$%tl123570123636%_)
                    (let ((_%$%e123571123639%_
                           (gx#syntax-e _%$%tl123570123636%_)))
                      (let ((_%$%hd123572123643%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e123571123639%_)))
                            (_%$%tl123573123646%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e123571123639%_))))
                        (if (gx#stx-pair? _%$%tl123573123646%_)
                            (let ((_%$%e123574123649%_
                                   (gx#syntax-e _%$%tl123573123646%_)))
                              (let ((_%$%hd123575123653%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e123574123649%_)))
                                    (_%$%tl123576123656%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e123574123649%_))))
                                (if (gx#stx-null? _%$%tl123576123656%_)
                                    (cons (gx#datum->syntax '#f 'let*)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'h)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'fxxor)
                                (cons (cons _%$%hd123566123623%_
                                            (cons _%$%hd123572123643%_ '()))
                                      (cons _%$%hd123563123613%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'size)
                          (cons (cons (gx#datum->syntax '#f 'vector-length)
                                      (cons _%$%hd123560123603%_ '()))
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
                            (cons _%$%hd123560123603%_
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
                                  (cons _%$%hd123575123653%_ '()))
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
                                  (cons (cons (cons _%$%hd123569123633%_
                                                    (cons _%$%hd123572123643%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-ref)
                                                          (cons _%$%hd123560123603%_
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
                                    (_%$%g123548123582%_
                                     _%$%g123549123586%_))))
                            (_%$%g123548123582%_ _%$%g123549123586%_))))
                    (_%$%g123548123582%_ _%$%g123549123586%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g123548123582%_
                                                     _%$%g123549123586%_))))
                                            (_%$%g123548123582%_
                                             _%$%g123549123586%_))))
                                    (_%$%g123548123582%_
                                     _%$%g123549123586%_))))
                            (_%$%g123548123582%_ _%$%g123549123586%_))))
                    (_%$%g123548123582%_ _%$%g123549123586%_)))))
        (_%$%g123547123693%_ _%$stx123544%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx123697%_)
      (let* ((_%$%g123701123743%_
              (lambda (_%$%g123702123739%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g123702123739%_)))
             (_%$%g123700123882%_
              (lambda (_%$%g123702123747%_)
                (if (gx#stx-pair? _%$%g123702123747%_)
                    (let ((_%$%e123711123750%_
                           (gx#syntax-e _%$%g123702123747%_)))
                      (let ((_%$%hd123712123754%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e123711123750%_)))
                            (_%$%tl123713123757%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e123711123750%_))))
                        (if (gx#stx-pair? _%$%tl123713123757%_)
                            (let ((_%$%e123714123760%_
                                   (gx#syntax-e _%$%tl123713123757%_)))
                              (let ((_%$%hd123715123764%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e123714123760%_)))
                                    (_%$%tl123716123767%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e123714123760%_))))
                                (if (gx#stx-pair? _%$%tl123716123767%_)
                                    (let ((_%$%e123717123770%_
                                           (gx#syntax-e _%$%tl123716123767%_)))
                                      (let ((_%$%hd123718123774%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e123717123770%_)))
                                            (_%$%tl123719123777%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e123717123770%_))))
                                        (if (gx#stx-pair? _%$%tl123719123777%_)
                                            (let ((_%$%e123720123780%_
                                                   (gx#syntax-e
                                                    _%$%tl123719123777%_)))
                                              (let ((_%$%hd123721123784%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e123720123780%_)))
                                                    (_%$%tl123722123787%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e123720123780%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl123722123787%_)
                                                    (let ((_%$%e123723123790%_
                                                           (gx#syntax-e
                                                            _%$%tl123722123787%_)))
                                                      (let ((_%$%hd123724123794%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e123723123790%_)))
                    (_%$%tl123725123797%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e123723123790%_))))
                (if (gx#stx-pair? _%$%tl123725123797%_)
                    (let ((_%$%e123726123800%_
                           (gx#syntax-e _%$%tl123725123797%_)))
                      (let ((_%$%hd123727123804%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e123726123800%_)))
                            (_%$%tl123728123807%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e123726123800%_))))
                        (if (gx#stx-pair? _%$%tl123728123807%_)
                            (let ((_%$%e123729123810%_
                                   (gx#syntax-e _%$%tl123728123807%_)))
                              (let ((_%$%hd123730123814%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e123729123810%_)))
                                    (_%$%tl123731123817%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e123729123810%_))))
                                (if (gx#stx-pair? _%$%tl123731123817%_)
                                    (let ((_%$%e123732123820%_
                                           (gx#syntax-e _%$%tl123731123817%_)))
                                      (let ((_%$%hd123733123824%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e123732123820%_)))
                                            (_%$%tl123734123827%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e123732123820%_))))
                                        (if (gx#stx-pair? _%$%tl123734123827%_)
                                            (let ((_%$%e123735123830%_
                                                   (gx#syntax-e
                                                    _%$%tl123734123827%_)))
                                              (let ((_%$%hd123736123834%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e123735123830%_)))
                                                    (_%$%tl123737123837%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e123735123830%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl123737123837%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let*)
                                                          (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'h)
                                    (cons (cons (gx#datum->syntax '#f 'fxxor)
                                                (cons (cons _%$%hd123721123784%_
                                                            (cons _%$%hd123727123804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%$%hd123718123774%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (cons (cons (gx#datum->syntax '#f 'size)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'vector-length)
                                                      (cons _%$%hd123715123764%_
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
                                            (cons _%$%hd123715123764%_
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
                                                    (cons _%$%hd123715123764%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'deleted)
                        (cons _%$%hd123727123804%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd123715123764%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'fx+)
                                    (cons (gx#datum->syntax '#f 'deleted)
                                          (cons '1 '())))
                              (cons _%$%hd123730123814%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%$%hd123736123834%_
                                                                '())
                                                          '()))))
                                  (cons (cons (gx#datum->syntax '#f 'begin)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd123715123764%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'probe)
                              (cons _%$%hd123727123804%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-set!)
                        (cons _%$%hd123715123764%_
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                (cons '1 '())))
                                    (cons _%$%hd123730123814%_ '()))))
                  (cons (cons _%$%hd123733123824%_ '()) '()))))
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
                                                  (cons (cons (cons _%$%hd123724123794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd123727123804%_
                                  (cons (gx#datum->syntax '#f 'k) '())))
                      (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                  (cons _%$%hd123715123764%_
                                        (cons (gx#datum->syntax '#f 'probe)
                                              (cons _%$%hd123727123804%_
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                        (cons _%$%hd123715123764%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fx+)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe)
                        (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%$%hd123730123814%_
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
                                                    (_%$%g123701123743%_
                                                     _%$%g123702123747%_))))
                                            (_%$%g123701123743%_
                                             _%$%g123702123747%_))))
                                    (_%$%g123701123743%_
                                     _%$%g123702123747%_))))
                            (_%$%g123701123743%_ _%$%g123702123747%_))))
                    (_%$%g123701123743%_ _%$%g123702123747%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g123701123743%_
                                                     _%$%g123702123747%_))))
                                            (_%$%g123701123743%_
                                             _%$%g123702123747%_))))
                                    (_%$%g123701123743%_
                                     _%$%g123702123747%_))))
                            (_%$%g123701123743%_ _%$%g123702123747%_))))
                    (_%$%g123701123743%_ _%$%g123702123747%_)))))
        (_%$%g123700123882%_ _%$stx123697%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx123886%_)
      (let* ((_%$%g123890123936%_
              (lambda (_%$%g123891123932%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g123891123932%_)))
             (_%$%g123889124089%_
              (lambda (_%$%g123891123940%_)
                (if (gx#stx-pair? _%$%g123891123940%_)
                    (let ((_%$%e123901123943%_
                           (gx#syntax-e _%$%g123891123940%_)))
                      (let ((_%$%hd123902123947%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e123901123943%_)))
                            (_%$%tl123903123950%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e123901123943%_))))
                        (if (gx#stx-pair? _%$%tl123903123950%_)
                            (let ((_%$%e123904123953%_
                                   (gx#syntax-e _%$%tl123903123950%_)))
                              (let ((_%$%hd123905123957%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e123904123953%_)))
                                    (_%$%tl123906123960%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e123904123953%_))))
                                (if (gx#stx-pair? _%$%tl123906123960%_)
                                    (let ((_%$%e123907123963%_
                                           (gx#syntax-e _%$%tl123906123960%_)))
                                      (let ((_%$%hd123908123967%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e123907123963%_)))
                                            (_%$%tl123909123970%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e123907123963%_))))
                                        (if (gx#stx-pair? _%$%tl123909123970%_)
                                            (let ((_%$%e123910123973%_
                                                   (gx#syntax-e
                                                    _%$%tl123909123970%_)))
                                              (let ((_%$%hd123911123977%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e123910123973%_)))
                                                    (_%$%tl123912123980%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e123910123973%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl123912123980%_)
                                                    (let ((_%$%e123913123983%_
                                                           (gx#syntax-e
                                                            _%$%tl123912123980%_)))
                                                      (let ((_%$%hd123914123987%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e123913123983%_)))
                    (_%$%tl123915123990%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e123913123983%_))))
                (if (gx#stx-pair? _%$%tl123915123990%_)
                    (let ((_%$%e123916123993%_
                           (gx#syntax-e _%$%tl123915123990%_)))
                      (let ((_%$%hd123917123997%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e123916123993%_)))
                            (_%$%tl123918124000%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e123916123993%_))))
                        (if (gx#stx-pair? _%$%tl123918124000%_)
                            (let ((_%$%e123919124003%_
                                   (gx#syntax-e _%$%tl123918124000%_)))
                              (let ((_%$%hd123920124007%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e123919124003%_)))
                                    (_%$%tl123921124010%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e123919124003%_))))
                                (if (gx#stx-pair? _%$%tl123921124010%_)
                                    (let ((_%$%e123922124013%_
                                           (gx#syntax-e _%$%tl123921124010%_)))
                                      (let ((_%$%hd123923124017%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e123922124013%_)))
                                            (_%$%tl123924124020%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e123922124013%_))))
                                        (if (gx#stx-pair? _%$%tl123924124020%_)
                                            (let ((_%$%e123925124023%_
                                                   (gx#syntax-e
                                                    _%$%tl123924124020%_)))
                                              (let ((_%$%hd123926124027%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e123925124023%_)))
                                                    (_%$%tl123927124030%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e123925124023%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl123927124030%_)
                                                    (let ((_%$%e123928124033%_
                                                           (gx#syntax-e
                                                            _%$%tl123927124030%_)))
                                                      (let ((_%$%hd123929124037%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e123928124033%_)))
                    (_%$%tl123930124040%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e123928124033%_))))
                (if (gx#stx-null? _%$%tl123930124040%_)
                    (cons (gx#datum->syntax '#f 'let*)
                          (cons (cons (cons (gx#datum->syntax '#f 'h)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'fxxor)
                                                        (cons (cons _%$%hd123911123977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd123917123997%_ '()))
                      (cons _%$%hd123908123967%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'size)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'vector-length)
                                                              (cons _%$%hd123905123957%_
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
                                                    (cons _%$%hd123905123957%_
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
                                                            (cons _%$%hd123905123957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'deleted)
                                (cons _%$%hd123917123997%_ '()))))
              (cons (cons (gx#datum->syntax '#f 'vector-set!)
                          (cons _%$%hd123905123957%_
                                (cons (cons (gx#datum->syntax '#f 'fx+)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'deleted)
                                                  (cons '1 '())))
                                      (cons (cons _%$%hd123920124007%_
                                                  (cons _%$%hd123923124017%_
                                                        '()))
                                            '()))))
                    (cons (cons _%$%hd123929124037%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'vector-set!)
                          (cons _%$%hd123905123957%_
                                (cons (gx#datum->syntax '#f 'probe)
                                      (cons _%$%hd123917123997%_ '()))))
                    (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                (cons _%$%hd123905123957%_
                                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'probe)
                                                        (cons '1 '())))
                                            (cons (cons _%$%hd123920124007%_
                                                        (cons _%$%hd123923124017%_
                                                              '()))
                                                  '()))))
                          (cons (cons _%$%hd123926124027%_ '()) '()))))
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
                  (cons (cons (cons _%$%hd123914123987%_
                                    (cons _%$%hd123917123997%_
                                          (cons (gx#datum->syntax '#f 'k)
                                                '())))
                              (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                          (cons _%$%hd123905123957%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'probe)
                                                      (cons _%$%hd123917123997%_
                                                            '()))))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons _%$%hd123905123957%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fx+)
                          (cons (gx#datum->syntax '#f 'probe) (cons '1 '())))
                    (cons (cons _%$%hd123920124007%_
                                (cons (cons (gx#datum->syntax '#f 'vector-ref)
                                            (cons _%$%hd123905123957%_
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
                    (_%$%g123890123936%_ _%$%g123891123940%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g123890123936%_
                                                     _%$%g123891123940%_))))
                                            (_%$%g123890123936%_
                                             _%$%g123891123940%_))))
                                    (_%$%g123890123936%_
                                     _%$%g123891123940%_))))
                            (_%$%g123890123936%_ _%$%g123891123940%_))))
                    (_%$%g123890123936%_ _%$%g123891123940%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g123890123936%_
                                                     _%$%g123891123940%_))))
                                            (_%$%g123890123936%_
                                             _%$%g123891123940%_))))
                                    (_%$%g123890123936%_
                                     _%$%g123891123940%_))))
                            (_%$%g123890123936%_ _%$%g123891123940%_))))
                    (_%$%g123890123936%_ _%$%g123891123940%_)))))
        (_%$%g123889124089%_ _%$stx123886%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx124093%_)
      (let* ((_%$%g124097124131%_
              (lambda (_%$%g124098124127%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g124098124127%_)))
             (_%$%g124096124242%_
              (lambda (_%$%g124098124135%_)
                (if (gx#stx-pair? _%$%g124098124135%_)
                    (let ((_%$%e124105124138%_
                           (gx#syntax-e _%$%g124098124135%_)))
                      (let ((_%$%hd124106124142%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e124105124138%_)))
                            (_%$%tl124107124145%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e124105124138%_))))
                        (if (gx#stx-pair? _%$%tl124107124145%_)
                            (let ((_%$%e124108124148%_
                                   (gx#syntax-e _%$%tl124107124145%_)))
                              (let ((_%$%hd124109124152%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e124108124148%_)))
                                    (_%$%tl124110124155%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e124108124148%_))))
                                (if (gx#stx-pair? _%$%tl124110124155%_)
                                    (let ((_%$%e124111124158%_
                                           (gx#syntax-e _%$%tl124110124155%_)))
                                      (let ((_%$%hd124112124162%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e124111124158%_)))
                                            (_%$%tl124113124165%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e124111124158%_))))
                                        (if (gx#stx-pair? _%$%tl124113124165%_)
                                            (let ((_%$%e124114124168%_
                                                   (gx#syntax-e
                                                    _%$%tl124113124165%_)))
                                              (let ((_%$%hd124115124172%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e124114124168%_)))
                                                    (_%$%tl124116124175%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e124114124168%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl124116124175%_)
                                                    (let ((_%$%e124117124178%_
                                                           (gx#syntax-e
                                                            _%$%tl124116124175%_)))
                                                      (let ((_%$%hd124118124182%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e124117124178%_)))
                    (_%$%tl124119124185%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e124117124178%_))))
                (if (gx#stx-pair? _%$%tl124119124185%_)
                    (let ((_%$%e124120124188%_
                           (gx#syntax-e _%$%tl124119124185%_)))
                      (let ((_%$%hd124121124192%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e124120124188%_)))
                            (_%$%tl124122124195%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e124120124188%_))))
                        (if (gx#stx-pair? _%$%tl124122124195%_)
                            (let ((_%$%e124123124198%_
                                   (gx#syntax-e _%$%tl124122124195%_)))
                              (let ((_%$%hd124124124202%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e124123124198%_)))
                                    (_%$%tl124125124205%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e124123124198%_))))
                                (if (gx#stx-null? _%$%tl124125124205%_)
                                    (cons (gx#datum->syntax '#f 'let*)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'h)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'fxxor)
                                (cons (cons _%$%hd124115124172%_
                                            (cons _%$%hd124121124192%_ '()))
                                      (cons _%$%hd124112124162%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'size)
                          (cons (cons (gx#datum->syntax '#f 'vector-length)
                                      (cons _%$%hd124109124152%_ '()))
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
                            (cons _%$%hd124109124152%_
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
                                  (cons (cons (cons _%$%hd124118124182%_
                                                    (cons _%$%hd124121124192%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd124109124152%_
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
                        (cons _%$%hd124109124152%_
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                (cons '1 '())))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'macro-absent-obj)
                                                '())
                                          '()))))
                  (cons (cons _%$%hd124124124202%_ '()) '()))))
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
                                    (_%$%g124097124131%_
                                     _%$%g124098124135%_))))
                            (_%$%g124097124131%_ _%$%g124098124135%_))))
                    (_%$%g124097124131%_ _%$%g124098124135%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g124097124131%_
                                                     _%$%g124098124135%_))))
                                            (_%$%g124097124131%_
                                             _%$%g124098124135%_))))
                                    (_%$%g124097124131%_
                                     _%$%g124098124135%_))))
                            (_%$%g124097124131%_ _%$%g124098124135%_))))
                    (_%$%g124097124131%_ _%$%g124098124135%_)))))
        (_%$%g124096124242%_ _%$stx124093%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx124246%_)
      (let* ((_%$%g124250124268%_
              (lambda (_%$%g124251124264%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g124251124264%_)))
             (_%$%g124249124323%_
              (lambda (_%$%g124251124272%_)
                (if (gx#stx-pair? _%$%g124251124272%_)
                    (let ((_%$%e124254124275%_
                           (gx#syntax-e _%$%g124251124272%_)))
                      (let ((_%$%hd124255124279%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e124254124275%_)))
                            (_%$%tl124256124282%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e124254124275%_))))
                        (if (gx#stx-pair? _%$%tl124256124282%_)
                            (let ((_%$%e124257124285%_
                                   (gx#syntax-e _%$%tl124256124282%_)))
                              (let ((_%$%hd124258124289%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e124257124285%_)))
                                    (_%$%tl124259124292%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e124257124285%_))))
                                (if (gx#stx-pair? _%$%tl124259124292%_)
                                    (let ((_%$%e124260124295%_
                                           (gx#syntax-e _%$%tl124259124292%_)))
                                      (let ((_%$%hd124261124299%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e124260124295%_)))
                                            (_%$%tl124262124302%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e124260124295%_))))
                                        (if (gx#stx-null? _%$%tl124262124302%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   '__do-inline-lock!)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '&gc-table-lock)
                                                              (cons _%$%hd124258124289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%$%hd124261124299%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g124250124268%_
                                             _%$%g124251124272%_))))
                                    (_%$%g124250124268%_
                                     _%$%g124251124272%_))))
                            (_%$%g124250124268%_ _%$%g124251124272%_))))
                    (_%$%g124250124268%_ _%$%g124251124272%_)))))
        (_%$%g124249124323%_ _%$stx124246%_)))))
