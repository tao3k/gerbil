(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g126141_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg125486%_)
       ($%arg125399 . _%$%arg125399125470%_)
       (id . _%id125423%_)
       ($%arg125398 . _%$%arg125398125456%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g126142_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g126141_|)))
  (define |[1]#_g126144_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g126145_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g126144_|)))
  (define |[1]#_g126146_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg125606%_)
       (id . _%id125543%_)
       ($%arg125520 . _%$%arg125520125590%_)
       ($%arg125519 . _%$%arg125519125576%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g126147_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g126146_|)))
  (define |[1]#_g126149_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g126150_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g126149_|)))
  (define |[1]#_g126151_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg125726%_)
       (id . _%id125663%_)
       ($%arg125639 . _%$%arg125639125696%_)
       ($%arg125640 . _%$%arg125640125710%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g126152_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g126151_|)))
  (define |[1]#_g126154_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g126155_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g126154_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx125380%_)
        (let* ((_%__stx126050126051%_ _%$stx125380%_)
               (_%$%g125385125406%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx126050126051%_))))
          (let ((_%__kont126053126054%_
                 (lambda (_%$%g125387125472%_)
                   (cons (gx#datum->syntax
                          |[1]#_g126142_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp126143
                                                  (lambda (_%$%g125487125490%_
                                                           _%$%g125488125493%_)
                                                    (cons _%$%g125487125490%_
                                                          _%$%g125488125493%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp126143
                                              '()
                                              _%$%g125387125472%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g126145_|
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
                (_%__kont126057126058%_
                 (lambda (_%$%g125400125413%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%$%g125384125425%_
                    (lambda ()
                      (let ((_%$%g125400125413%_ _%__stx126050126051%_))
                        (if (gx#identifier? _%$%g125400125413%_)
                            (_%__kont126057126058%_ _%$%g125400125413%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g125385125406%_))))))
                   (_%__match126073126074%_
                    (lambda (_%$%e125388125432%_
                             _%$%hd125389125436%_
                             _%$%tl125390125439%_
                             _%__splice126055126056%_
                             _%$%target125391125442%_
                             _%$%tl125393125445%_)
                      (letrec ((_%$%loop125394125448%_
                                (lambda (_%$%hd125392125452%_
                                         _%$%arg125398125455%_)
                                  (if (gx#stx-pair? _%$%hd125392125452%_)
                                      (let ((_%$%e125395125458%_
                                             (gx#syntax-e
                                              _%$%hd125392125452%_)))
                                        (let ((_%$%lp-tl125397125465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e125395125458%_)))
                                              (_%$%lp-hd125396125462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e125395125458%_))))
                                          (_%$%loop125394125448%_
                                           _%$%lp-tl125397125465%_
                                           (cons _%$%lp-hd125396125462%_
                                                 _%$%arg125398125455%_))))
                                      (let ((_%$%arg125399125468%_
                                             (reverse _%$%arg125398125455%_)))
                                        (_%__kont126053126054%_
                                         _%$%arg125399125468%_))))))
                        (_%$%loop125394125448%_
                         _%$%target125391125442%_
                         '())))))
              (if (gx#stx-pair? _%__stx126050126051%_)
                  (let ((_%$%e125388125432%_
                         (gx#syntax-e _%__stx126050126051%_)))
                    (let ((_%$%tl125390125439%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e125388125432%_)))
                          (_%$%hd125389125436%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e125388125432%_))))
                      (if (gx#stx-pair/null? _%$%tl125390125439%_)
                          (let ((_%__splice126055126056%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl125390125439%_
                                  '0)))
                            (let ((_%$%tl125393125445%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice126055126056%_
                                      '1)))
                                  (_%$%target125391125442%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice126055126056%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl125393125445%_)
                                  (_%__match126073126074%_
                                   _%$%e125388125432%_
                                   _%$%hd125389125436%_
                                   _%$%tl125390125439%_
                                   _%__splice126055126056%_
                                   _%$%target125391125442%_
                                   _%$%tl125393125445%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g125384125425%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g125384125425%_)))))
                  (let () (declare (not safe)) (_%$%g125384125425%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx125501%_)
        (let* ((_%__stx126076126077%_ _%$stx125501%_)
               (_%$%g125506125527%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx126076126077%_))))
          (let ((_%__kont126079126080%_
                 (lambda (_%$%g125508125592%_)
                   (cons (gx#datum->syntax
                          |[1]#_g126147_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp126148
                                                  (lambda (_%$%g125607125610%_
                                                           _%$%g125608125613%_)
                                                    (cons _%$%g125607125610%_
                                                          _%$%g125608125613%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp126148
                                              '()
                                              _%$%g125508125592%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g126150_|
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
                (_%__kont126083126084%_
                 (lambda (_%$%g125521125534%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%$%g125505125545%_
                    (lambda ()
                      (let ((_%$%g125521125534%_ _%__stx126076126077%_))
                        (if (gx#identifier? _%$%g125521125534%_)
                            (_%__kont126083126084%_ _%$%g125521125534%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g125506125527%_))))))
                   (_%__match126099126100%_
                    (lambda (_%$%e125509125552%_
                             _%$%hd125510125556%_
                             _%$%tl125511125559%_
                             _%__splice126081126082%_
                             _%$%target125512125562%_
                             _%$%tl125514125565%_)
                      (letrec ((_%$%loop125515125568%_
                                (lambda (_%$%hd125513125572%_
                                         _%$%arg125519125575%_)
                                  (if (gx#stx-pair? _%$%hd125513125572%_)
                                      (let ((_%$%e125516125578%_
                                             (gx#syntax-e
                                              _%$%hd125513125572%_)))
                                        (let ((_%$%lp-tl125518125585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e125516125578%_)))
                                              (_%$%lp-hd125517125582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e125516125578%_))))
                                          (_%$%loop125515125568%_
                                           _%$%lp-tl125518125585%_
                                           (cons _%$%lp-hd125517125582%_
                                                 _%$%arg125519125575%_))))
                                      (let ((_%$%arg125520125588%_
                                             (reverse _%$%arg125519125575%_)))
                                        (_%__kont126079126080%_
                                         _%$%arg125520125588%_))))))
                        (_%$%loop125515125568%_
                         _%$%target125512125562%_
                         '())))))
              (if (gx#stx-pair? _%__stx126076126077%_)
                  (let ((_%$%e125509125552%_
                         (gx#syntax-e _%__stx126076126077%_)))
                    (let ((_%$%tl125511125559%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e125509125552%_)))
                          (_%$%hd125510125556%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e125509125552%_))))
                      (if (gx#stx-pair/null? _%$%tl125511125559%_)
                          (let ((_%__splice126081126082%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl125511125559%_
                                  '0)))
                            (let ((_%$%tl125514125565%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice126081126082%_
                                      '1)))
                                  (_%$%target125512125562%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice126081126082%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl125514125565%_)
                                  (_%__match126099126100%_
                                   _%$%e125509125552%_
                                   _%$%hd125510125556%_
                                   _%$%tl125511125559%_
                                   _%__splice126081126082%_
                                   _%$%target125512125562%_
                                   _%$%tl125514125565%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g125505125545%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g125505125545%_)))))
                  (let () (declare (not safe)) (_%$%g125505125545%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx125621%_)
        (let* ((_%__stx126102126103%_ _%$stx125621%_)
               (_%$%g125626125647%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx126102126103%_))))
          (let ((_%__kont126105126106%_
                 (lambda (_%$%g125628125712%_)
                   (cons (gx#datum->syntax
                          |[1]#_g126152_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp126153
                                                  (lambda (_%$%g125727125730%_
                                                           _%$%g125728125733%_)
                                                    (cons _%$%g125727125730%_
                                                          _%$%g125728125733%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp126153
                                              '()
                                              _%$%g125628125712%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g126155_|
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
                (_%__kont126109126110%_
                 (lambda (_%$%g125641125654%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%$%g125625125665%_
                    (lambda ()
                      (let ((_%$%g125641125654%_ _%__stx126102126103%_))
                        (if (gx#identifier? _%$%g125641125654%_)
                            (_%__kont126109126110%_ _%$%g125641125654%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g125626125647%_))))))
                   (_%__match126125126126%_
                    (lambda (_%$%e125629125672%_
                             _%$%hd125630125676%_
                             _%$%tl125631125679%_
                             _%__splice126107126108%_
                             _%$%target125632125682%_
                             _%$%tl125634125685%_)
                      (letrec ((_%$%loop125635125688%_
                                (lambda (_%$%hd125633125692%_
                                         _%$%arg125639125695%_)
                                  (if (gx#stx-pair? _%$%hd125633125692%_)
                                      (let ((_%$%e125636125698%_
                                             (gx#syntax-e
                                              _%$%hd125633125692%_)))
                                        (let ((_%$%lp-tl125638125705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e125636125698%_)))
                                              (_%$%lp-hd125637125702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e125636125698%_))))
                                          (_%$%loop125635125688%_
                                           _%$%lp-tl125638125705%_
                                           (cons _%$%lp-hd125637125702%_
                                                 _%$%arg125639125695%_))))
                                      (let ((_%$%arg125640125708%_
                                             (reverse _%$%arg125639125695%_)))
                                        (_%__kont126105126106%_
                                         _%$%arg125640125708%_))))))
                        (_%$%loop125635125688%_
                         _%$%target125632125682%_
                         '())))))
              (if (gx#stx-pair? _%__stx126102126103%_)
                  (let ((_%$%e125629125672%_
                         (gx#syntax-e _%__stx126102126103%_)))
                    (let ((_%$%tl125631125679%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e125629125672%_)))
                          (_%$%hd125630125676%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e125629125672%_))))
                      (if (gx#stx-pair/null? _%$%tl125631125679%_)
                          (let ((_%__splice126107126108%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl125631125679%_
                                  '0)))
                            (let ((_%$%tl125634125685%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice126107126108%_
                                      '1)))
                                  (_%$%target125632125682%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice126107126108%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl125634125685%_)
                                  (_%__match126125126126%_
                                   _%$%e125629125672%_
                                   _%$%hd125630125676%_
                                   _%$%tl125631125679%_
                                   _%__splice126107126108%_
                                   _%$%target125632125682%_
                                   _%$%tl125634125685%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g125625125665%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g125625125665%_)))))
                  (let () (declare (not safe)) (_%$%g125625125665%_))))))))))
