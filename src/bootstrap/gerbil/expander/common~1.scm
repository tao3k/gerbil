(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g181608_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181610_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181612_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181614_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181615_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181617_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181618_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181620_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181621_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181623_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181624_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181626_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj181604
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
          (##unchecked-structure-set! __obj181604 'gerbil#AST::t '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181604 'syntax '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181604 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181604 '(e source) '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181604 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181604 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181604 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181604 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181604 '#f '13 '#f '#f))
        (let ((__tmp181607 |gx[1]#_g181608_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj181604 __tmp181607 '4 '#f '#f))
        (let ((__tmp181609 |gx[1]#_g181610_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj181604 __tmp181609 '14 '#f '#f))
        (let ((__tmp181611 |gx[1]#_g181612_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj181604 __tmp181611 '15 '#f '#f))
        (let ((__tmp181613
               (cons (cons 'e |gx[1]#_g181614_|)
                     (cons (cons 'source |gx[1]#_g181615_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj181604 __tmp181613 '16 '#f '#f))
        (let ((__tmp181616
               (cons (cons 'e |gx[1]#_g181617_|)
                     (cons (cons 'source |gx[1]#_g181618_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj181604 __tmp181616 '17 '#f '#f))
        (let ((__tmp181619
               (cons (cons 'e |gx[1]#_g181620_|)
                     (cons (cons 'source |gx[1]#_g181621_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj181604 __tmp181619 '18 '#f '#f))
        (let ((__tmp181622
               (cons (cons 'e |gx[1]#_g181623_|)
                     (cons (cons 'source |gx[1]#_g181624_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj181604 __tmp181622 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181604 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181604 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181604 '() '21 '#f '#f))
        __obj181604))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx180201%_)
        (let* ((_%$%g180205180219%_
                (lambda (_%$%g180206180215%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g180206180215%_)))
               (_%$%g180204180261%_
                (lambda (_%$%g180206180223%_)
                  (if (gx#stx-pair? _%$%g180206180223%_)
                      (let ((_%$%e180208180226%_
                             (gx#syntax-e _%$%g180206180223%_)))
                        (let ((_%$%hd180209180230%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e180208180226%_)))
                              (_%$%tl180210180233%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e180208180226%_))))
                          (if (gx#stx-pair? _%$%tl180210180233%_)
                              (let ((_%$%e180211180236%_
                                     (gx#syntax-e _%$%tl180210180233%_)))
                                (let ((_%$%hd180212180240%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e180211180236%_)))
                                      (_%$%tl180213180243%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e180211180236%_))))
                                  (if (gx#stx-null? _%$%tl180213180243%_)
                                      (cons (gx#datum->syntax '#f 'unless)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'procedure?)
                                                        (cons _%$%hd180212180240%_
                                                              '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'error)
                                                              (cons '"expected procedure"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd180212180240%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g180205180219%_
                                       _%$%g180206180223%_))))
                              (_%$%g180205180219%_ _%$%g180206180223%_))))
                      (_%$%g180205180219%_ _%$%g180206180223%_)))))
          (_%$%g180204180261%_ _%$stx180201%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx180265%_)
        (letrec ((_%generate180268%_
                  (lambda (_%tgt180417%_ _%kws180419%_ _%clauses180420%_)
                    (letrec ((_%generate-clause180422%_
                              (lambda (_%hd181355%_ _%E181357%_)
                                (let* ((_%__stx181507181508%_ _%hd181355%_)
                                       (_%$%g181361181388%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx181507181508%_))))
                                  (let ((_%__kont181510181511%_
                                         (lambda (_%$%g181363181484%_
                                                  _%$%g181364181486%_)
                                           (_%generate1180424%_
                                            _%hd181355%_
                                            _%$%g181364181486%_
                                            '#t
                                            _%$%g181363181484%_
                                            _%E181357%_)))
                                        (_%__kont181512181513%_
                                         (lambda (_%$%g181371181436%_
                                                  _%$%g181372181438%_
                                                  _%$%g181373181439%_)
                                           (_%generate1180424%_
                                            _%hd181355%_
                                            _%$%g181373181439%_
                                            _%$%g181372181438%_
                                            _%$%g181371181436%_
                                            _%E181357%_)))
                                        (_%__kont181514181515%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx180265%_
                                            _%hd181355%_))))
                                    (if (gx#stx-pair? _%__stx181507181508%_)
                                        (let ((_%$%e181365181464%_
                                               (gx#syntax-e
                                                _%__stx181507181508%_)))
                                          (let ((_%$%tl181367181471%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e181365181464%_)))
                                                (_%$%hd181366181468%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e181365181464%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl181367181471%_)
                                                (let ((_%$%e181368181474%_
                                                       (gx#syntax-e
                                                        _%$%tl181367181471%_)))
                                                  (let ((_%$%tl181370181481%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e181368181474%_)))
                                                        (_%$%hd181369181478%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e181368181474%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl181370181481%_)
                                                        (_%__kont181510181511%_
                                                         _%$%hd181369181478%_
                                                         _%$%hd181366181468%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl181370181481%_)
                                                            (let ((_%$%e181380181426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl181370181481%_)))
                      (let ((_%$%tl181382181433%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e181380181426%_)))
                            (_%$%hd181381181430%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e181380181426%_))))
                        (if (gx#stx-null? _%$%tl181382181433%_)
                            (_%__kont181512181513%_
                             _%$%hd181381181430%_
                             _%$%hd181369181478%_
                             _%$%hd181366181468%_)
                            (_%__kont181514181515%_))))
                    (_%__kont181514181515%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont181514181515%_))))
                                        (_%__kont181514181515%_))))))
                             (_%generate1180424%_
                              (lambda (_%where180808%_
                                       _%hd180810%_
                                       _%fender180811%_
                                       _%body180812%_
                                       _%E180813%_)
                                (letrec ((_%recur180815%_
                                          (lambda (_%hd180818%_
                                                   _%tgt180820%_
                                                   _%K180821%_)
                                            (let* ((_%__stx181553181554%_
                                                    _%hd180818%_)
                                                   (_%$%g180824180836%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx181553181554%_))))
                                              (let ((_%__kont181556181557%_
                                                     (lambda (_%$%g180826181145%_
                                                              _%$%g180827181147%_)
                                                       (let* ((_%$%g181158181166%_
                                                               (lambda (_%$%g181159181162%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g181159181162%_)))
                      (_%$%g181157181347%_
                       (lambda (_%$%g181159181170%_)
                         (let* ((_%$%g181185181193%_
                                 (lambda (_%$%g181186181189%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g181186181189%_)))
                                (_%$%g181184181343%_
                                 (lambda (_%$%g181186181197%_)
                                   (let* ((_%$%g181213181221%_
                                           (lambda (_%$%g181214181217%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g181214181217%_)))
                                          (_%$%g181212181339%_
                                           (lambda (_%$%g181214181225%_)
                                             (let* ((_%$%g181241181249%_
                                                     (lambda (_%$%g181242181245%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g181242181245%_)))
                                                    (_%$%g181240181335%_
                                                     (lambda (_%$%g181242181253%_)
                                                       (let* ((_%$%g181269181277%_
                                                               (lambda (_%$%g181270181273%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g181270181273%_)))
                      (_%$%g181268181331%_
                       (lambda (_%$%g181270181281%_)
                         (let* ((_%$%g181297181305%_
                                 (lambda (_%$%g181298181301%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g181298181301%_)))
                                (_%$%g181296181327%_
                                 (lambda (_%$%g181298181309%_)
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'stx-pair?)
                                                     (cons _%$%g181159181170%_
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _%$%g181186181197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'syntax-e)
                                                 (cons _%$%g181159181170%_
                                                       '()))
                                           '()))
                               '())
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%$%g181214181225%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##car)
                           (cons _%$%g181186181197%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g181242181253%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##cdr)
                                 (cons _%$%g181186181197%_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%$%g181270181281%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%g181298181309%_
                                                           '())))))))
                           (_%$%g181296181327%_ _%E180813%_)))))
                 (_%$%g181268181331%_
                  (_%recur180815%_
                   _%$%g180827181147%_
                   _%$%g181214181225%_
                   (_%recur180815%_
                    _%$%g180826181145%_
                    _%$%g181242181253%_
                    _%K180821%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g181240181335%_
                                                (gx#genident 'tl))))))
                                     (_%$%g181212181339%_
                                      (gx#genident 'hd))))))
                           (_%$%g181184181343%_ (gx#genident 'e))))))
                 (_%$%g181157181347%_ _%tgt180820%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont181558181559%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd180818%_)
                                                           (if (gx#underscore?
                                                                _%hd180818%_)
                                                               _%K180821%_
                                                               (if (let ((__tmp181625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%$%g180850180852%_)
                                    (gx#bound-identifier=?
                                     _%$%g180850180852%_
                                     _%hd180818%_))))
                             (declare (not safe))
                             (__find __tmp181625 _%kws180419%_))
                           (let* ((_%$%g180858180873%_
                                   (lambda (_%$%g180859180869%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g180859180869%_)))
                                  (_%$%g180857180926%_
                                   (lambda (_%$%g180859180877%_)
                                     (if (gx#stx-pair? _%$%g180859180877%_)
                                         (let ((_%$%e180862180880%_
                                                (gx#syntax-e
                                                 _%$%g180859180877%_)))
                                           (let ((_%$%hd180863180884%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e180862180880%_)))
                                                 (_%$%tl180864180887%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e180862180880%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl180864180887%_)
                                                 (let ((_%$%e180865180890%_
                                                        (gx#syntax-e
                                                         _%$%tl180864180887%_)))
                                                   (let ((_%$%hd180866180894%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e180865180890%_)))
                                                         (_%$%tl180867180897%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e180865180890%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl180867180897%_)
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
                                               (cons _%$%hd180863180884%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-identifier=?)
                                                     (cons _%$%hd180863180884%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%$%hd180866180894%_ '()))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons _%K180821%_ (cons _%E180813%_ '()))))
                 (_%$%g180858180873%_ _%$%g180859180877%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g180858180873%_
                                                  _%$%g180859180877%_))))
                                         (_%$%g180858180873%_
                                          _%$%g180859180877%_)))))
                             (_%$%g180857180926%_
                              (list _%tgt180820%_ _%hd180818%_)))
                           (let* ((_%$%g180932180947%_
                                   (lambda (_%$%g180933180943%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g180933180943%_)))
                                  (_%$%g180931180992%_
                                   (lambda (_%$%g180933180951%_)
                                     (if (gx#stx-pair? _%$%g180933180951%_)
                                         (let ((_%$%e180936180954%_
                                                (gx#syntax-e
                                                 _%$%g180933180951%_)))
                                           (let ((_%$%hd180937180958%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e180936180954%_)))
                                                 (_%$%tl180938180961%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e180936180954%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl180938180961%_)
                                                 (let ((_%$%e180939180964%_
                                                        (gx#syntax-e
                                                         _%$%tl180938180961%_)))
                                                   (let ((_%$%hd180940180968%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e180939180964%_)))
                                                         (_%$%tl180941180971%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e180939180964%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl180941180971%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _%$%hd180940180968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _%$%hd180937180958%_ '()))
                                   '())
                             (cons _%K180821%_ '())))
                 (_%$%g180932180947%_ _%$%g180933180951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g180932180947%_
                                                  _%$%g180933180951%_))))
                                         (_%$%g180932180947%_
                                          _%$%g180933180951%_)))))
                             (_%$%g180931180992%_
                              (list _%tgt180820%_ _%hd180818%_)))))
                   (if (gx#stx-null? _%hd180818%_)
                       (let* ((_%$%g180998181006%_
                               (lambda (_%$%g180999181002%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g180999181002%_)))
                              (_%$%g180997181025%_
                               (lambda (_%$%g180999181010%_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'stx-null?)
                                                   (cons _%$%g180999181010%_
                                                         '()))
                                             (cons _%K180821%_
                                                   (cons _%E180813%_ '())))))))
                         (_%$%g180997181025%_ _%tgt180820%_))
                       (if (gx#stx-datum? _%hd180818%_)
                           (let* ((_%$%g181031181050%_
                                   (lambda (_%$%g181032181046%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g181032181046%_)))
                                  (_%$%g181030181109%_
                                   (lambda (_%$%g181032181054%_)
                                     (if (gx#stx-pair? _%$%g181032181054%_)
                                         (let ((_%$%e181036181057%_
                                                (gx#syntax-e
                                                 _%$%g181032181054%_)))
                                           (let ((_%$%hd181037181061%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e181036181057%_)))
                                                 (_%$%tl181038181064%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e181036181057%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl181038181064%_)
                                                 (let ((_%$%e181039181067%_
                                                        (gx#syntax-e
                                                         _%$%tl181038181064%_)))
                                                   (let ((_%$%hd181040181071%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e181039181067%_)))
                                                         (_%$%tl181041181074%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e181039181067%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%tl181041181074%_)
                                                         (let ((_%$%e181042181077%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl181041181074%_)))
                   (let ((_%$%hd181043181081%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e181042181077%_)))
                         (_%$%tl181044181084%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e181042181077%_))))
                     (if (gx#stx-null? _%$%tl181044181084%_)
                         (cons (gx#datum->syntax '#f 'if)
                               (cons (cons _%$%hd181043181081%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-e)
                                                       (cons _%$%hd181037181061%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%$%hd181040181071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons _%K180821%_
                                           (cons _%E180813%_ '()))))
                         (_%$%g181031181050%_ _%$%g181032181054%_))))
                 (_%$%g181031181050%_ _%$%g181032181054%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g181031181050%_
                                                  _%$%g181032181054%_))))
                                         (_%$%g181031181050%_
                                          _%$%g181032181054%_)))))
                             (_%$%g181030181109%_
                              (list _%tgt180820%_
                                    _%hd180818%_
                                    (let ((_%e181113%_
                                           (gx#stx-e _%hd180818%_)))
                                      (if (or (keyword? _%e181113%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e181113%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e181113%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx180265%_
                            _%where180808%_
                            _%hd180818%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx181553181554%_)
                                                    (let ((_%$%e180828181135%_
                                                           (gx#syntax-e
                                                            _%__stx181553181554%_)))
                                                      (let ((_%$%tl180830181142%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e180828181135%_)))
                    (_%$%hd180829181139%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e180828181135%_))))
                (_%__kont181556181557%_
                 _%$%tl180830181142%_
                 _%$%hd180829181139%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont181558181559%_)))))))
                                  (_%recur180815%_
                                   _%hd180810%_
                                   _%tgt180417%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender180811%_
                                               (cons _%body180812%_
                                                     (cons _%E180813%_
                                                           '()))))))))
                             (_%generate-clauses180425%_
                              (lambda (_%clauses180546%_)
                                (let _%lp180549%_ ((_%rest180552%_
                                                    _%clauses180546%_)
                                                   (_%E180554%_
                                                    (gx#genident 'E))
                                                   (_%r180555%_ '()))
                                  (let* ((_%__stx181589181590%_ _%rest180552%_)
                                         (_%$%g180558180570%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx181589181590%_))))
                                    (let ((_%__kont181592181593%_
                                           (lambda (_%$%g180560180635%_
                                                    _%$%g180561180637%_)
                                             (let* ((_%__stx181569181570%_
                                                     _%$%g180561180637%_)
                                                    (_%$%g180649180660%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx181569181570%_))))
                                               (let ((_%__kont181572181573%_
                                                      (lambda (_%$%g180651180789%_)
                                                        (if (gx#stx-null?
                                                             _%$%g180560180635%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g180651180789%_)
                             (not (gx#stx-null? _%$%g180651180789%_)))
                        (cons (cons _%E180554%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%$%g180651180789%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%$%g180561180637%_))
                                          '()))
                              _%r180555%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx180265%_
                         _%$%g180561180637%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx180265%_
                     _%$%g180561180637%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont181574181575%_
                                                      (lambda ()
                                                        (let* ((_%$%g180671180679%_
                                                                (lambda (_%$%g180672180675%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g180672180675%_)))
                       (_%$%g180670180768%_
                        (lambda (_%$%g180672180683%_)
                          (let* ((_%$%g180702180710%_
                                  (lambda (_%$%g180703180706%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g180703180706%_)))
                                 (_%$%g180701180764%_
                                  (lambda (_%$%g180703180714%_)
                                    (let* ((_%$%g180730180738%_
                                            (lambda (_%$%g180731180734%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g180731180734%_)))
                                           (_%$%g180729180760%_
                                            (lambda (_%$%g180731180742%_)
                                              (_%lp180549%_
                                               _%$%g180560180635%_
                                               _%$%g180672180683%_
                                               (cons (cons _%E180554%_
                                                           (cons _%$%g180731180742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r180555%_)))))
                                      (_%$%g180729180760%_
                                       (gx#stx-wrap-source
                                        (cons (gx#datum->syntax '#f 'lambda)
                                              (cons '()
                                                    (cons _%$%g180703180714%_
                                                          '())))
                                        (gx#stx-source
                                         _%$%g180561180637%_)))))))
                            (_%$%g180701180764%_
                             (_%generate-clause180422%_
                              _%$%g180561180637%_
                              (cons _%$%g180672180683%_ '())))))))
                  (_%$%g180670180768%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx181569181570%_)
                                                     (let ((_%$%e180652180779%_
                                                            (gx#syntax-e
                                                             _%__stx181569181570%_)))
                                                       (let ((_%$%tl180654180786%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e180652180779%_)))
                     (_%$%hd180653180783%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e180652180779%_))))
                 (if (gx#identifier? _%$%hd180653180783%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g181626_|
                          _%$%hd180653180783%_)
                         (_%__kont181572181573%_ _%$%tl180654180786%_)
                         (_%__kont181574181575%_))
                     (_%__kont181574181575%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont181574181575%_))))))
                                          (_%__kont181594181595%_
                                           (lambda ()
                                             (let* ((_%$%g180581180589%_
                                                     (lambda (_%$%g180582180585%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g180582180585%_)))
                                                    (_%$%g180580180614%_
                                                     (lambda (_%$%g180582180593%_)
                                                       (cons (cons _%E180554%_
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
                              (cons _%$%g180582180593%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (gx#stx-source _%stx180265%_))
                                 '()))
                     _%r180555%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g180580180614%_
                                                _%tgt180417%_)))))
                                      (if (gx#stx-pair? _%__stx181589181590%_)
                                          (let ((_%$%e180562180625%_
                                                 (gx#syntax-e
                                                  _%__stx181589181590%_)))
                                            (let ((_%$%tl180564180632%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e180562180625%_)))
                                                  (_%$%hd180563180629%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e180562180625%_))))
                                              (_%__kont181592181593%_
                                               _%$%tl180564180632%_
                                               _%$%hd180563180629%_)))
                                          (_%__kont181594181595%_))))))))
                      (let* ((_%bind180427%_
                              (_%generate-clauses180425%_ _%clauses180420%_))
                             (_%$%g180430180447%_
                              (lambda (_%$%g180431180443%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g180431180443%_)))
                             (_%$%g180429180542%_
                              (lambda (_%$%g180431180451%_)
                                (if (gx#stx-pair/null? _%$%g180431180451%_)
                                    (let ((_g181627_
                                           (gx#syntax-split-splice
                                            _%$%g180431180451%_
                                            '0)))
                                      (begin
                                        (let ((_g181628_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g181627_)
                                                     (##values-length
                                                      _g181627_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g181628_ 2)))
                                              (error "Context expects 2 values"
                                                     _g181628_)))
                                        (let ((_%$%target180433180454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g181627_ 0)))
                                              (_%$%tl180435180457%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g181627_ 1))))
                                          (if (gx#stx-null?
                                               _%$%tl180435180457%_)
                                              (letrec ((_%$%loop180436180460%_
                                                        (lambda (_%$%hd180434180464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%bind-try180440180467%_)
                  (if (gx#stx-pair? _%$%hd180434180464%_)
                      (let ((_%$%e180437180469%_
                             (gx#syntax-e _%$%hd180434180464%_)))
                        (let ((_%$%lp-hd180438180473%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e180437180469%_)))
                              (_%$%lp-tl180439180476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e180437180469%_))))
                          (_%$%loop180436180460%_
                           _%$%lp-tl180439180476%_
                           (cons _%$%lp-hd180438180473%_
                                 _%$%bind-try180440180467%_))))
                      (let* ((_%$%bind-try180441180479%_
                              (reverse _%$%bind-try180440180467%_))
                             (_%$%g180500180508%_
                              (lambda (_%$%g180501180504%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g180501180504%_)))
                             (_%$%g180499180538%_
                              (lambda (_%$%g180501180512%_)
                                (cons (gx#datum->syntax '#f 'let*)
                                      (cons (let ((__tmp181629
                                                   (lambda (_%$%g180529180532%_
                                                            _%$%g180530180535%_)
                                                     (cons _%$%g180529180532%_
                                                           _%$%g180530180535%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp181629
                                               '()
                                               _%$%bind-try180441180479%_))
                                            (cons (cons _%$%g180501180512%_
                                                        '())
                                                  '()))))))
                        (_%$%g180499180538%_ (car (last _%bind180427%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop180436180460%_
                                                 _%$%target180433180454%_
                                                 '()))
                                              (_%$%g180430180447%_
                                               _%$%g180431180451%_)))))
                                    (_%$%g180430180447%_
                                     _%$%g180431180451%_)))))
                        (_%$%g180429180542%_ _%bind180427%_))))))
          (let* ((_%$%g180271180290%_
                  (lambda (_%$%g180272180286%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g180272180286%_)))
                 (_%$%g180270180413%_
                  (lambda (_%$%g180272180294%_)
                    (if (gx#stx-pair? _%$%g180272180294%_)
                        (let ((_%$%e180276180297%_
                               (gx#syntax-e _%$%g180272180294%_)))
                          (let ((_%$%hd180277180301%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e180276180297%_)))
                                (_%$%tl180278180304%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e180276180297%_))))
                            (if (gx#stx-pair? _%$%tl180278180304%_)
                                (let ((_%$%e180279180307%_
                                       (gx#syntax-e _%$%tl180278180304%_)))
                                  (let ((_%$%hd180280180311%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e180279180307%_)))
                                        (_%$%tl180281180314%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e180279180307%_))))
                                    (if (gx#stx-pair? _%$%tl180281180314%_)
                                        (let ((_%$%e180282180317%_
                                               (gx#syntax-e
                                                _%$%tl180281180314%_)))
                                          (let ((_%$%hd180283180321%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e180282180317%_)))
                                                (_%$%tl180284180324%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e180282180317%_))))
                                            (if (and (gx#identifier-list?
                                                      _%$%hd180283180321%_)
                                                     (gx#stx-list?
                                                      _%$%tl180284180324%_))
                                                (let* ((_%$%g180348180356%_
                                                        (lambda (_%$%g180349180352%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g180349180352%_)))
                                                       (_%$%g180347180409%_
                                                        (lambda (_%$%g180349180360%_)
                                                          (let* ((_%$%g180375180383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%g180376180379%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%$%g180376180379%_)))
                         (_%$%g180374180405%_
                          (lambda (_%$%g180376180387%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _%$%g180349180360%_
                                                    (cons _%$%hd180280180311%_
                                                          '()))
                                              '())
                                        (cons _%$%g180376180387%_ '()))))))
                    (_%$%g180374180405%_
                     (_%generate180268%_
                      _%$%g180349180360%_
                      (gx#syntax->list _%$%hd180283180321%_)
                      _%$%tl180284180324%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g180347180409%_
                                                   (gx#genident 'e)))
                                                (_%$%g180271180290%_
                                                 _%$%g180272180294%_))))
                                        (_%$%g180271180290%_
                                         _%$%g180272180294%_))))
                                (_%$%g180271180290%_ _%$%g180272180294%_))))
                        (_%$%g180271180290%_ _%$%g180272180294%_)))))
            (_%$%g180270180413%_ _%stx180265%_)))))))
