(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#do-raw-table-lock|
    (lambda (_%$stx121202%_)
      (let* ((_%$%g121206121224%_
              (lambda (_%$%g121207121220%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g121207121220%_)))
             (_%$%g121205121280%_
              (lambda (_%$%g121207121228%_)
                (if (gx#stx-pair? _%$%g121207121228%_)
                    (let ((_%$%e121210121231%_
                           (gx#syntax-e _%$%g121207121228%_)))
                      (let ((_%$%hd121211121235%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e121210121231%_)))
                            (_%$%tl121212121238%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e121210121231%_))))
                        (if (gx#stx-pair? _%$%tl121212121238%_)
                            (let ((_%$%e121213121241%_
                                   (gx#syntax-e _%$%tl121212121238%_)))
                              (let ((_%$%hd121214121245%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e121213121241%_)))
                                    (_%$%tl121215121248%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e121213121241%_))))
                                (if (gx#stx-pair? _%$%tl121215121248%_)
                                    (let ((_%$%e121216121251%_
                                           (gx#syntax-e _%$%tl121215121248%_)))
                                      (let ((_%$%hd121217121255%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e121216121251%_)))
                                            (_%$%tl121218121258%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e121216121251%_))))
                                        (if (gx#stx-null? _%$%tl121218121258%_)
                                            (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'lock)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '&raw-table-lock)
                                  (cons _%$%hd121214121245%_ '()))
                            '()))
                (cons (cons (gx#datum->syntax '#f '__do-inline-lock!)
                            (cons (gx#datum->syntax '#f 'lock)
                                  (cons _%$%hd121217121255%_ '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g121206121224%_
                                             _%$%g121207121228%_))))
                                    (_%$%g121206121224%_
                                     _%$%g121207121228%_))))
                            (_%$%g121206121224%_ _%$%g121207121228%_))))
                    (_%$%g121206121224%_ _%$%g121207121228%_)))))
        (_%$%g121205121280%_ _%$stx121202%_))))
  (define |[:0:]#deftable|
    (lambda (_%stx121284%_)
      (let* ((_%$%g121287121309%_
              (lambda (_%$%g121288121305%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g121288121305%_)))
             (_%$%g121286121622%_
              (lambda (_%$%g121288121313%_)
                (if (gx#stx-pair? _%$%g121288121313%_)
                    (let ((_%$%e121292121316%_
                           (gx#syntax-e _%$%g121288121313%_)))
                      (let ((_%$%hd121293121320%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e121292121316%_)))
                            (_%$%tl121294121323%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e121292121316%_))))
                        (if (gx#stx-pair? _%$%tl121294121323%_)
                            (let ((_%$%e121295121326%_
                                   (gx#syntax-e _%$%tl121294121323%_)))
                              (let ((_%$%hd121296121330%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e121295121326%_)))
                                    (_%$%tl121297121333%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e121295121326%_))))
                                (if (gx#stx-pair? _%$%tl121297121333%_)
                                    (let ((_%$%e121298121336%_
                                           (gx#syntax-e _%$%tl121297121333%_)))
                                      (let ((_%$%hd121299121340%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e121298121336%_)))
                                            (_%$%tl121300121343%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e121298121336%_))))
                                        (if (gx#stx-pair? _%$%tl121300121343%_)
                                            (let ((_%$%e121301121346%_
                                                   (gx#syntax-e
                                                    _%$%tl121300121343%_)))
                                              (let ((_%$%hd121302121350%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e121301121346%_)))
                                                    (_%$%tl121303121353%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e121301121346%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl121303121353%_)
                                                    (let* ((_%$%g121378121433%_
                                                            (lambda (_%$%g121379121429%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g121379121429%_)))
                                                           (_%$%g121377121618%_
                                                            (lambda (_%$%g121379121437%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g121379121437%_)
                          (let ((_%$%e121392121440%_
                                 (gx#syntax-e _%$%g121379121437%_)))
                            (let ((_%$%hd121393121444%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e121392121440%_)))
                                  (_%$%tl121394121447%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e121392121440%_))))
                              (if (gx#stx-pair? _%$%tl121394121447%_)
                                  (let ((_%$%e121395121450%_
                                         (gx#syntax-e _%$%tl121394121447%_)))
                                    (let ((_%$%hd121396121454%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e121395121450%_)))
                                          (_%$%tl121397121457%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e121395121450%_))))
                                      (if (gx#stx-pair? _%$%tl121397121457%_)
                                          (let ((_%$%e121398121460%_
                                                 (gx#syntax-e
                                                  _%$%tl121397121457%_)))
                                            (let ((_%$%hd121399121464%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e121398121460%_)))
                                                  (_%$%tl121400121467%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e121398121460%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl121400121467%_)
                                                  (let ((_%$%e121401121470%_
                                                         (gx#syntax-e
                                                          _%$%tl121400121467%_)))
                                                    (let ((_%$%hd121402121474%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e121401121470%_)))
                                                          (_%$%tl121403121477%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e121401121470%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl121403121477%_)
                                                          (let ((_%$%e121404121480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl121403121477%_)))
                    (let ((_%$%hd121405121484%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e121404121480%_)))
                          (_%$%tl121406121487%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e121404121480%_))))
                      (if (gx#stx-pair? _%$%tl121406121487%_)
                          (let ((_%$%e121407121490%_
                                 (gx#syntax-e _%$%tl121406121487%_)))
                            (let ((_%$%hd121408121494%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e121407121490%_)))
                                  (_%$%tl121409121497%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e121407121490%_))))
                              (if (gx#stx-pair? _%$%tl121409121497%_)
                                  (let ((_%$%e121410121500%_
                                         (gx#syntax-e _%$%tl121409121497%_)))
                                    (let ((_%$%hd121411121504%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e121410121500%_)))
                                          (_%$%tl121412121507%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e121410121500%_))))
                                      (if (gx#stx-pair? _%$%tl121412121507%_)
                                          (let ((_%$%e121413121510%_
                                                 (gx#syntax-e
                                                  _%$%tl121412121507%_)))
                                            (let ((_%$%hd121414121514%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e121413121510%_)))
                                                  (_%$%tl121415121517%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e121413121510%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl121415121517%_)
                                                  (let ((_%$%e121416121520%_
                                                         (gx#syntax-e
                                                          _%$%tl121415121517%_)))
                                                    (let ((_%$%hd121417121524%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e121416121520%_)))
                                                          (_%$%tl121418121527%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e121416121520%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl121418121527%_)
                                                          (let ((_%$%e121419121530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl121418121527%_)))
                    (let ((_%$%hd121420121534%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e121419121530%_)))
                          (_%$%tl121421121537%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e121419121530%_))))
                      (if (gx#stx-pair? _%$%tl121421121537%_)
                          (let ((_%$%e121422121540%_
                                 (gx#syntax-e _%$%tl121421121537%_)))
                            (let ((_%$%hd121423121544%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e121422121540%_)))
                                  (_%$%tl121424121547%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e121422121540%_))))
                              (if (gx#stx-pair? _%$%tl121424121547%_)
                                  (let ((_%$%e121425121550%_
                                         (gx#syntax-e _%$%tl121424121547%_)))
                                    (let ((_%$%hd121426121554%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e121425121550%_)))
                                          (_%$%tl121427121557%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e121425121550%_))))
                                      (if (gx#stx-null? _%$%tl121427121557%_)
                                          (cons (gx#datum->syntax '#f 'begin)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'def)
                                                            (cons (cons _%$%hd121393121444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax '#f 'size-hint)
                                            (cons '#f '()))
                                      (cons (cons (gx#datum->syntax '#f 'seed)
                                                  (cons '0 '()))
                                            '())))
                          (cons (cons (gx#datum->syntax '#f 'make-raw-table)
                                      (cons (gx#datum->syntax '#f 'size-hint)
                                            (cons _%$%hd121299121340%_
                                                  (cons _%$%hd121302121350%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'seed)
                                                              '())))))
                                '())))
              (cons (cons (gx#datum->syntax '#f 'def)
                          (cons (cons _%$%hd121396121454%_
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
                                                  (cons _%$%hd121299121340%_
                                                        (cons _%$%hd121302121350%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'seed)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'def)
                                (cons (cons _%$%hd121399121464%_
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
                                        (cons _%$%hd121299121340%_
                                              (cons _%$%hd121302121350%_
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
                                      (cons (cons _%$%hd121402121474%_
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
                                                              (cons (cons _%$%hd121399121464%_
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
                                            (cons (cons _%$%hd121405121484%_
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
                                                    (cons _%$%hd121299121340%_
                                                          (cons _%$%hd121302121350%_
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
                                                  (cons (cons _%$%hd121408121494%_
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
                      (cons (cons _%$%hd121405121484%_
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
                                                        (cons (cons _%$%hd121411121504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gx#datum->syntax '#f 'tab)
                                  (cons (gx#datum->syntax '#f 'key)
                                        (cons (gx#datum->syntax '#f 'value)
                                              '()))))
                      (cons (cons (gx#datum->syntax '#f 'do-raw-table-lock)
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (cons _%$%hd121408121494%_
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
                                                              (cons (cons _%$%hd121414121514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#datum->syntax '#f 'tab)
                                        (cons (gx#datum->syntax '#f 'key)
                                              (cons _%$%hd121417121524%_
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
                              (cons _%$%hd121299121340%_
                                    (cons _%$%hd121302121350%_
                                          (cons (gx#datum->syntax '#f 'key)
                                                (cons _%$%hd121417121524%_
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
                            (cons (cons _%$%hd121417121524%_
                                        (cons (gx#datum->syntax '#f 'tab)
                                              (cons (gx#datum->syntax '#f 'key)
                                                    (cons _%$%hd121417121524%_
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
                                        (cons (cons _%$%hd121414121514%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'tab)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'key)
                        (cons _%$%hd121417121524%_
                              (cons (gx#datum->syntax '#f 'default) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons (cons _%$%hd121420121534%_
                                              (cons (gx#datum->syntax '#f 'tab)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'key)
                                                          (cons _%$%hd121417121524%_
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
                                                          (cons (cons _%$%hd121417121524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'tab)
                                    (cons (gx#datum->syntax '#f 'key)
                                          (cons _%$%hd121417121524%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'default)
                                                      '())))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _%$%hd121423121544%_
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
                                                (cons _%$%hd121299121340%_
                                                      (cons _%$%hd121302121350%_
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
                                              (cons (cons _%$%hd121426121554%_
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
                              (cons (cons _%$%hd121423121544%_
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
                                          (_%$%g121378121433%_
                                           _%$%g121379121437%_))))
                                  (_%$%g121378121433%_ _%$%g121379121437%_))))
                          (_%$%g121378121433%_ _%$%g121379121437%_))))
                  (_%$%g121378121433%_ _%$%g121379121437%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g121378121433%_
                                                   _%$%g121379121437%_))))
                                          (_%$%g121378121433%_
                                           _%$%g121379121437%_))))
                                  (_%$%g121378121433%_ _%$%g121379121437%_))))
                          (_%$%g121378121433%_ _%$%g121379121437%_))))
                  (_%$%g121378121433%_ _%$%g121379121437%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g121378121433%_
                                                   _%$%g121379121437%_))))
                                          (_%$%g121378121433%_
                                           _%$%g121379121437%_))))
                                  (_%$%g121378121433%_ _%$%g121379121437%_))))
                          (_%$%g121378121433%_ _%$%g121379121437%_)))))
              (_%$%g121377121618%_
               (list (gx#stx-identifier
                      _%$%hd121296121330%_
                      '"make-"
                      _%$%hd121296121330%_)
                     (gx#stx-identifier
                      _%$%hd121296121330%_
                      '"make-"
                      _%$%hd121296121330%_
                      '"/lock")
                     (gx#stx-identifier
                      _%$%hd121296121330%_
                      _%$%hd121296121330%_
                      '"-ref")
                     (gx#stx-identifier
                      _%$%hd121296121330%_
                      _%$%hd121296121330%_
                      '"-ref/lock")
                     (gx#stx-identifier
                      _%$%hd121296121330%_
                      '"__"
                      _%$%hd121296121330%_
                      '"-set!")
                     (gx#stx-identifier
                      _%$%hd121296121330%_
                      _%$%hd121296121330%_
                      '"-set!")
                     (gx#stx-identifier
                      _%$%hd121296121330%_
                      _%$%hd121296121330%_
                      '"-set!/lock")
                     (gx#stx-identifier
                      _%$%hd121296121330%_
                      '"__"
                      _%$%hd121296121330%_
                      '"-update!")
                     (gx#stx-identifier
                      _%$%hd121296121330%_
                      _%$%hd121296121330%_
                      '"-update!")
                     (gx#stx-identifier
                      _%$%hd121296121330%_
                      _%$%hd121296121330%_
                      '"-update!/lock")
                     (gx#stx-identifier
                      _%$%hd121296121330%_
                      _%$%hd121296121330%_
                      '"-delete!")
                     (gx#stx-identifier
                      _%$%hd121296121330%_
                      _%$%hd121296121330%_
                      '"-delete!/lock"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g121287121309%_
                                                     _%$%g121288121313%_))))
                                            (_%$%g121287121309%_
                                             _%$%g121288121313%_))))
                                    (_%$%g121287121309%_
                                     _%$%g121288121313%_))))
                            (_%$%g121287121309%_ _%$%g121288121313%_))))
                    (_%$%g121287121309%_ _%$%g121288121313%_)))))
        (_%$%g121286121622%_ _%stx121284%_))))
  (define |[:0:]#probe-step|
    (lambda (_%$stx121626%_)
      (let* ((_%$%g121630121652%_
              (lambda (_%$%g121631121648%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g121631121648%_)))
             (_%$%g121629121721%_
              (lambda (_%$%g121631121656%_)
                (if (gx#stx-pair? _%$%g121631121656%_)
                    (let ((_%$%e121635121659%_
                           (gx#syntax-e _%$%g121631121656%_)))
                      (let ((_%$%hd121636121663%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e121635121659%_)))
                            (_%$%tl121637121666%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e121635121659%_))))
                        (if (gx#stx-pair? _%$%tl121637121666%_)
                            (let ((_%$%e121638121669%_
                                   (gx#syntax-e _%$%tl121637121666%_)))
                              (let ((_%$%hd121639121673%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e121638121669%_)))
                                    (_%$%tl121640121676%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e121638121669%_))))
                                (if (gx#stx-pair? _%$%tl121640121676%_)
                                    (let ((_%$%e121641121679%_
                                           (gx#syntax-e _%$%tl121640121676%_)))
                                      (let ((_%$%hd121642121683%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e121641121679%_)))
                                            (_%$%tl121643121686%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e121641121679%_))))
                                        (if (gx#stx-pair? _%$%tl121643121686%_)
                                            (let ((_%$%e121644121689%_
                                                   (gx#syntax-e
                                                    _%$%tl121643121686%_)))
                                              (let ((_%$%hd121645121693%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e121644121689%_)))
                                                    (_%$%tl121646121696%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e121644121689%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl121646121696%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'next-probe)
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons _%$%hd121639121673%_
                                                (cons _%$%hd121642121683%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fx*)
                          (cons _%$%hd121642121683%_
                                (cons _%$%hd121642121683%_ '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons (gx#datum->syntax '#f 'fxmodulo)
                                    (cons (gx#datum->syntax '#f 'next-probe)
                                          (cons _%$%hd121645121693%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g121630121652%_
                                                     _%$%g121631121656%_))))
                                            (_%$%g121630121652%_
                                             _%$%g121631121656%_))))
                                    (_%$%g121630121652%_
                                     _%$%g121631121656%_))))
                            (_%$%g121630121652%_ _%$%g121631121656%_))))
                    (_%$%g121630121652%_ _%$%g121631121656%_)))))
        (_%$%g121629121721%_ _%$stx121626%_))))
  (define |[:0:]#__table-ref|
    (lambda (_%$stx121725%_)
      (let* ((_%$%g121729121763%_
              (lambda (_%$%g121730121759%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g121730121759%_)))
             (_%$%g121728121874%_
              (lambda (_%$%g121730121767%_)
                (if (gx#stx-pair? _%$%g121730121767%_)
                    (let ((_%$%e121737121770%_
                           (gx#syntax-e _%$%g121730121767%_)))
                      (let ((_%$%hd121738121774%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e121737121770%_)))
                            (_%$%tl121739121777%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e121737121770%_))))
                        (if (gx#stx-pair? _%$%tl121739121777%_)
                            (let ((_%$%e121740121780%_
                                   (gx#syntax-e _%$%tl121739121777%_)))
                              (let ((_%$%hd121741121784%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e121740121780%_)))
                                    (_%$%tl121742121787%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e121740121780%_))))
                                (if (gx#stx-pair? _%$%tl121742121787%_)
                                    (let ((_%$%e121743121790%_
                                           (gx#syntax-e _%$%tl121742121787%_)))
                                      (let ((_%$%hd121744121794%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e121743121790%_)))
                                            (_%$%tl121745121797%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e121743121790%_))))
                                        (if (gx#stx-pair? _%$%tl121745121797%_)
                                            (let ((_%$%e121746121800%_
                                                   (gx#syntax-e
                                                    _%$%tl121745121797%_)))
                                              (let ((_%$%hd121747121804%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e121746121800%_)))
                                                    (_%$%tl121748121807%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e121746121800%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl121748121807%_)
                                                    (let ((_%$%e121749121810%_
                                                           (gx#syntax-e
                                                            _%$%tl121748121807%_)))
                                                      (let ((_%$%hd121750121814%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e121749121810%_)))
                    (_%$%tl121751121817%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e121749121810%_))))
                (if (gx#stx-pair? _%$%tl121751121817%_)
                    (let ((_%$%e121752121820%_
                           (gx#syntax-e _%$%tl121751121817%_)))
                      (let ((_%$%hd121753121824%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e121752121820%_)))
                            (_%$%tl121754121827%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e121752121820%_))))
                        (if (gx#stx-pair? _%$%tl121754121827%_)
                            (let ((_%$%e121755121830%_
                                   (gx#syntax-e _%$%tl121754121827%_)))
                              (let ((_%$%hd121756121834%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e121755121830%_)))
                                    (_%$%tl121757121837%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e121755121830%_))))
                                (if (gx#stx-null? _%$%tl121757121837%_)
                                    (cons (gx#datum->syntax '#f 'let*)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'h)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'fxxor)
                                (cons (cons _%$%hd121747121804%_
                                            (cons _%$%hd121753121824%_ '()))
                                      (cons _%$%hd121744121794%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'size)
                          (cons (cons (gx#datum->syntax '#f 'vector-length)
                                      (cons _%$%hd121741121784%_ '()))
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
                            (cons _%$%hd121741121784%_
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
                                  (cons _%$%hd121756121834%_ '()))
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
                                  (cons (cons (cons _%$%hd121750121814%_
                                                    (cons _%$%hd121753121824%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-ref)
                                                          (cons _%$%hd121741121784%_
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
                                    (_%$%g121729121763%_
                                     _%$%g121730121767%_))))
                            (_%$%g121729121763%_ _%$%g121730121767%_))))
                    (_%$%g121729121763%_ _%$%g121730121767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g121729121763%_
                                                     _%$%g121730121767%_))))
                                            (_%$%g121729121763%_
                                             _%$%g121730121767%_))))
                                    (_%$%g121729121763%_
                                     _%$%g121730121767%_))))
                            (_%$%g121729121763%_ _%$%g121730121767%_))))
                    (_%$%g121729121763%_ _%$%g121730121767%_)))))
        (_%$%g121728121874%_ _%$stx121725%_))))
  (define |[:0:]#__table-set!|
    (lambda (_%$stx121878%_)
      (let* ((_%$%g121882121924%_
              (lambda (_%$%g121883121920%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g121883121920%_)))
             (_%$%g121881122063%_
              (lambda (_%$%g121883121928%_)
                (if (gx#stx-pair? _%$%g121883121928%_)
                    (let ((_%$%e121892121931%_
                           (gx#syntax-e _%$%g121883121928%_)))
                      (let ((_%$%hd121893121935%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e121892121931%_)))
                            (_%$%tl121894121938%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e121892121931%_))))
                        (if (gx#stx-pair? _%$%tl121894121938%_)
                            (let ((_%$%e121895121941%_
                                   (gx#syntax-e _%$%tl121894121938%_)))
                              (let ((_%$%hd121896121945%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e121895121941%_)))
                                    (_%$%tl121897121948%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e121895121941%_))))
                                (if (gx#stx-pair? _%$%tl121897121948%_)
                                    (let ((_%$%e121898121951%_
                                           (gx#syntax-e _%$%tl121897121948%_)))
                                      (let ((_%$%hd121899121955%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e121898121951%_)))
                                            (_%$%tl121900121958%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e121898121951%_))))
                                        (if (gx#stx-pair? _%$%tl121900121958%_)
                                            (let ((_%$%e121901121961%_
                                                   (gx#syntax-e
                                                    _%$%tl121900121958%_)))
                                              (let ((_%$%hd121902121965%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e121901121961%_)))
                                                    (_%$%tl121903121968%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e121901121961%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl121903121968%_)
                                                    (let ((_%$%e121904121971%_
                                                           (gx#syntax-e
                                                            _%$%tl121903121968%_)))
                                                      (let ((_%$%hd121905121975%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e121904121971%_)))
                    (_%$%tl121906121978%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e121904121971%_))))
                (if (gx#stx-pair? _%$%tl121906121978%_)
                    (let ((_%$%e121907121981%_
                           (gx#syntax-e _%$%tl121906121978%_)))
                      (let ((_%$%hd121908121985%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e121907121981%_)))
                            (_%$%tl121909121988%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e121907121981%_))))
                        (if (gx#stx-pair? _%$%tl121909121988%_)
                            (let ((_%$%e121910121991%_
                                   (gx#syntax-e _%$%tl121909121988%_)))
                              (let ((_%$%hd121911121995%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e121910121991%_)))
                                    (_%$%tl121912121998%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e121910121991%_))))
                                (if (gx#stx-pair? _%$%tl121912121998%_)
                                    (let ((_%$%e121913122001%_
                                           (gx#syntax-e _%$%tl121912121998%_)))
                                      (let ((_%$%hd121914122005%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e121913122001%_)))
                                            (_%$%tl121915122008%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e121913122001%_))))
                                        (if (gx#stx-pair? _%$%tl121915122008%_)
                                            (let ((_%$%e121916122011%_
                                                   (gx#syntax-e
                                                    _%$%tl121915122008%_)))
                                              (let ((_%$%hd121917122015%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e121916122011%_)))
                                                    (_%$%tl121918122018%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e121916122011%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl121918122018%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let*)
                                                          (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'h)
                                    (cons (cons (gx#datum->syntax '#f 'fxxor)
                                                (cons (cons _%$%hd121902121965%_
                                                            (cons _%$%hd121908121985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%$%hd121899121955%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (cons (cons (gx#datum->syntax '#f 'size)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'vector-length)
                                                      (cons _%$%hd121896121945%_
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
                                            (cons _%$%hd121896121945%_
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
                                                    (cons _%$%hd121896121945%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'deleted)
                        (cons _%$%hd121908121985%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd121896121945%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'fx+)
                                    (cons (gx#datum->syntax '#f 'deleted)
                                          (cons '1 '())))
                              (cons _%$%hd121911121995%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%$%hd121917122015%_
                                                                '())
                                                          '()))))
                                  (cons (cons (gx#datum->syntax '#f 'begin)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd121896121945%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'probe)
                              (cons _%$%hd121908121985%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'vector-set!)
                        (cons _%$%hd121896121945%_
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                (cons '1 '())))
                                    (cons _%$%hd121911121995%_ '()))))
                  (cons (cons _%$%hd121914122005%_ '()) '()))))
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
                                                  (cons (cons (cons _%$%hd121905121975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd121908121985%_
                                  (cons (gx#datum->syntax '#f 'k) '())))
                      (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                  (cons _%$%hd121896121945%_
                                        (cons (gx#datum->syntax '#f 'probe)
                                              (cons _%$%hd121908121985%_
                                                    '()))))
                            (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                        (cons _%$%hd121896121945%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fx+)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'probe)
                        (cons '1 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%$%hd121911121995%_
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
                                                    (_%$%g121882121924%_
                                                     _%$%g121883121928%_))))
                                            (_%$%g121882121924%_
                                             _%$%g121883121928%_))))
                                    (_%$%g121882121924%_
                                     _%$%g121883121928%_))))
                            (_%$%g121882121924%_ _%$%g121883121928%_))))
                    (_%$%g121882121924%_ _%$%g121883121928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g121882121924%_
                                                     _%$%g121883121928%_))))
                                            (_%$%g121882121924%_
                                             _%$%g121883121928%_))))
                                    (_%$%g121882121924%_
                                     _%$%g121883121928%_))))
                            (_%$%g121882121924%_ _%$%g121883121928%_))))
                    (_%$%g121882121924%_ _%$%g121883121928%_)))))
        (_%$%g121881122063%_ _%$stx121878%_))))
  (define |[:0:]#__table-update!|
    (lambda (_%$stx122067%_)
      (let* ((_%$%g122071122117%_
              (lambda (_%$%g122072122113%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g122072122113%_)))
             (_%$%g122070122270%_
              (lambda (_%$%g122072122121%_)
                (if (gx#stx-pair? _%$%g122072122121%_)
                    (let ((_%$%e122082122124%_
                           (gx#syntax-e _%$%g122072122121%_)))
                      (let ((_%$%hd122083122128%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e122082122124%_)))
                            (_%$%tl122084122131%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e122082122124%_))))
                        (if (gx#stx-pair? _%$%tl122084122131%_)
                            (let ((_%$%e122085122134%_
                                   (gx#syntax-e _%$%tl122084122131%_)))
                              (let ((_%$%hd122086122138%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e122085122134%_)))
                                    (_%$%tl122087122141%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e122085122134%_))))
                                (if (gx#stx-pair? _%$%tl122087122141%_)
                                    (let ((_%$%e122088122144%_
                                           (gx#syntax-e _%$%tl122087122141%_)))
                                      (let ((_%$%hd122089122148%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e122088122144%_)))
                                            (_%$%tl122090122151%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e122088122144%_))))
                                        (if (gx#stx-pair? _%$%tl122090122151%_)
                                            (let ((_%$%e122091122154%_
                                                   (gx#syntax-e
                                                    _%$%tl122090122151%_)))
                                              (let ((_%$%hd122092122158%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e122091122154%_)))
                                                    (_%$%tl122093122161%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e122091122154%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl122093122161%_)
                                                    (let ((_%$%e122094122164%_
                                                           (gx#syntax-e
                                                            _%$%tl122093122161%_)))
                                                      (let ((_%$%hd122095122168%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e122094122164%_)))
                    (_%$%tl122096122171%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e122094122164%_))))
                (if (gx#stx-pair? _%$%tl122096122171%_)
                    (let ((_%$%e122097122174%_
                           (gx#syntax-e _%$%tl122096122171%_)))
                      (let ((_%$%hd122098122178%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e122097122174%_)))
                            (_%$%tl122099122181%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e122097122174%_))))
                        (if (gx#stx-pair? _%$%tl122099122181%_)
                            (let ((_%$%e122100122184%_
                                   (gx#syntax-e _%$%tl122099122181%_)))
                              (let ((_%$%hd122101122188%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e122100122184%_)))
                                    (_%$%tl122102122191%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e122100122184%_))))
                                (if (gx#stx-pair? _%$%tl122102122191%_)
                                    (let ((_%$%e122103122194%_
                                           (gx#syntax-e _%$%tl122102122191%_)))
                                      (let ((_%$%hd122104122198%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e122103122194%_)))
                                            (_%$%tl122105122201%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e122103122194%_))))
                                        (if (gx#stx-pair? _%$%tl122105122201%_)
                                            (let ((_%$%e122106122204%_
                                                   (gx#syntax-e
                                                    _%$%tl122105122201%_)))
                                              (let ((_%$%hd122107122208%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e122106122204%_)))
                                                    (_%$%tl122108122211%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e122106122204%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl122108122211%_)
                                                    (let ((_%$%e122109122214%_
                                                           (gx#syntax-e
                                                            _%$%tl122108122211%_)))
                                                      (let ((_%$%hd122110122218%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e122109122214%_)))
                    (_%$%tl122111122221%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e122109122214%_))))
                (if (gx#stx-null? _%$%tl122111122221%_)
                    (cons (gx#datum->syntax '#f 'let*)
                          (cons (cons (cons (gx#datum->syntax '#f 'h)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'fxxor)
                                                        (cons (cons _%$%hd122092122158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd122098122178%_ '()))
                      (cons _%$%hd122089122148%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'size)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'vector-length)
                                                              (cons _%$%hd122086122138%_
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
                                                    (cons _%$%hd122086122138%_
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
                                                            (cons _%$%hd122086122138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'deleted)
                                (cons _%$%hd122098122178%_ '()))))
              (cons (cons (gx#datum->syntax '#f 'vector-set!)
                          (cons _%$%hd122086122138%_
                                (cons (cons (gx#datum->syntax '#f 'fx+)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'deleted)
                                                  (cons '1 '())))
                                      (cons (cons _%$%hd122101122188%_
                                                  (cons _%$%hd122104122198%_
                                                        '()))
                                            '()))))
                    (cons (cons _%$%hd122110122218%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'vector-set!)
                          (cons _%$%hd122086122138%_
                                (cons (gx#datum->syntax '#f 'probe)
                                      (cons _%$%hd122098122178%_ '()))))
                    (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                (cons _%$%hd122086122138%_
                                      (cons (cons (gx#datum->syntax '#f 'fx+)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'probe)
                                                        (cons '1 '())))
                                            (cons (cons _%$%hd122101122188%_
                                                        (cons _%$%hd122104122198%_
                                                              '()))
                                                  '()))))
                          (cons (cons _%$%hd122107122208%_ '()) '()))))
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
                  (cons (cons (cons _%$%hd122095122168%_
                                    (cons _%$%hd122098122178%_
                                          (cons (gx#datum->syntax '#f 'k)
                                                '())))
                              (cons (cons (gx#datum->syntax '#f 'vector-set!)
                                          (cons _%$%hd122086122138%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'probe)
                                                      (cons _%$%hd122098122178%_
                                                            '()))))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons _%$%hd122086122138%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'fx+)
                          (cons (gx#datum->syntax '#f 'probe) (cons '1 '())))
                    (cons (cons _%$%hd122101122188%_
                                (cons (cons (gx#datum->syntax '#f 'vector-ref)
                                            (cons _%$%hd122086122138%_
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
                    (_%$%g122071122117%_ _%$%g122072122121%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g122071122117%_
                                                     _%$%g122072122121%_))))
                                            (_%$%g122071122117%_
                                             _%$%g122072122121%_))))
                                    (_%$%g122071122117%_
                                     _%$%g122072122121%_))))
                            (_%$%g122071122117%_ _%$%g122072122121%_))))
                    (_%$%g122071122117%_ _%$%g122072122121%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g122071122117%_
                                                     _%$%g122072122121%_))))
                                            (_%$%g122071122117%_
                                             _%$%g122072122121%_))))
                                    (_%$%g122071122117%_
                                     _%$%g122072122121%_))))
                            (_%$%g122071122117%_ _%$%g122072122121%_))))
                    (_%$%g122071122117%_ _%$%g122072122121%_)))))
        (_%$%g122070122270%_ _%$stx122067%_))))
  (define |[:0:]#__table-del!|
    (lambda (_%$stx122274%_)
      (let* ((_%$%g122278122312%_
              (lambda (_%$%g122279122308%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g122279122308%_)))
             (_%$%g122277122423%_
              (lambda (_%$%g122279122316%_)
                (if (gx#stx-pair? _%$%g122279122316%_)
                    (let ((_%$%e122286122319%_
                           (gx#syntax-e _%$%g122279122316%_)))
                      (let ((_%$%hd122287122323%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e122286122319%_)))
                            (_%$%tl122288122326%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e122286122319%_))))
                        (if (gx#stx-pair? _%$%tl122288122326%_)
                            (let ((_%$%e122289122329%_
                                   (gx#syntax-e _%$%tl122288122326%_)))
                              (let ((_%$%hd122290122333%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e122289122329%_)))
                                    (_%$%tl122291122336%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e122289122329%_))))
                                (if (gx#stx-pair? _%$%tl122291122336%_)
                                    (let ((_%$%e122292122339%_
                                           (gx#syntax-e _%$%tl122291122336%_)))
                                      (let ((_%$%hd122293122343%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e122292122339%_)))
                                            (_%$%tl122294122346%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e122292122339%_))))
                                        (if (gx#stx-pair? _%$%tl122294122346%_)
                                            (let ((_%$%e122295122349%_
                                                   (gx#syntax-e
                                                    _%$%tl122294122346%_)))
                                              (let ((_%$%hd122296122353%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e122295122349%_)))
                                                    (_%$%tl122297122356%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e122295122349%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl122297122356%_)
                                                    (let ((_%$%e122298122359%_
                                                           (gx#syntax-e
                                                            _%$%tl122297122356%_)))
                                                      (let ((_%$%hd122299122363%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e122298122359%_)))
                    (_%$%tl122300122366%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e122298122359%_))))
                (if (gx#stx-pair? _%$%tl122300122366%_)
                    (let ((_%$%e122301122369%_
                           (gx#syntax-e _%$%tl122300122366%_)))
                      (let ((_%$%hd122302122373%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e122301122369%_)))
                            (_%$%tl122303122376%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e122301122369%_))))
                        (if (gx#stx-pair? _%$%tl122303122376%_)
                            (let ((_%$%e122304122379%_
                                   (gx#syntax-e _%$%tl122303122376%_)))
                              (let ((_%$%hd122305122383%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e122304122379%_)))
                                    (_%$%tl122306122386%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e122304122379%_))))
                                (if (gx#stx-null? _%$%tl122306122386%_)
                                    (cons (gx#datum->syntax '#f 'let*)
                                          (cons (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'h)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'fxxor)
                                (cons (cons _%$%hd122296122353%_
                                            (cons _%$%hd122302122373%_ '()))
                                      (cons _%$%hd122293122343%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'size)
                          (cons (cons (gx#datum->syntax '#f 'vector-length)
                                      (cons _%$%hd122290122333%_ '()))
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
                            (cons _%$%hd122290122333%_
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
                                  (cons (cons (cons _%$%hd122299122363%_
                                                    (cons _%$%hd122302122373%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'k)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'vector-set!)
                                                          (cons _%$%hd122290122333%_
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
                        (cons _%$%hd122290122333%_
                              (cons (cons (gx#datum->syntax '#f 'fx+)
                                          (cons (gx#datum->syntax '#f 'probe)
                                                (cons '1 '())))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'macro-absent-obj)
                                                '())
                                          '()))))
                  (cons (cons _%$%hd122305122383%_ '()) '()))))
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
                                    (_%$%g122278122312%_
                                     _%$%g122279122316%_))))
                            (_%$%g122278122312%_ _%$%g122279122316%_))))
                    (_%$%g122278122312%_ _%$%g122279122316%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g122278122312%_
                                                     _%$%g122279122316%_))))
                                            (_%$%g122278122312%_
                                             _%$%g122279122316%_))))
                                    (_%$%g122278122312%_
                                     _%$%g122279122316%_))))
                            (_%$%g122278122312%_ _%$%g122279122316%_))))
                    (_%$%g122278122312%_ _%$%g122279122316%_)))))
        (_%$%g122277122423%_ _%$stx122274%_))))
  (define |[:0:]#do-gc-table-lock|
    (lambda (_%$stx122427%_)
      (let* ((_%$%g122431122449%_
              (lambda (_%$%g122432122445%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g122432122445%_)))
             (_%$%g122430122504%_
              (lambda (_%$%g122432122453%_)
                (if (gx#stx-pair? _%$%g122432122453%_)
                    (let ((_%$%e122435122456%_
                           (gx#syntax-e _%$%g122432122453%_)))
                      (let ((_%$%hd122436122460%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e122435122456%_)))
                            (_%$%tl122437122463%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e122435122456%_))))
                        (if (gx#stx-pair? _%$%tl122437122463%_)
                            (let ((_%$%e122438122466%_
                                   (gx#syntax-e _%$%tl122437122463%_)))
                              (let ((_%$%hd122439122470%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e122438122466%_)))
                                    (_%$%tl122440122473%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e122438122466%_))))
                                (if (gx#stx-pair? _%$%tl122440122473%_)
                                    (let ((_%$%e122441122476%_
                                           (gx#syntax-e _%$%tl122440122473%_)))
                                      (let ((_%$%hd122442122480%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e122441122476%_)))
                                            (_%$%tl122443122483%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e122441122476%_))))
                                        (if (gx#stx-null? _%$%tl122443122483%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   '__do-inline-lock!)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '&gc-table-lock)
                                                              (cons _%$%hd122439122470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%$%hd122442122480%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g122431122449%_
                                             _%$%g122432122453%_))))
                                    (_%$%g122431122449%_
                                     _%$%g122432122453%_))))
                            (_%$%g122431122449%_ _%$%g122432122453%_))))
                    (_%$%g122431122449%_ _%$%g122432122453%_)))))
        (_%$%g122430122504%_ _%$stx122427%_)))))
