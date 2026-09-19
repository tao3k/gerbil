(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g128325_|
    (gx#core-deserialize-mark
     '(0
       ($%arg127379 . _%$%arg127379127437%_)
       (arg . _%arg127467%_)
       ($%arg127380 . _%$%arg127380127451%_)
       (id . _%id127404%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g128326_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g128325_|)))
  (define |[1]#_g128328_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g128329_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g128328_|)))
  (define |[1]#_g128330_|
    (gx#core-deserialize-mark
     '(0
       ($%arg127500 . _%$%arg127500127557%_)
       (arg . _%arg127587%_)
       ($%arg127501 . _%$%arg127501127571%_)
       (id . _%id127524%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g128331_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g128330_|)))
  (define |[1]#_g128333_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g128334_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g128333_|)))
  (define |[1]#_g128335_|
    (gx#core-deserialize-mark
     '(0
       ($%arg127620 . _%$%arg127620127677%_)
       (arg . _%arg127707%_)
       ($%arg127621 . _%$%arg127621127691%_)
       (id . _%id127644%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g128336_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g128335_|)))
  (define |[1]#_g128338_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g128339_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g128338_|)))
  (define |[1]#_g128340_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg127827%_)
       ($%arg127740 . _%$%arg127740127797%_)
       ($%arg127741 . _%$%arg127741127811%_)
       (id . _%id127764%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g128341_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g128340_|)))
  (define |[1]#_g128343_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g128344_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g128343_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx127361%_)
        (let* ((_%__stx128207128208%_ _%$stx127361%_)
               (_%$%g127366127387%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx128207128208%_))))
          (let ((_%__kont128210128211%_
                 (lambda (_%$%g127368127453%_)
                   (cons (gx#datum->syntax
                          |[1]#_g128326_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp128327
                                                  (lambda (_%$%g127468127471%_
                                                           _%$%g127469127474%_)
                                                    (cons _%$%g127468127471%_
                                                          _%$%g127469127474%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp128327
                                              '()
                                              _%$%g127368127453%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g128329_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'thunk)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__make-promise)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'thunk)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont128214128215%_
                 (lambda (_%$%g127381127394%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%$%g127365127406%_
                    (lambda ()
                      (let ((_%$%g127381127394%_ _%__stx128207128208%_))
                        (if (gx#identifier? _%$%g127381127394%_)
                            (_%__kont128214128215%_ _%$%g127381127394%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g127366127387%_))))))
                   (_%__match128230128231%_
                    (lambda (_%$%e127369127413%_
                             _%$%hd127370127417%_
                             _%$%tl127371127420%_
                             _%__splice128212128213%_
                             _%$%target127372127423%_
                             _%$%tl127374127426%_)
                      (letrec ((_%$%loop127375127429%_
                                (lambda (_%$%hd127373127433%_
                                         _%$%arg127379127436%_)
                                  (if (gx#stx-pair? _%$%hd127373127433%_)
                                      (let ((_%$%e127376127439%_
                                             (gx#syntax-e
                                              _%$%hd127373127433%_)))
                                        (let ((_%$%lp-tl127378127446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e127376127439%_)))
                                              (_%$%lp-hd127377127443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e127376127439%_))))
                                          (_%$%loop127375127429%_
                                           _%$%lp-tl127378127446%_
                                           (cons _%$%lp-hd127377127443%_
                                                 _%$%arg127379127436%_))))
                                      (let ((_%$%arg127380127449%_
                                             (reverse _%$%arg127379127436%_)))
                                        (_%__kont128210128211%_
                                         _%$%arg127380127449%_))))))
                        (_%$%loop127375127429%_
                         _%$%target127372127423%_
                         '())))))
              (if (gx#stx-pair? _%__stx128207128208%_)
                  (let ((_%$%e127369127413%_
                         (gx#syntax-e _%__stx128207128208%_)))
                    (let ((_%$%tl127371127420%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e127369127413%_)))
                          (_%$%hd127370127417%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e127369127413%_))))
                      (if (gx#stx-pair/null? _%$%tl127371127420%_)
                          (let ((_%__splice128212128213%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl127371127420%_
                                  '0)))
                            (let ((_%$%tl127374127426%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128212128213%_
                                      '1)))
                                  (_%$%target127372127423%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128212128213%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl127374127426%_)
                                  (_%__match128230128231%_
                                   _%$%e127369127413%_
                                   _%$%hd127370127417%_
                                   _%$%tl127371127420%_
                                   _%__splice128212128213%_
                                   _%$%target127372127423%_
                                   _%$%tl127374127426%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g127365127406%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g127365127406%_)))))
                  (let () (declare (not safe)) (_%$%g127365127406%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx127482%_)
        (let* ((_%__stx128233128234%_ _%$stx127482%_)
               (_%$%g127487127508%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx128233128234%_))))
          (let ((_%__kont128236128237%_
                 (lambda (_%$%g127489127573%_)
                   (cons (gx#datum->syntax
                          |[1]#_g128331_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp128332
                                                  (lambda (_%$%g127588127591%_
                                                           _%$%g127589127594%_)
                                                    (cons _%$%g127588127591%_
                                                          _%$%g127589127594%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp128332
                                              '()
                                              _%$%g127489127573%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g128334_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'thunk)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__make-atomic-promise)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'thunk)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont128240128241%_
                 (lambda (_%$%g127502127515%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%$%g127486127526%_
                    (lambda ()
                      (let ((_%$%g127502127515%_ _%__stx128233128234%_))
                        (if (gx#identifier? _%$%g127502127515%_)
                            (_%__kont128240128241%_ _%$%g127502127515%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g127487127508%_))))))
                   (_%__match128256128257%_
                    (lambda (_%$%e127490127533%_
                             _%$%hd127491127537%_
                             _%$%tl127492127540%_
                             _%__splice128238128239%_
                             _%$%target127493127543%_
                             _%$%tl127495127546%_)
                      (letrec ((_%$%loop127496127549%_
                                (lambda (_%$%hd127494127553%_
                                         _%$%arg127500127556%_)
                                  (if (gx#stx-pair? _%$%hd127494127553%_)
                                      (let ((_%$%e127497127559%_
                                             (gx#syntax-e
                                              _%$%hd127494127553%_)))
                                        (let ((_%$%lp-tl127499127566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e127497127559%_)))
                                              (_%$%lp-hd127498127563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e127497127559%_))))
                                          (_%$%loop127496127549%_
                                           _%$%lp-tl127499127566%_
                                           (cons _%$%lp-hd127498127563%_
                                                 _%$%arg127500127556%_))))
                                      (let ((_%$%arg127501127569%_
                                             (reverse _%$%arg127500127556%_)))
                                        (_%__kont128236128237%_
                                         _%$%arg127501127569%_))))))
                        (_%$%loop127496127549%_
                         _%$%target127493127543%_
                         '())))))
              (if (gx#stx-pair? _%__stx128233128234%_)
                  (let ((_%$%e127490127533%_
                         (gx#syntax-e _%__stx128233128234%_)))
                    (let ((_%$%tl127492127540%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e127490127533%_)))
                          (_%$%hd127491127537%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e127490127533%_))))
                      (if (gx#stx-pair/null? _%$%tl127492127540%_)
                          (let ((_%__splice128238128239%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl127492127540%_
                                  '0)))
                            (let ((_%$%tl127495127546%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128238128239%_
                                      '1)))
                                  (_%$%target127493127543%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128238128239%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl127495127546%_)
                                  (_%__match128256128257%_
                                   _%$%e127490127533%_
                                   _%$%hd127491127537%_
                                   _%$%tl127492127540%_
                                   _%__splice128238128239%_
                                   _%$%target127493127543%_
                                   _%$%tl127495127546%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g127486127526%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g127486127526%_)))))
                  (let () (declare (not safe)) (_%$%g127486127526%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx127602%_)
        (let* ((_%__stx128259128260%_ _%$stx127602%_)
               (_%$%g127607127628%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx128259128260%_))))
          (let ((_%__kont128262128263%_
                 (lambda (_%$%g127609127693%_)
                   (cons (gx#datum->syntax
                          |[1]#_g128336_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp128337
                                                  (lambda (_%$%g127708127711%_
                                                           _%$%g127709127714%_)
                                                    (cons _%$%g127708127711%_
                                                          _%$%g127709127714%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp128337
                                              '()
                                              _%$%g127609127693%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g128339_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'K)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               (cons (cons (gx#datum->syntax '#f 'fini)
                           (cons (gx#datum->syntax '#f ':)
                                 (cons (gx#datum->syntax '#f ':procedure)
                                       '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__with-unwind-protect)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'K)
                           (cons (gx#datum->syntax '#f 'fini) '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont128266128267%_
                 (lambda (_%$%g127622127635%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%$%g127606127646%_
                    (lambda ()
                      (let ((_%$%g127622127635%_ _%__stx128259128260%_))
                        (if (gx#identifier? _%$%g127622127635%_)
                            (_%__kont128266128267%_ _%$%g127622127635%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g127607127628%_))))))
                   (_%__match128282128283%_
                    (lambda (_%$%e127610127653%_
                             _%$%hd127611127657%_
                             _%$%tl127612127660%_
                             _%__splice128264128265%_
                             _%$%target127613127663%_
                             _%$%tl127615127666%_)
                      (letrec ((_%$%loop127616127669%_
                                (lambda (_%$%hd127614127673%_
                                         _%$%arg127620127676%_)
                                  (if (gx#stx-pair? _%$%hd127614127673%_)
                                      (let ((_%$%e127617127679%_
                                             (gx#syntax-e
                                              _%$%hd127614127673%_)))
                                        (let ((_%$%lp-tl127619127686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e127617127679%_)))
                                              (_%$%lp-hd127618127683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e127617127679%_))))
                                          (_%$%loop127616127669%_
                                           _%$%lp-tl127619127686%_
                                           (cons _%$%lp-hd127618127683%_
                                                 _%$%arg127620127676%_))))
                                      (let ((_%$%arg127621127689%_
                                             (reverse _%$%arg127620127676%_)))
                                        (_%__kont128262128263%_
                                         _%$%arg127621127689%_))))))
                        (_%$%loop127616127669%_
                         _%$%target127613127663%_
                         '())))))
              (if (gx#stx-pair? _%__stx128259128260%_)
                  (let ((_%$%e127610127653%_
                         (gx#syntax-e _%__stx128259128260%_)))
                    (let ((_%$%tl127612127660%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e127610127653%_)))
                          (_%$%hd127611127657%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e127610127653%_))))
                      (if (gx#stx-pair/null? _%$%tl127612127660%_)
                          (let ((_%__splice128264128265%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl127612127660%_
                                  '0)))
                            (let ((_%$%tl127615127666%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128264128265%_
                                      '1)))
                                  (_%$%target127613127663%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128264128265%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl127615127666%_)
                                  (_%__match128282128283%_
                                   _%$%e127610127653%_
                                   _%$%hd127611127657%_
                                   _%$%tl127612127660%_
                                   _%__splice128264128265%_
                                   _%$%target127613127663%_
                                   _%$%tl127615127666%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g127606127646%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g127606127646%_)))))
                  (let () (declare (not safe)) (_%$%g127606127646%_))))))))
    (define |[:0:]#@with-unwind-protect!|
      (lambda (_%$stx127722%_)
        (let* ((_%__stx128285128286%_ _%$stx127722%_)
               (_%$%g127727127748%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx128285128286%_))))
          (let ((_%__kont128288128289%_
                 (lambda (_%$%g127729127813%_)
                   (cons (gx#datum->syntax
                          |[1]#_g128341_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp128342
                                                  (lambda (_%$%g127828127831%_
                                                           _%$%g127829127834%_)
                                                    (cons _%$%g127828127831%_
                                                          _%$%g127829127834%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp128342
                                              '()
                                              _%$%g127729127813%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g128344_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'K)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               (cons (cons (gx#datum->syntax '#f 'fini)
                           (cons (gx#datum->syntax '#f ':)
                                 (cons (gx#datum->syntax '#f ':procedure)
                                       '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__with-unwind-protect!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'K)
                           (cons (gx#datum->syntax '#f 'fini) '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont128292128293%_
                 (lambda (_%$%g127742127755%_)
                   (gx#datum->syntax '#f 'with-unwind-protect!))))
            (let* ((_%$%g127726127766%_
                    (lambda ()
                      (let ((_%$%g127742127755%_ _%__stx128285128286%_))
                        (if (gx#identifier? _%$%g127742127755%_)
                            (_%__kont128292128293%_ _%$%g127742127755%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g127727127748%_))))))
                   (_%__match128308128309%_
                    (lambda (_%$%e127730127773%_
                             _%$%hd127731127777%_
                             _%$%tl127732127780%_
                             _%__splice128290128291%_
                             _%$%target127733127783%_
                             _%$%tl127735127786%_)
                      (letrec ((_%$%loop127736127789%_
                                (lambda (_%$%hd127734127793%_
                                         _%$%arg127740127796%_)
                                  (if (gx#stx-pair? _%$%hd127734127793%_)
                                      (let ((_%$%e127737127799%_
                                             (gx#syntax-e
                                              _%$%hd127734127793%_)))
                                        (let ((_%$%lp-tl127739127806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e127737127799%_)))
                                              (_%$%lp-hd127738127803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e127737127799%_))))
                                          (_%$%loop127736127789%_
                                           _%$%lp-tl127739127806%_
                                           (cons _%$%lp-hd127738127803%_
                                                 _%$%arg127740127796%_))))
                                      (let ((_%$%arg127741127809%_
                                             (reverse _%$%arg127740127796%_)))
                                        (_%__kont128288128289%_
                                         _%$%arg127741127809%_))))))
                        (_%$%loop127736127789%_
                         _%$%target127733127783%_
                         '())))))
              (if (gx#stx-pair? _%__stx128285128286%_)
                  (let ((_%$%e127730127773%_
                         (gx#syntax-e _%__stx128285128286%_)))
                    (let ((_%$%tl127732127780%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e127730127773%_)))
                          (_%$%hd127731127777%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e127730127773%_))))
                      (if (gx#stx-pair/null? _%$%tl127732127780%_)
                          (let ((_%__splice128290128291%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl127732127780%_
                                  '0)))
                            (let ((_%$%tl127735127786%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128290128291%_
                                      '1)))
                                  (_%$%target127733127783%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128290128291%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl127735127786%_)
                                  (_%__match128308128309%_
                                   _%$%e127730127773%_
                                   _%$%hd127731127777%_
                                   _%$%tl127732127780%_
                                   _%__splice128290128291%_
                                   _%$%target127733127783%_
                                   _%$%tl127735127786%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g127726127766%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g127726127766%_)))))
                  (let () (declare (not safe)) (_%$%g127726127766%_))))))))))
