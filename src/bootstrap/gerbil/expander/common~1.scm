(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g181812_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181814_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181816_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181818_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181819_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181821_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181822_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181824_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181825_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181827_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181828_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181830_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj181808
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181808 'gerbil#AST::t '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181808 'syntax '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181808 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181808 '(e source) '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181808 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181808 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181808 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181808 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181808 '#f '13 '#f '#f))
        (let ((__tmp181811 |gx[1]#_g181812_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj181808 __tmp181811 '4 '#f '#f))
        (let ((__tmp181813 |gx[1]#_g181814_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj181808 __tmp181813 '14 '#f '#f))
        (let ((__tmp181815 |gx[1]#_g181816_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj181808 __tmp181815 '15 '#f '#f))
        (let ((__tmp181817
               (cons (cons 'e |gx[1]#_g181818_|)
                     (cons (cons 'source |gx[1]#_g181819_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj181808 __tmp181817 '16 '#f '#f))
        (let ((__tmp181820
               (cons (cons 'e |gx[1]#_g181821_|)
                     (cons (cons 'source |gx[1]#_g181822_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj181808 __tmp181820 '17 '#f '#f))
        (let ((__tmp181823
               (cons (cons 'e |gx[1]#_g181824_|)
                     (cons (cons 'source |gx[1]#_g181825_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj181808 __tmp181823 '18 '#f '#f))
        (let ((__tmp181826
               (cons (cons 'e |gx[1]#_g181827_|)
                     (cons (cons 'source |gx[1]#_g181828_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj181808 __tmp181826 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181808 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181808 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181808 '() '21 '#f '#f))
        __obj181808))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx180405%_)
        (let* ((_%$%g180409180423%_
                (lambda (_%$%g180410180419%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g180410180419%_)))
               (_%$%g180408180465%_
                (lambda (_%$%g180410180427%_)
                  (if (gx#stx-pair? _%$%g180410180427%_)
                      (let ((_%$%e180412180430%_
                             (gx#syntax-e _%$%g180410180427%_)))
                        (let ((_%$%hd180413180434%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e180412180430%_)))
                              (_%$%tl180414180437%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e180412180430%_))))
                          (if (gx#stx-pair? _%$%tl180414180437%_)
                              (let ((_%$%e180415180440%_
                                     (gx#syntax-e _%$%tl180414180437%_)))
                                (let ((_%$%hd180416180444%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e180415180440%_)))
                                      (_%$%tl180417180447%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e180415180440%_))))
                                  (if (gx#stx-null? _%$%tl180417180447%_)
                                      (cons (gx#datum->syntax '#f 'unless)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'procedure?)
                                                        (cons _%$%hd180416180444%_
                                                              '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'error)
                                                              (cons '"expected procedure"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd180416180444%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g180409180423%_
                                       _%$%g180410180427%_))))
                              (_%$%g180409180423%_ _%$%g180410180427%_))))
                      (_%$%g180409180423%_ _%$%g180410180427%_)))))
          (_%$%g180408180465%_ _%$stx180405%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx180469%_)
        (letrec ((_%generate180472%_
                  (lambda (_%tgt180621%_ _%kws180623%_ _%clauses180624%_)
                    (letrec ((_%generate-clause180626%_
                              (lambda (_%hd181559%_ _%E181561%_)
                                (let* ((_%__stx181711181712%_ _%hd181559%_)
                                       (_%$%g181565181592%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx181711181712%_))))
                                  (let ((_%__kont181714181715%_
                                         (lambda (_%$%g181567181688%_
                                                  _%$%g181568181690%_)
                                           (_%generate1180628%_
                                            _%hd181559%_
                                            _%$%g181568181690%_
                                            '#t
                                            _%$%g181567181688%_
                                            _%E181561%_)))
                                        (_%__kont181716181717%_
                                         (lambda (_%$%g181575181640%_
                                                  _%$%g181576181642%_
                                                  _%$%g181577181643%_)
                                           (_%generate1180628%_
                                            _%hd181559%_
                                            _%$%g181577181643%_
                                            _%$%g181576181642%_
                                            _%$%g181575181640%_
                                            _%E181561%_)))
                                        (_%__kont181718181719%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx180469%_
                                            _%hd181559%_))))
                                    (if (gx#stx-pair? _%__stx181711181712%_)
                                        (let ((_%$%e181569181668%_
                                               (gx#syntax-e
                                                _%__stx181711181712%_)))
                                          (let ((_%$%tl181571181675%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e181569181668%_)))
                                                (_%$%hd181570181672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e181569181668%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl181571181675%_)
                                                (let ((_%$%e181572181678%_
                                                       (gx#syntax-e
                                                        _%$%tl181571181675%_)))
                                                  (let ((_%$%tl181574181685%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e181572181678%_)))
                                                        (_%$%hd181573181682%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e181572181678%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl181574181685%_)
                                                        (_%__kont181714181715%_
                                                         _%$%hd181573181682%_
                                                         _%$%hd181570181672%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl181574181685%_)
                                                            (let ((_%$%e181584181630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl181574181685%_)))
                      (let ((_%$%tl181586181637%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e181584181630%_)))
                            (_%$%hd181585181634%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e181584181630%_))))
                        (if (gx#stx-null? _%$%tl181586181637%_)
                            (_%__kont181716181717%_
                             _%$%hd181585181634%_
                             _%$%hd181573181682%_
                             _%$%hd181570181672%_)
                            (_%__kont181718181719%_))))
                    (_%__kont181718181719%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont181718181719%_))))
                                        (_%__kont181718181719%_))))))
                             (_%generate1180628%_
                              (lambda (_%where181012%_
                                       _%hd181014%_
                                       _%fender181015%_
                                       _%body181016%_
                                       _%E181017%_)
                                (letrec ((_%recur181019%_
                                          (lambda (_%hd181022%_
                                                   _%tgt181024%_
                                                   _%K181025%_)
                                            (let* ((_%__stx181757181758%_
                                                    _%hd181022%_)
                                                   (_%$%g181028181040%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx181757181758%_))))
                                              (let ((_%__kont181760181761%_
                                                     (lambda (_%$%g181030181349%_
                                                              _%$%g181031181351%_)
                                                       (let* ((_%$%g181362181370%_
                                                               (lambda (_%$%g181363181366%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g181363181366%_)))
                      (_%$%g181361181551%_
                       (lambda (_%$%g181363181374%_)
                         (let* ((_%$%g181389181397%_
                                 (lambda (_%$%g181390181393%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g181390181393%_)))
                                (_%$%g181388181547%_
                                 (lambda (_%$%g181390181401%_)
                                   (let* ((_%$%g181417181425%_
                                           (lambda (_%$%g181418181421%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g181418181421%_)))
                                          (_%$%g181416181543%_
                                           (lambda (_%$%g181418181429%_)
                                             (let* ((_%$%g181445181453%_
                                                     (lambda (_%$%g181446181449%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g181446181449%_)))
                                                    (_%$%g181444181539%_
                                                     (lambda (_%$%g181446181457%_)
                                                       (let* ((_%$%g181473181481%_
                                                               (lambda (_%$%g181474181477%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g181474181477%_)))
                      (_%$%g181472181535%_
                       (lambda (_%$%g181474181485%_)
                         (let* ((_%$%g181501181509%_
                                 (lambda (_%$%g181502181505%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g181502181505%_)))
                                (_%$%g181500181531%_
                                 (lambda (_%$%g181502181513%_)
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'stx-pair?)
                                                     (cons _%$%g181363181374%_
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _%$%g181390181401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'syntax-e)
                                                 (cons _%$%g181363181374%_
                                                       '()))
                                           '()))
                               '())
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%$%g181418181429%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##car)
                           (cons _%$%g181390181401%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g181446181457%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##cdr)
                                 (cons _%$%g181390181401%_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%$%g181474181485%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%g181502181513%_
                                                           '())))))))
                           (_%$%g181500181531%_ _%E181017%_)))))
                 (_%$%g181472181535%_
                  (_%recur181019%_
                   _%$%g181031181351%_
                   _%$%g181418181429%_
                   (_%recur181019%_
                    _%$%g181030181349%_
                    _%$%g181446181457%_
                    _%K181025%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g181444181539%_
                                                (gx#genident 'tl))))))
                                     (_%$%g181416181543%_
                                      (gx#genident 'hd))))))
                           (_%$%g181388181547%_ (gx#genident 'e))))))
                 (_%$%g181361181551%_ _%tgt181024%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont181762181763%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd181022%_)
                                                           (if (gx#underscore?
                                                                _%hd181022%_)
                                                               _%K181025%_
                                                               (if (let ((__tmp181829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%$%g181054181056%_)
                                    (gx#bound-identifier=?
                                     _%$%g181054181056%_
                                     _%hd181022%_))))
                             (declare (not safe))
                             (__find __tmp181829 _%kws180623%_))
                           (let* ((_%$%g181062181077%_
                                   (lambda (_%$%g181063181073%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g181063181073%_)))
                                  (_%$%g181061181130%_
                                   (lambda (_%$%g181063181081%_)
                                     (if (gx#stx-pair? _%$%g181063181081%_)
                                         (let ((_%$%e181066181084%_
                                                (gx#syntax-e
                                                 _%$%g181063181081%_)))
                                           (let ((_%$%hd181067181088%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e181066181084%_)))
                                                 (_%$%tl181068181091%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e181066181084%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl181068181091%_)
                                                 (let ((_%$%e181069181094%_
                                                        (gx#syntax-e
                                                         _%$%tl181068181091%_)))
                                                   (let ((_%$%hd181070181098%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e181069181094%_)))
                                                         (_%$%tl181071181101%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e181069181094%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl181071181101%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'and)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'identifier?)
                                               (cons _%$%hd181067181088%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-identifier=?)
                                                     (cons _%$%hd181067181088%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%$%hd181070181098%_ '()))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons _%K181025%_ (cons _%E181017%_ '()))))
                 (_%$%g181062181077%_ _%$%g181063181081%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g181062181077%_
                                                  _%$%g181063181081%_))))
                                         (_%$%g181062181077%_
                                          _%$%g181063181081%_)))))
                             (_%$%g181061181130%_
                              (list _%tgt181024%_ _%hd181022%_)))
                           (let* ((_%$%g181136181151%_
                                   (lambda (_%$%g181137181147%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g181137181147%_)))
                                  (_%$%g181135181196%_
                                   (lambda (_%$%g181137181155%_)
                                     (if (gx#stx-pair? _%$%g181137181155%_)
                                         (let ((_%$%e181140181158%_
                                                (gx#syntax-e
                                                 _%$%g181137181155%_)))
                                           (let ((_%$%hd181141181162%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e181140181158%_)))
                                                 (_%$%tl181142181165%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e181140181158%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl181142181165%_)
                                                 (let ((_%$%e181143181168%_
                                                        (gx#syntax-e
                                                         _%$%tl181142181165%_)))
                                                   (let ((_%$%hd181144181172%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e181143181168%_)))
                                                         (_%$%tl181145181175%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e181143181168%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl181145181175%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _%$%hd181144181172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _%$%hd181141181162%_ '()))
                                   '())
                             (cons _%K181025%_ '())))
                 (_%$%g181136181151%_ _%$%g181137181155%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g181136181151%_
                                                  _%$%g181137181155%_))))
                                         (_%$%g181136181151%_
                                          _%$%g181137181155%_)))))
                             (_%$%g181135181196%_
                              (list _%tgt181024%_ _%hd181022%_)))))
                   (if (gx#stx-null? _%hd181022%_)
                       (let* ((_%$%g181202181210%_
                               (lambda (_%$%g181203181206%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g181203181206%_)))
                              (_%$%g181201181229%_
                               (lambda (_%$%g181203181214%_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'stx-null?)
                                                   (cons _%$%g181203181214%_
                                                         '()))
                                             (cons _%K181025%_
                                                   (cons _%E181017%_ '())))))))
                         (_%$%g181201181229%_ _%tgt181024%_))
                       (if (gx#stx-datum? _%hd181022%_)
                           (let* ((_%$%g181235181254%_
                                   (lambda (_%$%g181236181250%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g181236181250%_)))
                                  (_%$%g181234181313%_
                                   (lambda (_%$%g181236181258%_)
                                     (if (gx#stx-pair? _%$%g181236181258%_)
                                         (let ((_%$%e181240181261%_
                                                (gx#syntax-e
                                                 _%$%g181236181258%_)))
                                           (let ((_%$%hd181241181265%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e181240181261%_)))
                                                 (_%$%tl181242181268%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e181240181261%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl181242181268%_)
                                                 (let ((_%$%e181243181271%_
                                                        (gx#syntax-e
                                                         _%$%tl181242181268%_)))
                                                   (let ((_%$%hd181244181275%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e181243181271%_)))
                                                         (_%$%tl181245181278%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e181243181271%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%tl181245181278%_)
                                                         (let ((_%$%e181246181281%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl181245181278%_)))
                   (let ((_%$%hd181247181285%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e181246181281%_)))
                         (_%$%tl181248181288%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e181246181281%_))))
                     (if (gx#stx-null? _%$%tl181248181288%_)
                         (cons (gx#datum->syntax '#f 'if)
                               (cons (cons _%$%hd181247181285%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-e)
                                                       (cons _%$%hd181241181265%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%$%hd181244181275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons _%K181025%_
                                           (cons _%E181017%_ '()))))
                         (_%$%g181235181254%_ _%$%g181236181258%_))))
                 (_%$%g181235181254%_ _%$%g181236181258%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g181235181254%_
                                                  _%$%g181236181258%_))))
                                         (_%$%g181235181254%_
                                          _%$%g181236181258%_)))))
                             (_%$%g181234181313%_
                              (list _%tgt181024%_
                                    _%hd181022%_
                                    (let ((_%e181317%_
                                           (gx#stx-e _%hd181022%_)))
                                      (if (or (keyword? _%e181317%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e181317%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e181317%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx180469%_
                            _%where181012%_
                            _%hd181022%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx181757181758%_)
                                                    (let ((_%$%e181032181339%_
                                                           (gx#syntax-e
                                                            _%__stx181757181758%_)))
                                                      (let ((_%$%tl181034181346%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e181032181339%_)))
                    (_%$%hd181033181343%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e181032181339%_))))
                (_%__kont181760181761%_
                 _%$%tl181034181346%_
                 _%$%hd181033181343%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont181762181763%_)))))))
                                  (_%recur181019%_
                                   _%hd181014%_
                                   _%tgt180621%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender181015%_
                                               (cons _%body181016%_
                                                     (cons _%E181017%_
                                                           '()))))))))
                             (_%generate-clauses180629%_
                              (lambda (_%clauses180750%_)
                                (let _%lp180753%_ ((_%rest180756%_
                                                    _%clauses180750%_)
                                                   (_%E180758%_
                                                    (gx#genident 'E))
                                                   (_%r180759%_ '()))
                                  (let* ((_%__stx181793181794%_ _%rest180756%_)
                                         (_%$%g180762180774%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx181793181794%_))))
                                    (let ((_%__kont181796181797%_
                                           (lambda (_%$%g180764180839%_
                                                    _%$%g180765180841%_)
                                             (let* ((_%__stx181773181774%_
                                                     _%$%g180765180841%_)
                                                    (_%$%g180853180864%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx181773181774%_))))
                                               (let ((_%__kont181776181777%_
                                                      (lambda (_%$%g180855180993%_)
                                                        (if (gx#stx-null?
                                                             _%$%g180764180839%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g180855180993%_)
                             (not (gx#stx-null? _%$%g180855180993%_)))
                        (cons (cons _%E180758%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%$%g180855180993%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%$%g180765180841%_))
                                          '()))
                              _%r180759%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx180469%_
                         _%$%g180765180841%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx180469%_
                     _%$%g180765180841%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont181778181779%_
                                                      (lambda ()
                                                        (let* ((_%$%g180875180883%_
                                                                (lambda (_%$%g180876180879%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g180876180879%_)))
                       (_%$%g180874180972%_
                        (lambda (_%$%g180876180887%_)
                          (let* ((_%$%g180906180914%_
                                  (lambda (_%$%g180907180910%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g180907180910%_)))
                                 (_%$%g180905180968%_
                                  (lambda (_%$%g180907180918%_)
                                    (let* ((_%$%g180934180942%_
                                            (lambda (_%$%g180935180938%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g180935180938%_)))
                                           (_%$%g180933180964%_
                                            (lambda (_%$%g180935180946%_)
                                              (_%lp180753%_
                                               _%$%g180764180839%_
                                               _%$%g180876180887%_
                                               (cons (cons _%E180758%_
                                                           (cons _%$%g180935180946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r180759%_)))))
                                      (_%$%g180933180964%_
                                       (gx#stx-wrap-source
                                        (cons (gx#datum->syntax '#f 'lambda)
                                              (cons '()
                                                    (cons _%$%g180907180918%_
                                                          '())))
                                        (gx#stx-source
                                         _%$%g180765180841%_)))))))
                            (_%$%g180905180968%_
                             (_%generate-clause180626%_
                              _%$%g180765180841%_
                              (cons _%$%g180876180887%_ '())))))))
                  (_%$%g180874180972%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx181773181774%_)
                                                     (let ((_%$%e180856180983%_
                                                            (gx#syntax-e
                                                             _%__stx181773181774%_)))
                                                       (let ((_%$%tl180858180990%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e180856180983%_)))
                     (_%$%hd180857180987%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e180856180983%_))))
                 (if (gx#identifier? _%$%hd180857180987%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g181830_|
                          _%$%hd180857180987%_)
                         (_%__kont181776181777%_ _%$%tl180858180990%_)
                         (_%__kont181778181779%_))
                     (_%__kont181778181779%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont181778181779%_))))))
                                          (_%__kont181798181799%_
                                           (lambda ()
                                             (let* ((_%$%g180785180793%_
                                                     (lambda (_%$%g180786180789%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g180786180789%_)))
                                                    (_%$%g180784180818%_
                                                     (lambda (_%$%g180786180797%_)
                                                       (cons (cons _%E180758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'raise-syntax-error)
                                                          (cons '#f
                                                                (cons '"Bad syntax; invalid syntax-case clause"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%g180786180797%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (gx#stx-source _%stx180469%_))
                                 '()))
                     _%r180759%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g180784180818%_
                                                _%tgt180621%_)))))
                                      (if (gx#stx-pair? _%__stx181793181794%_)
                                          (let ((_%$%e180766180829%_
                                                 (gx#syntax-e
                                                  _%__stx181793181794%_)))
                                            (let ((_%$%tl180768180836%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e180766180829%_)))
                                                  (_%$%hd180767180833%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e180766180829%_))))
                                              (_%__kont181796181797%_
                                               _%$%tl180768180836%_
                                               _%$%hd180767180833%_)))
                                          (_%__kont181798181799%_))))))))
                      (let* ((_%bind180631%_
                              (_%generate-clauses180629%_ _%clauses180624%_))
                             (_%$%g180634180651%_
                              (lambda (_%$%g180635180647%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g180635180647%_)))
                             (_%$%g180633180746%_
                              (lambda (_%$%g180635180655%_)
                                (if (gx#stx-pair/null? _%$%g180635180655%_)
                                    (let ((_g181831_
                                           (gx#syntax-split-splice
                                            _%$%g180635180655%_
                                            '0)))
                                      (begin
                                        (let ((_g181832_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g181831_)
                                                     (##values-length
                                                      _g181831_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g181832_ 2)))
                                              (error "Context expects 2 values"
                                                     _g181832_)))
                                        (let ((_%$%target180637180658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g181831_ 0)))
                                              (_%$%tl180639180661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g181831_ 1))))
                                          (if (gx#stx-null?
                                               _%$%tl180639180661%_)
                                              (letrec ((_%$%loop180640180664%_
                                                        (lambda (_%$%hd180638180668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%bind-try180644180671%_)
                  (if (gx#stx-pair? _%$%hd180638180668%_)
                      (let ((_%$%e180641180673%_
                             (gx#syntax-e _%$%hd180638180668%_)))
                        (let ((_%$%lp-hd180642180677%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e180641180673%_)))
                              (_%$%lp-tl180643180680%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e180641180673%_))))
                          (_%$%loop180640180664%_
                           _%$%lp-tl180643180680%_
                           (cons _%$%lp-hd180642180677%_
                                 _%$%bind-try180644180671%_))))
                      (let* ((_%$%bind-try180645180683%_
                              (reverse _%$%bind-try180644180671%_))
                             (_%$%g180704180712%_
                              (lambda (_%$%g180705180708%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g180705180708%_)))
                             (_%$%g180703180742%_
                              (lambda (_%$%g180705180716%_)
                                (cons (gx#datum->syntax '#f 'let*)
                                      (cons (let ((__tmp181833
                                                   (lambda (_%$%g180733180736%_
                                                            _%$%g180734180739%_)
                                                     (cons _%$%g180733180736%_
                                                           _%$%g180734180739%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp181833
                                               '()
                                               _%$%bind-try180645180683%_))
                                            (cons (cons _%$%g180705180716%_
                                                        '())
                                                  '()))))))
                        (_%$%g180703180742%_ (car (last _%bind180631%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop180640180664%_
                                                 _%$%target180637180658%_
                                                 '()))
                                              (_%$%g180634180651%_
                                               _%$%g180635180655%_)))))
                                    (_%$%g180634180651%_
                                     _%$%g180635180655%_)))))
                        (_%$%g180633180746%_ _%bind180631%_))))))
          (let* ((_%$%g180475180494%_
                  (lambda (_%$%g180476180490%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g180476180490%_)))
                 (_%$%g180474180617%_
                  (lambda (_%$%g180476180498%_)
                    (if (gx#stx-pair? _%$%g180476180498%_)
                        (let ((_%$%e180480180501%_
                               (gx#syntax-e _%$%g180476180498%_)))
                          (let ((_%$%hd180481180505%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e180480180501%_)))
                                (_%$%tl180482180508%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e180480180501%_))))
                            (if (gx#stx-pair? _%$%tl180482180508%_)
                                (let ((_%$%e180483180511%_
                                       (gx#syntax-e _%$%tl180482180508%_)))
                                  (let ((_%$%hd180484180515%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e180483180511%_)))
                                        (_%$%tl180485180518%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e180483180511%_))))
                                    (if (gx#stx-pair? _%$%tl180485180518%_)
                                        (let ((_%$%e180486180521%_
                                               (gx#syntax-e
                                                _%$%tl180485180518%_)))
                                          (let ((_%$%hd180487180525%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e180486180521%_)))
                                                (_%$%tl180488180528%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e180486180521%_))))
                                            (if (and (gx#identifier-list?
                                                      _%$%hd180487180525%_)
                                                     (gx#stx-list?
                                                      _%$%tl180488180528%_))
                                                (let* ((_%$%g180552180560%_
                                                        (lambda (_%$%g180553180556%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g180553180556%_)))
                                                       (_%$%g180551180613%_
                                                        (lambda (_%$%g180553180564%_)
                                                          (let* ((_%$%g180579180587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%g180580180583%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%$%g180580180583%_)))
                         (_%$%g180578180609%_
                          (lambda (_%$%g180580180591%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _%$%g180553180564%_
                                                    (cons _%$%hd180484180515%_
                                                          '()))
                                              '())
                                        (cons _%$%g180580180591%_ '()))))))
                    (_%$%g180578180609%_
                     (_%generate180472%_
                      _%$%g180553180564%_
                      (gx#syntax->list _%$%hd180487180525%_)
                      _%$%tl180488180528%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g180551180613%_
                                                   (gx#genident 'e)))
                                                (_%$%g180475180494%_
                                                 _%$%g180476180498%_))))
                                        (_%$%g180475180494%_
                                         _%$%g180476180498%_))))
                                (_%$%g180475180494%_ _%$%g180476180498%_))))
                        (_%$%g180475180494%_ _%$%g180476180498%_)))))
            (_%$%g180474180617%_ _%stx180469%_)))))))
