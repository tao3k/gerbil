(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g105405_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105406_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105407_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105410_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105411_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105414_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105415_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105416_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105417_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105421_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105422_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105423_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105424_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105428_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx55838%_)
        (let* ((_%__stx9868298683%_ _%stx55838%_)
               (_%$%g5584756056%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9868298683%_))))
          (let ((_%__kont9868598686%_
                 (lambda (_%$%g5584956948%_
                          _%$%g5585056950%_
                          _%$%g5585156951%_
                          _%$%g5585256952%_
                          _%$%g5585356953%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%$%g5585356953%_
                                     (cons _%$%g5585256952%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%$%g5585356953%_
                                                       (cons _%$%g5585156951%_
                                                             (cons _%$%g5585056950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%$%g5699656999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5699757002%_)
                  (cons _%$%g5699656999%_ _%$%g5699757002%_))
                '()
                _%$%g5584956948%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9868998690%_
                 (lambda (_%$%g5588156794%_
                          _%$%g5588256796%_
                          _%$%g5588356797%_
                          _%$%g5588456798%_
                          _%$%g5588556799%_
                          _%$%g5588656800%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%$%g5588656800%_
                                     (cons _%$%g5588556799%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%$%g5588656800%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%$%g5588456798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%$%g5588656800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$%g5588356797%_
                                       (cons _%$%g5588256796%_ '())))
                           (foldr (lambda (_%$%g5684456847%_ _%$%g5684556850%_)
                                    (cons _%$%g5684456847%_ _%$%g5684556850%_))
                                  '()
                                  _%$%g5588156794%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9869398694%_
                 (lambda (_%$%g5592056613%_
                          _%$%g5592156615%_
                          _%$%g5592256616%_
                          _%$%g5592356617%_)
                   (let ((_%meta56654%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx55838%_
                             _%$%g5592156615%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta56654%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%$%g5592356617%_
                                           (cons _%$%g5592256616%_
                                                 (cons _%$%g5592156615%_ '())))
                                     (foldr (lambda (_%$%g5665856661%_
                                                     _%$%g5665956664%_)
                                              (cons _%$%g5665856661%_
                                                    _%$%g5665956664%_))
                                            '()
                                            _%$%g5592056613%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta56654%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%$%g5592356617%_
                                               (cons _%$%g5592256616%_
                                                     (cons _%$%g5592156615%_
                                                           '())))
                                         (foldr (lambda (_%$%g5666856671%_
                                                         _%$%g5666956674%_)
                                                  (cons _%$%g5666856671%_
                                                        _%$%g5666956674%_))
                                                '()
                                                _%$%g5592056613%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx55838%_
                              _%$%g5592156615%_
                              _%meta56654%_))))))
                (_%__kont9869798698%_
                 (lambda (_%$%g5594856493%_
                          _%$%g5594956495%_
                          _%$%g5595056496%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%$%g5595056496%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%$%g5594956495%_ '())))
                               (foldr (lambda (_%$%g5651956522%_
                                               _%$%g5652056525%_)
                                        (cons _%$%g5651956522%_
                                              _%$%g5652056525%_))
                                      '()
                                      _%$%g5594856493%_)))))
                (_%__kont9870198702%_
                 (lambda (_%$%g5597556353%_
                          _%$%g5597656355%_
                          _%$%g5597756356%_
                          _%$%g5597856357%_
                          _%$%g5597956358%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%$%g5597956358%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%$%g5597856357%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%$%g5597956358%_
                                                       (cons _%$%g5597756356%_
                                                             (cons _%$%g5597656355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%$%g5639956402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5640056405%_)
                  (cons _%$%g5639956402%_ _%$%g5640056405%_))
                '()
                _%$%g5597556353%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9870598706%_
                 (lambda (_%$%g5601056213%_
                          _%$%g5601156215%_
                          _%$%g5601256216%_
                          _%$%g5601356217%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%$%g5601356217%_ _%$%g5601256216%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%$%g5601156215%_
                                                 (foldr (lambda (_%$%g5623956242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5624056245%_)
                  (cons _%$%g5623956242%_ _%$%g5624056245%_))
                '()
                _%$%g5601056213%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9870998710%_
                 (lambda (_%$%g5603556111%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%$%g5612956132%_
                                               _%$%g5613056135%_)
                                        (cons _%$%g5612956132%_
                                              _%$%g5613056135%_))
                                      '()
                                      _%$%g5603556111%_))))))
            (let* ((_%__match9901599016%_
                    (lambda (_%$%e5603656063%_
                             _%$%hd5603756067%_
                             _%$%tl5603856070%_
                             _%$%e5603956073%_
                             _%$%hd5604056077%_
                             _%$%tl5604156080%_
                             _%__splice9871198712%_
                             _%$%target5604256083%_
                             _%$%tl5604456086%_)
                      (letrec ((_%$%loop5604556089%_
                                (lambda (_%$%hd5604356093%_
                                         _%$%body5604956096%_)
                                  (if (gx#stx-pair? _%$%hd5604356093%_)
                                      (let ((_%$%e5604656098%_
                                             (gx#syntax-e _%$%hd5604356093%_)))
                                        (let ((_%$%lp-tl5604856105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5604656098%_)))
                                              (_%$%lp-hd5604756102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5604656098%_))))
                                          (_%$%loop5604556089%_
                                           _%$%lp-tl5604856105%_
                                           (cons _%$%lp-hd5604756102%_
                                                 _%$%body5604956096%_))))
                                      (let ((_%$%body5605056108%_
                                             (reverse _%$%body5604956096%_)))
                                        (_%__kont9870998710%_
                                         _%$%body5605056108%_))))))
                        (_%$%loop5604556089%_ _%$%target5604256083%_ '()))))
                   (_%__match9899398994%_
                    (lambda (_%$%e5601456145%_
                             _%$%hd5601556149%_
                             _%$%tl5601656152%_
                             _%$%e5601756155%_
                             _%$%hd5601856159%_
                             _%$%tl5601956162%_
                             _%$%e5602056165%_
                             _%$%hd5602156169%_
                             _%$%tl5602256172%_
                             _%$%e5602356175%_
                             _%$%hd5602456179%_
                             _%$%tl5602556182%_
                             _%__splice9870798708%_
                             _%$%target5602656185%_
                             _%$%tl5602856188%_)
                      (letrec ((_%$%loop5602956191%_
                                (lambda (_%$%hd5602756195%_
                                         _%$%body5603356198%_)
                                  (if (gx#stx-pair? _%$%hd5602756195%_)
                                      (let ((_%$%e5603056200%_
                                             (gx#syntax-e _%$%hd5602756195%_)))
                                        (let ((_%$%lp-tl5603256207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5603056200%_)))
                                              (_%$%lp-hd5603156204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5603056200%_))))
                                          (_%$%loop5602956191%_
                                           _%$%lp-tl5603256207%_
                                           (cons _%$%lp-hd5603156204%_
                                                 _%$%body5603356198%_))))
                                      (let ((_%$%body5603456210%_
                                             (reverse _%$%body5603356198%_)))
                                        (let ((_%$%g5601056213%_
                                               _%$%body5603456210%_)
                                              (_%$%g5601156215%_
                                               _%$%tl5602256172%_)
                                              (_%$%g5601256216%_
                                               _%$%tl5602556182%_)
                                              (_%$%g5601356217%_
                                               _%$%hd5602456179%_))
                                          (if (gx#identifier?
                                               _%$%g5601356217%_)
                                              (_%__kont9870598706%_
                                               _%$%g5601056213%_
                                               _%$%g5601156215%_
                                               _%$%g5601256216%_
                                               _%$%g5601356217%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5584756056%_)))))))))
                        (_%$%loop5602956191%_ _%$%target5602656185%_ '()))))
                   (_%__match9897998980%_
                    (lambda (_%$%e5601456145%_
                             _%$%hd5601556149%_
                             _%$%tl5601656152%_
                             _%$%e5601756155%_
                             _%$%hd5601856159%_
                             _%$%tl5601956162%_
                             _%$%e5602056165%_
                             _%$%hd5602156169%_
                             _%$%tl5602256172%_)
                      (if (gx#stx-pair? _%$%hd5602156169%_)
                          (let ((_%$%e5602356175%_
                                 (gx#syntax-e _%$%hd5602156169%_)))
                            (let ((_%$%tl5602556182%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5602356175%_)))
                                  (_%$%hd5602456179%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5602356175%_))))
                              (if (gx#stx-pair/null? _%$%tl5601956162%_)
                                  (let ((_%__splice9870798708%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5601956162%_
                                          '0)))
                                    (let ((_%$%tl5602856188%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9870798708%_
                                              '1)))
                                          (_%$%target5602656185%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9870798708%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5602856188%_)
                                          (_%__match9899398994%_
                                           _%$%e5601456145%_
                                           _%$%hd5601556149%_
                                           _%$%tl5601656152%_
                                           _%$%e5601756155%_
                                           _%$%hd5601856159%_
                                           _%$%tl5601956162%_
                                           _%$%e5602056165%_
                                           _%$%hd5602156169%_
                                           _%$%tl5602256172%_
                                           _%$%e5602356175%_
                                           _%$%hd5602456179%_
                                           _%$%tl5602556182%_
                                           _%__splice9870798708%_
                                           _%$%target5602656185%_
                                           _%$%tl5602856188%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5584756056%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_)))))
                          (let () (declare (not safe)) (_%$%g5584756056%_)))))
                   (_%__match9896198962%_
                    (lambda (_%$%e5598056255%_
                             _%$%hd5598156259%_
                             _%$%tl5598256262%_
                             _%$%e5598356265%_
                             _%$%hd5598456269%_
                             _%$%tl5598556272%_
                             _%$%e5598656275%_
                             _%$%hd5598756279%_
                             _%$%tl5598856282%_
                             _%$%e5598956285%_
                             _%$%hd5599056289%_
                             _%$%tl5599156292%_
                             _%$%e5599256295%_
                             _%$%hd5599356299%_
                             _%$%tl5599456302%_
                             _%$%e5599556305%_
                             _%$%hd5599656309%_
                             _%$%tl5599756312%_
                             _%$%e5599856315%_
                             _%$%hd5599956319%_
                             _%$%tl5600056322%_
                             _%__splice9870398704%_
                             _%$%target5600156325%_
                             _%$%tl5600356328%_)
                      (letrec ((_%$%loop5600456331%_
                                (lambda (_%$%hd5600256335%_
                                         _%$%body5600856338%_)
                                  (if (gx#stx-pair? _%$%hd5600256335%_)
                                      (let ((_%$%e5600556340%_
                                             (gx#syntax-e _%$%hd5600256335%_)))
                                        (let ((_%$%lp-tl5600756347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5600556340%_)))
                                              (_%$%lp-hd5600656344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5600556340%_))))
                                          (_%$%loop5600456331%_
                                           _%$%lp-tl5600756347%_
                                           (cons _%$%lp-hd5600656344%_
                                                 _%$%body5600856338%_))))
                                      (let ((_%$%body5600956350%_
                                             (reverse _%$%body5600856338%_)))
                                        (let ((_%$%g5597556353%_
                                               _%$%body5600956350%_)
                                              (_%$%g5597656355%_
                                               _%$%hd5599956319%_)
                                              (_%$%g5597756356%_
                                               _%$%hd5599656309%_)
                                              (_%$%g5597856357%_
                                               _%$%hd5599356299%_)
                                              (_%$%g5597956358%_
                                               _%$%hd5598756279%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5597956358%_)
                                                   (gx#identifier?
                                                    _%$%g5597656355%_)
                                                   (gx#identifier?
                                                    _%$%g5597756356%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5597756356%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5597756356%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5597756356%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5597756356%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9870198702%_
                                               _%$%g5597556353%_
                                               _%$%g5597656355%_
                                               _%$%g5597756356%_
                                               _%$%g5597856357%_
                                               _%$%g5597956358%_)
                                              (_%__match9897998980%_
                                               _%$%e5598056255%_
                                               _%$%hd5598156259%_
                                               _%$%tl5598256262%_
                                               _%$%e5598356265%_
                                               _%$%hd5598456269%_
                                               _%$%tl5598556272%_
                                               _%$%e5598656275%_
                                               _%$%hd5598756279%_
                                               _%$%tl5598856282%_))))))))
                        (_%$%loop5600456331%_ _%$%target5600156325%_ '()))))
                   (_%__match9890598906%_
                    (lambda (_%$%e5595156415%_
                             _%$%hd5595256419%_
                             _%$%tl5595356422%_
                             _%$%e5595456425%_
                             _%$%hd5595556429%_
                             _%$%tl5595656432%_
                             _%$%e5595756435%_
                             _%$%hd5595856439%_
                             _%$%tl5595956442%_
                             _%$%e5596056445%_
                             _%$%hd5596156449%_
                             _%$%tl5596256452%_
                             _%$%e5596356455%_
                             _%$%hd5596456459%_
                             _%$%tl5596556462%_
                             _%__splice9869998700%_
                             _%$%target5596656465%_
                             _%$%tl5596856468%_)
                      (letrec ((_%$%loop5596956471%_
                                (lambda (_%$%hd5596756475%_
                                         _%$%body5597356478%_)
                                  (if (gx#stx-pair? _%$%hd5596756475%_)
                                      (let ((_%$%e5597056480%_
                                             (gx#syntax-e _%$%hd5596756475%_)))
                                        (let ((_%$%lp-tl5597256487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5597056480%_)))
                                              (_%$%lp-hd5597156484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5597056480%_))))
                                          (_%$%loop5596956471%_
                                           _%$%lp-tl5597256487%_
                                           (cons _%$%lp-hd5597156484%_
                                                 _%$%body5597356478%_))))
                                      (let ((_%$%body5597456490%_
                                             (reverse _%$%body5597356478%_)))
                                        (let ((_%$%g5594856493%_
                                               _%$%body5597456490%_)
                                              (_%$%g5594956495%_
                                               _%$%hd5596456459%_)
                                              (_%$%g5595056496%_
                                               _%$%hd5595856439%_))
                                          (if (gx#identifier?
                                               _%$%g5595056496%_)
                                              (_%__kont9869798698%_
                                               _%$%g5594856493%_
                                               _%$%g5594956495%_
                                               _%$%g5595056496%_)
                                              (_%__match9897998980%_
                                               _%$%e5595156415%_
                                               _%$%hd5595256419%_
                                               _%$%tl5595356422%_
                                               _%$%e5595456425%_
                                               _%$%hd5595556429%_
                                               _%$%tl5595656432%_
                                               _%$%e5595756435%_
                                               _%$%hd5595856439%_
                                               _%$%tl5595956442%_))))))))
                        (_%$%loop5596956471%_ _%$%target5596656465%_ '()))))
                   (_%__match9888598886%_
                    (lambda (_%$%e5595156415%_
                             _%$%hd5595256419%_
                             _%$%tl5595356422%_
                             _%$%e5595456425%_
                             _%$%hd5595556429%_
                             _%$%tl5595656432%_
                             _%$%e5595756435%_
                             _%$%hd5595856439%_
                             _%$%tl5595956442%_
                             _%$%e5596056445%_
                             _%$%hd5596156449%_
                             _%$%tl5596256452%_)
                      (if (gx#identifier? _%$%hd5596156449%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g105405_|
                               _%$%hd5596156449%_)
                              (if (gx#stx-pair? _%$%tl5596256452%_)
                                  (let ((_%$%e5596356455%_
                                         (gx#syntax-e _%$%tl5596256452%_)))
                                    (let ((_%$%tl5596556462%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5596356455%_)))
                                          (_%$%hd5596456459%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5596356455%_))))
                                      (if (gx#stx-null? _%$%tl5596556462%_)
                                          (if (gx#stx-pair/null?
                                               _%$%tl5595656432%_)
                                              (let ((_%__splice9869998700%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5595656432%_
                                                      '0)))
                                                (let ((_%$%tl5596856468%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9869998700%_
                                                          '1)))
                                                      (_%$%target5596656465%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9869998700%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5596856468%_)
                                                      (_%__match9890598906%_
                                                       _%$%e5595156415%_
                                                       _%$%hd5595256419%_
                                                       _%$%tl5595356422%_
                                                       _%$%e5595456425%_
                                                       _%$%hd5595556429%_
                                                       _%$%tl5595656432%_
                                                       _%$%e5595756435%_
                                                       _%$%hd5595856439%_
                                                       _%$%tl5595956442%_
                                                       _%$%e5596056445%_
                                                       _%$%hd5596156449%_
                                                       _%$%tl5596256452%_
                                                       _%$%e5596356455%_
                                                       _%$%hd5596456459%_
                                                       _%$%tl5596556462%_
                                                       _%__splice9869998700%_
                                                       _%$%target5596656465%_
                                                       _%$%tl5596856468%_)
                                                      (if (gx#stx-pair?
                                                           _%$%hd5595856439%_)
                                                          (let ((_%$%e5602356175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%hd5595856439%_)))
                    (let ((_%$%tl5602556182%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5602356175%_)))
                          (_%$%hd5602456179%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5602356175%_))))
                      (let () (declare (not safe)) (_%$%g5584756056%_))))
                  (let () (declare (not safe)) (_%$%g5584756056%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5595856439%_)
                                                  (let ((_%$%e5602356175%_
                                                         (gx#syntax-e
                                                          _%$%hd5595856439%_)))
                                                    (let ((_%$%tl5602556182%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5602356175%_)))
                                                          (_%$%hd5602456179%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5602356175%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5584756056%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5584756056%_))))
                                          (if (gx#stx-pair? _%$%tl5596556462%_)
                                              (let ((_%$%e5599556305%_
                                                     (gx#syntax-e
                                                      _%$%tl5596556462%_)))
                                                (let ((_%$%tl5599756312%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5599556305%_)))
                                                      (_%$%hd5599656309%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5599556305%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl5599756312%_)
                                                      (let ((_%$%e5599856315%_
                                                             (gx#syntax-e
                                                              _%$%tl5599756312%_)))
                                                        (let ((_%$%tl5600056322%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5599856315%_)))
                      (_%$%hd5599956319%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5599856315%_))))
                  (if (gx#stx-null? _%$%tl5600056322%_)
                      (if (gx#stx-pair/null? _%$%tl5595656432%_)
                          (let ((_%__splice9870398704%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5595656432%_
                                  '0)))
                            (let ((_%$%tl5600356328%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9870398704%_ '1)))
                                  (_%$%target5600156325%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9870398704%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5600356328%_)
                                  (_%__match9896198962%_
                                   _%$%e5595156415%_
                                   _%$%hd5595256419%_
                                   _%$%tl5595356422%_
                                   _%$%e5595456425%_
                                   _%$%hd5595556429%_
                                   _%$%tl5595656432%_
                                   _%$%e5595756435%_
                                   _%$%hd5595856439%_
                                   _%$%tl5595956442%_
                                   _%$%e5596056445%_
                                   _%$%hd5596156449%_
                                   _%$%tl5596256452%_
                                   _%$%e5596356455%_
                                   _%$%hd5596456459%_
                                   _%$%tl5596556462%_
                                   _%$%e5599556305%_
                                   _%$%hd5599656309%_
                                   _%$%tl5599756312%_
                                   _%$%e5599856315%_
                                   _%$%hd5599956319%_
                                   _%$%tl5600056322%_
                                   _%__splice9870398704%_
                                   _%$%target5600156325%_
                                   _%$%tl5600356328%_)
                                  (if (gx#stx-pair? _%$%hd5595856439%_)
                                      (let ((_%$%e5602356175%_
                                             (gx#syntax-e _%$%hd5595856439%_)))
                                        (let ((_%$%tl5602556182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5602356175%_)))
                                              (_%$%hd5602456179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5602356175%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5584756056%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5584756056%_))))))
                          (if (gx#stx-pair? _%$%hd5595856439%_)
                              (let ((_%$%e5602356175%_
                                     (gx#syntax-e _%$%hd5595856439%_)))
                                (let ((_%$%tl5602556182%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5602356175%_)))
                                      (_%$%hd5602456179%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5602356175%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5584756056%_))))
                      (if (gx#stx-pair? _%$%hd5595856439%_)
                          (let ((_%$%e5602356175%_
                                 (gx#syntax-e _%$%hd5595856439%_)))
                            (let ((_%$%tl5602556182%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5602356175%_)))
                                  (_%$%hd5602456179%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5602356175%_))))
                              (if (gx#stx-pair/null? _%$%tl5595656432%_)
                                  (let ((_%__splice9870798708%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5595656432%_
                                          '0)))
                                    (let ((_%$%tl5602856188%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9870798708%_
                                              '1)))
                                          (_%$%target5602656185%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9870798708%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5602856188%_)
                                          (_%__match9899398994%_
                                           _%$%e5595156415%_
                                           _%$%hd5595256419%_
                                           _%$%tl5595356422%_
                                           _%$%e5595456425%_
                                           _%$%hd5595556429%_
                                           _%$%tl5595656432%_
                                           _%$%e5595756435%_
                                           _%$%hd5595856439%_
                                           _%$%tl5595956442%_
                                           _%$%e5602356175%_
                                           _%$%hd5602456179%_
                                           _%$%tl5602556182%_
                                           _%__splice9870798708%_
                                           _%$%target5602656185%_
                                           _%$%tl5602856188%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5584756056%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_)))))
                          (let () (declare (not safe)) (_%$%g5584756056%_))))))
              (if (gx#stx-pair? _%$%hd5595856439%_)
                  (let ((_%$%e5602356175%_ (gx#syntax-e _%$%hd5595856439%_)))
                    (let ((_%$%tl5602556182%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5602356175%_)))
                          (_%$%hd5602456179%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5602356175%_))))
                      (if (gx#stx-pair/null? _%$%tl5595656432%_)
                          (let ((_%__splice9870798708%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5595656432%_
                                  '0)))
                            (let ((_%$%tl5602856188%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9870798708%_ '1)))
                                  (_%$%target5602656185%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9870798708%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5602856188%_)
                                  (_%__match9899398994%_
                                   _%$%e5595156415%_
                                   _%$%hd5595256419%_
                                   _%$%tl5595356422%_
                                   _%$%e5595456425%_
                                   _%$%hd5595556429%_
                                   _%$%tl5595656432%_
                                   _%$%e5595756435%_
                                   _%$%hd5595856439%_
                                   _%$%tl5595956442%_
                                   _%$%e5602356175%_
                                   _%$%hd5602456179%_
                                   _%$%tl5602556182%_
                                   _%__splice9870798708%_
                                   _%$%target5602656185%_
                                   _%$%tl5602856188%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_)))))
                          (let () (declare (not safe)) (_%$%g5584756056%_)))))
                  (let () (declare (not safe)) (_%$%g5584756056%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5595856439%_)
                                                  (let ((_%$%e5602356175%_
                                                         (gx#syntax-e
                                                          _%$%hd5595856439%_)))
                                                    (let ((_%$%tl5602556182%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5602356175%_)))
                                                          (_%$%hd5602456179%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5602356175%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5595656432%_)
                                                          (let ((_%__splice9870798708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5595656432%_
                          '0)))
                    (let ((_%$%tl5602856188%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9870798708%_ '1)))
                          (_%$%target5602656185%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9870798708%_ '0))))
                      (if (gx#stx-null? _%$%tl5602856188%_)
                          (_%__match9899398994%_
                           _%$%e5595156415%_
                           _%$%hd5595256419%_
                           _%$%tl5595356422%_
                           _%$%e5595456425%_
                           _%$%hd5595556429%_
                           _%$%tl5595656432%_
                           _%$%e5595756435%_
                           _%$%hd5595856439%_
                           _%$%tl5595956442%_
                           _%$%e5602356175%_
                           _%$%hd5602456179%_
                           _%$%tl5602556182%_
                           _%__splice9870798708%_
                           _%$%target5602656185%_
                           _%$%tl5602856188%_)
                          (let () (declare (not safe)) (_%$%g5584756056%_)))))
                  (let () (declare (not safe)) (_%$%g5584756056%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5584756056%_)))))))
                                  (if (gx#stx-pair? _%$%hd5595856439%_)
                                      (let ((_%$%e5602356175%_
                                             (gx#syntax-e _%$%hd5595856439%_)))
                                        (let ((_%$%tl5602556182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5602356175%_)))
                                              (_%$%hd5602456179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5602356175%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl5595656432%_)
                                              (let ((_%__splice9870798708%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5595656432%_
                                                      '0)))
                                                (let ((_%$%tl5602856188%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9870798708%_
                                                          '1)))
                                                      (_%$%target5602656185%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9870798708%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5602856188%_)
                                                      (_%__match9899398994%_
                                                       _%$%e5595156415%_
                                                       _%$%hd5595256419%_
                                                       _%$%tl5595356422%_
                                                       _%$%e5595456425%_
                                                       _%$%hd5595556429%_
                                                       _%$%tl5595656432%_
                                                       _%$%e5595756435%_
                                                       _%$%hd5595856439%_
                                                       _%$%tl5595956442%_
                                                       _%$%e5602356175%_
                                                       _%$%hd5602456179%_
                                                       _%$%tl5602556182%_
                                                       _%__splice9870798708%_
                                                       _%$%target5602656185%_
                                                       _%$%tl5602856188%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5584756056%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5584756056%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5584756056%_))))
                              (if (gx#stx-pair? _%$%hd5595856439%_)
                                  (let ((_%$%e5602356175%_
                                         (gx#syntax-e _%$%hd5595856439%_)))
                                    (let ((_%$%tl5602556182%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5602356175%_)))
                                          (_%$%hd5602456179%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5602356175%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl5595656432%_)
                                          (let ((_%__splice9870798708%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5595656432%_
                                                  '0)))
                                            (let ((_%$%tl5602856188%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9870798708%_
                                                      '1)))
                                                  (_%$%target5602656185%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9870798708%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5602856188%_)
                                                  (_%__match9899398994%_
                                                   _%$%e5595156415%_
                                                   _%$%hd5595256419%_
                                                   _%$%tl5595356422%_
                                                   _%$%e5595456425%_
                                                   _%$%hd5595556429%_
                                                   _%$%tl5595656432%_
                                                   _%$%e5595756435%_
                                                   _%$%hd5595856439%_
                                                   _%$%tl5595956442%_
                                                   _%$%e5602356175%_
                                                   _%$%hd5602456179%_
                                                   _%$%tl5602556182%_
                                                   _%__splice9870798708%_
                                                   _%$%target5602656185%_
                                                   _%$%tl5602856188%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5584756056%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5584756056%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_))))
                          (if (gx#stx-pair? _%$%hd5595856439%_)
                              (let ((_%$%e5602356175%_
                                     (gx#syntax-e _%$%hd5595856439%_)))
                                (let ((_%$%tl5602556182%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5602356175%_)))
                                      (_%$%hd5602456179%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5602356175%_))))
                                  (if (gx#stx-pair/null? _%$%tl5595656432%_)
                                      (let ((_%__splice9870798708%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5595656432%_
                                              '0)))
                                        (let ((_%$%tl5602856188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9870798708%_
                                                  '1)))
                                              (_%$%target5602656185%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9870798708%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5602856188%_)
                                              (_%__match9899398994%_
                                               _%$%e5595156415%_
                                               _%$%hd5595256419%_
                                               _%$%tl5595356422%_
                                               _%$%e5595456425%_
                                               _%$%hd5595556429%_
                                               _%$%tl5595656432%_
                                               _%$%e5595756435%_
                                               _%$%hd5595856439%_
                                               _%$%tl5595956442%_
                                               _%$%e5602356175%_
                                               _%$%hd5602456179%_
                                               _%$%tl5602556182%_
                                               _%__splice9870798708%_
                                               _%$%target5602656185%_
                                               _%$%tl5602856188%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5584756056%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5584756056%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5584756056%_))))))
                   (_%__match9886198862%_
                    (lambda (_%$%e5592456535%_
                             _%$%hd5592556539%_
                             _%$%tl5592656542%_
                             _%$%e5592756545%_
                             _%$%hd5592856549%_
                             _%$%tl5592956552%_
                             _%$%e5593056555%_
                             _%$%hd5593156559%_
                             _%$%tl5593256562%_
                             _%$%e5593356565%_
                             _%$%hd5593456569%_
                             _%$%tl5593556572%_
                             _%$%e5593656575%_
                             _%$%hd5593756579%_
                             _%$%tl5593856582%_
                             _%__splice9869598696%_
                             _%$%target5593956585%_
                             _%$%tl5594156588%_)
                      (letrec ((_%$%loop5594256591%_
                                (lambda (_%$%hd5594056595%_
                                         _%$%body5594656598%_)
                                  (if (gx#stx-pair? _%$%hd5594056595%_)
                                      (let ((_%$%e5594356600%_
                                             (gx#syntax-e _%$%hd5594056595%_)))
                                        (let ((_%$%lp-tl5594556607%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5594356600%_)))
                                              (_%$%lp-hd5594456604%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5594356600%_))))
                                          (_%$%loop5594256591%_
                                           _%$%lp-tl5594556607%_
                                           (cons _%$%lp-hd5594456604%_
                                                 _%$%body5594656598%_))))
                                      (let ((_%$%body5594756610%_
                                             (reverse _%$%body5594656598%_)))
                                        (let ((_%$%g5592056613%_
                                               _%$%body5594756610%_)
                                              (_%$%g5592156615%_
                                               _%$%hd5593756579%_)
                                              (_%$%g5592256616%_
                                               _%$%hd5593456569%_)
                                              (_%$%g5592356617%_
                                               _%$%hd5593156559%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5592356617%_)
                                                   (gx#identifier?
                                                    _%$%g5592156615%_)
                                                   (gx#identifier?
                                                    _%$%g5592256616%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5592256616%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5592256616%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5592256616%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5592256616%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9869398694%_
                                               _%$%g5592056613%_
                                               _%$%g5592156615%_
                                               _%$%g5592256616%_
                                               _%$%g5592356617%_)
                                              (_%__match9888598886%_
                                               _%$%e5592456535%_
                                               _%$%hd5592556539%_
                                               _%$%tl5592656542%_
                                               _%$%e5592756545%_
                                               _%$%hd5592856549%_
                                               _%$%tl5592956552%_
                                               _%$%e5593056555%_
                                               _%$%hd5593156559%_
                                               _%$%tl5593256562%_
                                               _%$%e5593356565%_
                                               _%$%hd5593456569%_
                                               _%$%tl5593556572%_))))))))
                        (_%$%loop5594256591%_ _%$%target5593956585%_ '()))))
                   (_%__match9882198822%_
                    (lambda (_%$%e5588756686%_
                             _%$%hd5588856690%_
                             _%$%tl5588956693%_
                             _%$%e5589056696%_
                             _%$%hd5589156700%_
                             _%$%tl5589256703%_
                             _%$%e5589356706%_
                             _%$%hd5589456710%_
                             _%$%tl5589556713%_
                             _%$%e5589656716%_
                             _%$%hd5589756720%_
                             _%$%tl5589856723%_
                             _%$%e5589956726%_
                             _%$%hd5590056730%_
                             _%$%tl5590156733%_
                             _%$%e5590256736%_
                             _%$%hd5590356740%_
                             _%$%tl5590456743%_
                             _%$%e5590556746%_
                             _%$%hd5590656750%_
                             _%$%tl5590756753%_
                             _%$%e5590856756%_
                             _%$%hd5590956760%_
                             _%$%tl5591056763%_
                             _%__splice9869198692%_
                             _%$%target5591156766%_
                             _%$%tl5591356769%_)
                      (letrec ((_%$%loop5591456772%_
                                (lambda (_%$%hd5591256776%_
                                         _%$%body5591856779%_)
                                  (if (gx#stx-pair? _%$%hd5591256776%_)
                                      (let ((_%$%e5591556781%_
                                             (gx#syntax-e _%$%hd5591256776%_)))
                                        (let ((_%$%lp-tl5591756788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5591556781%_)))
                                              (_%$%lp-hd5591656785%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5591556781%_))))
                                          (_%$%loop5591456772%_
                                           _%$%lp-tl5591756788%_
                                           (cons _%$%lp-hd5591656785%_
                                                 _%$%body5591856779%_))))
                                      (let ((_%$%body5591956791%_
                                             (reverse _%$%body5591856779%_)))
                                        (let ((_%$%g5588156794%_
                                               _%$%body5591956791%_)
                                              (_%$%g5588256796%_
                                               _%$%hd5590956760%_)
                                              (_%$%g5588356797%_
                                               _%$%hd5590656750%_)
                                              (_%$%g5588456798%_
                                               _%$%hd5590356740%_)
                                              (_%$%g5588556799%_
                                               _%$%hd5589756720%_)
                                              (_%$%g5588656800%_
                                               _%$%hd5589456710%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5588656800%_)
                                                   (gx#identifier?
                                                    _%$%g5588256796%_)
                                                   (gx#identifier?
                                                    _%$%g5588356797%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5588356797%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5588356797%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5588356797%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5588356797%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9868998690%_
                                               _%$%g5588156794%_
                                               _%$%g5588256796%_
                                               _%$%g5588356797%_
                                               _%$%g5588456798%_
                                               _%$%g5588556799%_
                                               _%$%g5588656800%_)
                                              (_%__match9888598886%_
                                               _%$%e5588756686%_
                                               _%$%hd5588856690%_
                                               _%$%tl5588956693%_
                                               _%$%e5589056696%_
                                               _%$%hd5589156700%_
                                               _%$%tl5589256703%_
                                               _%$%e5589356706%_
                                               _%$%hd5589456710%_
                                               _%$%tl5589556713%_
                                               _%$%e5589656716%_
                                               _%$%hd5589756720%_
                                               _%$%tl5589856723%_))))))))
                        (_%$%loop5591456772%_ _%$%target5591156766%_ '()))))
                   (_%__match9878998790%_
                    (lambda (_%$%e5588756686%_
                             _%$%hd5588856690%_
                             _%$%tl5588956693%_
                             _%$%e5589056696%_
                             _%$%hd5589156700%_
                             _%$%tl5589256703%_
                             _%$%e5589356706%_
                             _%$%hd5589456710%_
                             _%$%tl5589556713%_
                             _%$%e5589656716%_
                             _%$%hd5589756720%_
                             _%$%tl5589856723%_
                             _%$%e5589956726%_
                             _%$%hd5590056730%_
                             _%$%tl5590156733%_)
                      (if (gx#identifier? _%$%hd5590056730%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g105406_|
                               _%$%hd5590056730%_)
                              (if (gx#stx-pair? _%$%tl5590156733%_)
                                  (let ((_%$%e5590256736%_
                                         (gx#syntax-e _%$%tl5590156733%_)))
                                    (let ((_%$%tl5590456743%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5590256736%_)))
                                          (_%$%hd5590356740%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5590256736%_))))
                                      (if (gx#stx-pair? _%$%tl5590456743%_)
                                          (let ((_%$%e5590556746%_
                                                 (gx#syntax-e
                                                  _%$%tl5590456743%_)))
                                            (let ((_%$%tl5590756753%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5590556746%_)))
                                                  (_%$%hd5590656750%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5590556746%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5590756753%_)
                                                  (let ((_%$%e5590856756%_
                                                         (gx#syntax-e
                                                          _%$%tl5590756753%_)))
                                                    (let ((_%$%tl5591056763%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5590856756%_)))
                                                          (_%$%hd5590956760%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5590856756%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5591056763%_)
                                                          (if (gx#stx-pair/null?
                                                               _%$%tl5589256703%_)
                                                              (let ((_%__splice9869198692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%$%tl5589256703%_
                              '0)))
                        (let ((_%$%tl5591356769%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9869198692%_ '1)))
                              (_%$%target5591156766%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9869198692%_ '0))))
                          (if (gx#stx-null? _%$%tl5591356769%_)
                              (_%__match9882198822%_
                               _%$%e5588756686%_
                               _%$%hd5588856690%_
                               _%$%tl5588956693%_
                               _%$%e5589056696%_
                               _%$%hd5589156700%_
                               _%$%tl5589256703%_
                               _%$%e5589356706%_
                               _%$%hd5589456710%_
                               _%$%tl5589556713%_
                               _%$%e5589656716%_
                               _%$%hd5589756720%_
                               _%$%tl5589856723%_
                               _%$%e5589956726%_
                               _%$%hd5590056730%_
                               _%$%tl5590156733%_
                               _%$%e5590256736%_
                               _%$%hd5590356740%_
                               _%$%tl5590456743%_
                               _%$%e5590556746%_
                               _%$%hd5590656750%_
                               _%$%tl5590756753%_
                               _%$%e5590856756%_
                               _%$%hd5590956760%_
                               _%$%tl5591056763%_
                               _%__splice9869198692%_
                               _%$%target5591156766%_
                               _%$%tl5591356769%_)
                              (if (gx#stx-pair? _%$%hd5589456710%_)
                                  (let ((_%$%e5602356175%_
                                         (gx#syntax-e _%$%hd5589456710%_)))
                                    (let ((_%$%tl5602556182%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5602356175%_)))
                                          (_%$%hd5602456179%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5602356175%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5584756056%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_))))))
                      (if (gx#stx-pair? _%$%hd5589456710%_)
                          (let ((_%$%e5602356175%_
                                 (gx#syntax-e _%$%hd5589456710%_)))
                            (let ((_%$%tl5602556182%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5602356175%_)))
                                  (_%$%hd5602456179%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5602356175%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5584756056%_))))
                          (let () (declare (not safe)) (_%$%g5584756056%_))))
                  (if (gx#stx-pair? _%$%hd5589456710%_)
                      (let ((_%$%e5602356175%_
                             (gx#syntax-e _%$%hd5589456710%_)))
                        (let ((_%$%tl5602556182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5602356175%_)))
                              (_%$%hd5602456179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5602356175%_))))
                          (if (gx#stx-pair/null? _%$%tl5589256703%_)
                              (let ((_%__splice9870798708%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5589256703%_
                                      '0)))
                                (let ((_%$%tl5602856188%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9870798708%_
                                          '1)))
                                      (_%$%target5602656185%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9870798708%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5602856188%_)
                                      (_%__match9899398994%_
                                       _%$%e5588756686%_
                                       _%$%hd5588856690%_
                                       _%$%tl5588956693%_
                                       _%$%e5589056696%_
                                       _%$%hd5589156700%_
                                       _%$%tl5589256703%_
                                       _%$%e5589356706%_
                                       _%$%hd5589456710%_
                                       _%$%tl5589556713%_
                                       _%$%e5602356175%_
                                       _%$%hd5602456179%_
                                       _%$%tl5602556182%_
                                       _%__splice9870798708%_
                                       _%$%target5602656185%_
                                       _%$%tl5602856188%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5584756056%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5584756056%_)))))
                      (let () (declare (not safe)) (_%$%g5584756056%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%$%hd5589756720%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g105405_|
                                                           _%$%hd5589756720%_)
                                                          (if (gx#stx-null?
                                                               _%$%tl5590756753%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%tl5589256703%_)
                          (let ((_%__splice9870398704%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5589256703%_
                                  '0)))
                            (let ((_%$%tl5600356328%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9870398704%_ '1)))
                                  (_%$%target5600156325%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9870398704%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5600356328%_)
                                  (_%__match9896198962%_
                                   _%$%e5588756686%_
                                   _%$%hd5588856690%_
                                   _%$%tl5588956693%_
                                   _%$%e5589056696%_
                                   _%$%hd5589156700%_
                                   _%$%tl5589256703%_
                                   _%$%e5589356706%_
                                   _%$%hd5589456710%_
                                   _%$%tl5589556713%_
                                   _%$%e5589656716%_
                                   _%$%hd5589756720%_
                                   _%$%tl5589856723%_
                                   _%$%e5589956726%_
                                   _%$%hd5590056730%_
                                   _%$%tl5590156733%_
                                   _%$%e5590256736%_
                                   _%$%hd5590356740%_
                                   _%$%tl5590456743%_
                                   _%$%e5590556746%_
                                   _%$%hd5590656750%_
                                   _%$%tl5590756753%_
                                   _%__splice9870398704%_
                                   _%$%target5600156325%_
                                   _%$%tl5600356328%_)
                                  (if (gx#stx-pair? _%$%hd5589456710%_)
                                      (let ((_%$%e5602356175%_
                                             (gx#syntax-e _%$%hd5589456710%_)))
                                        (let ((_%$%tl5602556182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5602356175%_)))
                                              (_%$%hd5602456179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5602356175%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5584756056%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5584756056%_))))))
                          (if (gx#stx-pair? _%$%hd5589456710%_)
                              (let ((_%$%e5602356175%_
                                     (gx#syntax-e _%$%hd5589456710%_)))
                                (let ((_%$%tl5602556182%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5602356175%_)))
                                      (_%$%hd5602456179%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5602356175%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5584756056%_))))
                      (if (gx#stx-pair? _%$%hd5589456710%_)
                          (let ((_%$%e5602356175%_
                                 (gx#syntax-e _%$%hd5589456710%_)))
                            (let ((_%$%tl5602556182%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5602356175%_)))
                                  (_%$%hd5602456179%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5602356175%_))))
                              (if (gx#stx-pair/null? _%$%tl5589256703%_)
                                  (let ((_%__splice9870798708%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5589256703%_
                                          '0)))
                                    (let ((_%$%tl5602856188%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9870798708%_
                                              '1)))
                                          (_%$%target5602656185%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9870798708%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5602856188%_)
                                          (_%__match9899398994%_
                                           _%$%e5588756686%_
                                           _%$%hd5588856690%_
                                           _%$%tl5588956693%_
                                           _%$%e5589056696%_
                                           _%$%hd5589156700%_
                                           _%$%tl5589256703%_
                                           _%$%e5589356706%_
                                           _%$%hd5589456710%_
                                           _%$%tl5589556713%_
                                           _%$%e5602356175%_
                                           _%$%hd5602456179%_
                                           _%$%tl5602556182%_
                                           _%__splice9870798708%_
                                           _%$%target5602656185%_
                                           _%$%tl5602856188%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5584756056%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_)))))
                          (let () (declare (not safe)) (_%$%g5584756056%_))))
                  (if (gx#stx-pair? _%$%hd5589456710%_)
                      (let ((_%$%e5602356175%_
                             (gx#syntax-e _%$%hd5589456710%_)))
                        (let ((_%$%tl5602556182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5602356175%_)))
                              (_%$%hd5602456179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5602356175%_))))
                          (if (gx#stx-pair/null? _%$%tl5589256703%_)
                              (let ((_%__splice9870798708%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5589256703%_
                                      '0)))
                                (let ((_%$%tl5602856188%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9870798708%_
                                          '1)))
                                      (_%$%target5602656185%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9870798708%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5602856188%_)
                                      (_%__match9899398994%_
                                       _%$%e5588756686%_
                                       _%$%hd5588856690%_
                                       _%$%tl5588956693%_
                                       _%$%e5589056696%_
                                       _%$%hd5589156700%_
                                       _%$%tl5589256703%_
                                       _%$%e5589356706%_
                                       _%$%hd5589456710%_
                                       _%$%tl5589556713%_
                                       _%$%e5602356175%_
                                       _%$%hd5602456179%_
                                       _%$%tl5602556182%_
                                       _%__splice9870798708%_
                                       _%$%target5602656185%_
                                       _%$%tl5602856188%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5584756056%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5584756056%_)))))
                      (let () (declare (not safe)) (_%$%g5584756056%_))))
              (if (gx#stx-pair? _%$%hd5589456710%_)
                  (let ((_%$%e5602356175%_ (gx#syntax-e _%$%hd5589456710%_)))
                    (let ((_%$%tl5602556182%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5602356175%_)))
                          (_%$%hd5602456179%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5602356175%_))))
                      (if (gx#stx-pair/null? _%$%tl5589256703%_)
                          (let ((_%__splice9870798708%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5589256703%_
                                  '0)))
                            (let ((_%$%tl5602856188%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9870798708%_ '1)))
                                  (_%$%target5602656185%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9870798708%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5602856188%_)
                                  (_%__match9899398994%_
                                   _%$%e5588756686%_
                                   _%$%hd5588856690%_
                                   _%$%tl5588956693%_
                                   _%$%e5589056696%_
                                   _%$%hd5589156700%_
                                   _%$%tl5589256703%_
                                   _%$%e5589356706%_
                                   _%$%hd5589456710%_
                                   _%$%tl5589556713%_
                                   _%$%e5602356175%_
                                   _%$%hd5602456179%_
                                   _%$%tl5602556182%_
                                   _%__splice9870798708%_
                                   _%$%target5602656185%_
                                   _%$%tl5602856188%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_)))))
                          (let () (declare (not safe)) (_%$%g5584756056%_)))))
                  (let () (declare (not safe)) (_%$%g5584756056%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5589456710%_)
                                              (let ((_%$%e5602356175%_
                                                     (gx#syntax-e
                                                      _%$%hd5589456710%_)))
                                                (let ((_%$%tl5602556182%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5602356175%_)))
                                                      (_%$%hd5602456179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5602356175%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5589256703%_)
                                                      (let ((_%__splice9870798708%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5589256703%_
                                                              '0)))
                                                        (let ((_%$%tl5602856188%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9870798708%_ '1)))
                      (_%$%target5602656185%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9870798708%_ '0))))
                  (if (gx#stx-null? _%$%tl5602856188%_)
                      (_%__match9899398994%_
                       _%$%e5588756686%_
                       _%$%hd5588856690%_
                       _%$%tl5588956693%_
                       _%$%e5589056696%_
                       _%$%hd5589156700%_
                       _%$%tl5589256703%_
                       _%$%e5589356706%_
                       _%$%hd5589456710%_
                       _%$%tl5589556713%_
                       _%$%e5602356175%_
                       _%$%hd5602456179%_
                       _%$%tl5602556182%_
                       _%__splice9870798708%_
                       _%$%target5602656185%_
                       _%$%tl5602856188%_)
                      (let () (declare (not safe)) (_%$%g5584756056%_)))))
              (let () (declare (not safe)) (_%$%g5584756056%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5584756056%_))))))
                                  (if (gx#stx-null? _%$%tl5590156733%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl5589256703%_)
                                          (let ((_%__splice9869598696%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5589256703%_
                                                  '0)))
                                            (let ((_%$%tl5594156588%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9869598696%_
                                                      '1)))
                                                  (_%$%target5593956585%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9869598696%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5594156588%_)
                                                  (_%__match9886198862%_
                                                   _%$%e5588756686%_
                                                   _%$%hd5588856690%_
                                                   _%$%tl5588956693%_
                                                   _%$%e5589056696%_
                                                   _%$%hd5589156700%_
                                                   _%$%tl5589256703%_
                                                   _%$%e5589356706%_
                                                   _%$%hd5589456710%_
                                                   _%$%tl5589556713%_
                                                   _%$%e5589656716%_
                                                   _%$%hd5589756720%_
                                                   _%$%tl5589856723%_
                                                   _%$%e5589956726%_
                                                   _%$%hd5590056730%_
                                                   _%$%tl5590156733%_
                                                   _%__splice9869598696%_
                                                   _%$%target5593956585%_
                                                   _%$%tl5594156588%_)
                                                  (if (gx#stx-pair?
                                                       _%$%hd5589456710%_)
                                                      (let ((_%$%e5602356175%_
                                                             (gx#syntax-e
                                                              _%$%hd5589456710%_)))
                                                        (let ((_%$%tl5602556182%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5602356175%_)))
                      (_%$%hd5602456179%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5602356175%_))))
                  (let () (declare (not safe)) (_%$%g5584756056%_))))
              (let () (declare (not safe)) (_%$%g5584756056%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5589456710%_)
                                              (let ((_%$%e5602356175%_
                                                     (gx#syntax-e
                                                      _%$%hd5589456710%_)))
                                                (let ((_%$%tl5602556182%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5602356175%_)))
                                                      (_%$%hd5602456179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5602356175%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5584756056%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5584756056%_))))
                                      (if (gx#stx-pair? _%$%hd5589456710%_)
                                          (let ((_%$%e5602356175%_
                                                 (gx#syntax-e
                                                  _%$%hd5589456710%_)))
                                            (let ((_%$%tl5602556182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5602356175%_)))
                                                  (_%$%hd5602456179%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5602356175%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5589256703%_)
                                                  (let ((_%__splice9870798708%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5589256703%_
                                                          '0)))
                                                    (let ((_%$%tl5602856188%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9870798708%_
                                                              '1)))
                                                          (_%$%target5602656185%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9870798708%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5602856188%_)
                                                          (_%__match9899398994%_
                                                           _%$%e5588756686%_
                                                           _%$%hd5588856690%_
                                                           _%$%tl5588956693%_
                                                           _%$%e5589056696%_
                                                           _%$%hd5589156700%_
                                                           _%$%tl5589256703%_
                                                           _%$%e5589356706%_
                                                           _%$%hd5589456710%_
                                                           _%$%tl5589556713%_
                                                           _%$%e5602356175%_
                                                           _%$%hd5602456179%_
                                                           _%$%tl5602556182%_
                                                           _%__splice9870798708%_
                                                           _%$%target5602656185%_
                                                           _%$%tl5602856188%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5584756056%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5584756056%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5584756056%_)))))
                              (if (gx#stx-null? _%$%tl5590156733%_)
                                  (if (gx#stx-pair/null? _%$%tl5589256703%_)
                                      (let ((_%__splice9869598696%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5589256703%_
                                              '0)))
                                        (let ((_%$%tl5594156588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9869598696%_
                                                  '1)))
                                              (_%$%target5593956585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9869598696%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5594156588%_)
                                              (_%__match9886198862%_
                                               _%$%e5588756686%_
                                               _%$%hd5588856690%_
                                               _%$%tl5588956693%_
                                               _%$%e5589056696%_
                                               _%$%hd5589156700%_
                                               _%$%tl5589256703%_
                                               _%$%e5589356706%_
                                               _%$%hd5589456710%_
                                               _%$%tl5589556713%_
                                               _%$%e5589656716%_
                                               _%$%hd5589756720%_
                                               _%$%tl5589856723%_
                                               _%$%e5589956726%_
                                               _%$%hd5590056730%_
                                               _%$%tl5590156733%_
                                               _%__splice9869598696%_
                                               _%$%target5593956585%_
                                               _%$%tl5594156588%_)
                                              (if (gx#stx-pair?
                                                   _%$%hd5589456710%_)
                                                  (let ((_%$%e5602356175%_
                                                         (gx#syntax-e
                                                          _%$%hd5589456710%_)))
                                                    (let ((_%$%tl5602556182%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5602356175%_)))
                                                          (_%$%hd5602456179%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5602356175%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5584756056%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5584756056%_))))))
                                      (if (gx#stx-pair? _%$%hd5589456710%_)
                                          (let ((_%$%e5602356175%_
                                                 (gx#syntax-e
                                                  _%$%hd5589456710%_)))
                                            (let ((_%$%tl5602556182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5602356175%_)))
                                                  (_%$%hd5602456179%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5602356175%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5584756056%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5584756056%_))))
                                  (if (gx#identifier? _%$%hd5589756720%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g105405_|
                                           _%$%hd5589756720%_)
                                          (if (gx#stx-pair? _%$%tl5590156733%_)
                                              (let ((_%$%e5599556305%_
                                                     (gx#syntax-e
                                                      _%$%tl5590156733%_)))
                                                (let ((_%$%tl5599756312%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5599556305%_)))
                                                      (_%$%hd5599656309%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5599556305%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl5599756312%_)
                                                      (let ((_%$%e5599856315%_
                                                             (gx#syntax-e
                                                              _%$%tl5599756312%_)))
                                                        (let ((_%$%tl5600056322%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5599856315%_)))
                      (_%$%hd5599956319%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5599856315%_))))
                  (if (gx#stx-null? _%$%tl5600056322%_)
                      (if (gx#stx-pair/null? _%$%tl5589256703%_)
                          (let ((_%__splice9870398704%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5589256703%_
                                  '0)))
                            (let ((_%$%tl5600356328%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9870398704%_ '1)))
                                  (_%$%target5600156325%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9870398704%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5600356328%_)
                                  (_%__match9896198962%_
                                   _%$%e5588756686%_
                                   _%$%hd5588856690%_
                                   _%$%tl5588956693%_
                                   _%$%e5589056696%_
                                   _%$%hd5589156700%_
                                   _%$%tl5589256703%_
                                   _%$%e5589356706%_
                                   _%$%hd5589456710%_
                                   _%$%tl5589556713%_
                                   _%$%e5589656716%_
                                   _%$%hd5589756720%_
                                   _%$%tl5589856723%_
                                   _%$%e5589956726%_
                                   _%$%hd5590056730%_
                                   _%$%tl5590156733%_
                                   _%$%e5599556305%_
                                   _%$%hd5599656309%_
                                   _%$%tl5599756312%_
                                   _%$%e5599856315%_
                                   _%$%hd5599956319%_
                                   _%$%tl5600056322%_
                                   _%__splice9870398704%_
                                   _%$%target5600156325%_
                                   _%$%tl5600356328%_)
                                  (if (gx#stx-pair? _%$%hd5589456710%_)
                                      (let ((_%$%e5602356175%_
                                             (gx#syntax-e _%$%hd5589456710%_)))
                                        (let ((_%$%tl5602556182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5602356175%_)))
                                              (_%$%hd5602456179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5602356175%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5584756056%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5584756056%_))))))
                          (if (gx#stx-pair? _%$%hd5589456710%_)
                              (let ((_%$%e5602356175%_
                                     (gx#syntax-e _%$%hd5589456710%_)))
                                (let ((_%$%tl5602556182%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5602356175%_)))
                                      (_%$%hd5602456179%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5602356175%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5584756056%_))))
                      (if (gx#stx-pair? _%$%hd5589456710%_)
                          (let ((_%$%e5602356175%_
                                 (gx#syntax-e _%$%hd5589456710%_)))
                            (let ((_%$%tl5602556182%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5602356175%_)))
                                  (_%$%hd5602456179%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5602356175%_))))
                              (if (gx#stx-pair/null? _%$%tl5589256703%_)
                                  (let ((_%__splice9870798708%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5589256703%_
                                          '0)))
                                    (let ((_%$%tl5602856188%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9870798708%_
                                              '1)))
                                          (_%$%target5602656185%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9870798708%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5602856188%_)
                                          (_%__match9899398994%_
                                           _%$%e5588756686%_
                                           _%$%hd5588856690%_
                                           _%$%tl5588956693%_
                                           _%$%e5589056696%_
                                           _%$%hd5589156700%_
                                           _%$%tl5589256703%_
                                           _%$%e5589356706%_
                                           _%$%hd5589456710%_
                                           _%$%tl5589556713%_
                                           _%$%e5602356175%_
                                           _%$%hd5602456179%_
                                           _%$%tl5602556182%_
                                           _%__splice9870798708%_
                                           _%$%target5602656185%_
                                           _%$%tl5602856188%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5584756056%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_)))))
                          (let () (declare (not safe)) (_%$%g5584756056%_))))))
              (if (gx#stx-pair? _%$%hd5589456710%_)
                  (let ((_%$%e5602356175%_ (gx#syntax-e _%$%hd5589456710%_)))
                    (let ((_%$%tl5602556182%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5602356175%_)))
                          (_%$%hd5602456179%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5602356175%_))))
                      (if (gx#stx-pair/null? _%$%tl5589256703%_)
                          (let ((_%__splice9870798708%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5589256703%_
                                  '0)))
                            (let ((_%$%tl5602856188%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9870798708%_ '1)))
                                  (_%$%target5602656185%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9870798708%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5602856188%_)
                                  (_%__match9899398994%_
                                   _%$%e5588756686%_
                                   _%$%hd5588856690%_
                                   _%$%tl5588956693%_
                                   _%$%e5589056696%_
                                   _%$%hd5589156700%_
                                   _%$%tl5589256703%_
                                   _%$%e5589356706%_
                                   _%$%hd5589456710%_
                                   _%$%tl5589556713%_
                                   _%$%e5602356175%_
                                   _%$%hd5602456179%_
                                   _%$%tl5602556182%_
                                   _%__splice9870798708%_
                                   _%$%target5602656185%_
                                   _%$%tl5602856188%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_)))))
                          (let () (declare (not safe)) (_%$%g5584756056%_)))))
                  (let () (declare (not safe)) (_%$%g5584756056%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5589456710%_)
                                                  (let ((_%$%e5602356175%_
                                                         (gx#syntax-e
                                                          _%$%hd5589456710%_)))
                                                    (let ((_%$%tl5602556182%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5602356175%_)))
                                                          (_%$%hd5602456179%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5602356175%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5589256703%_)
                                                          (let ((_%__splice9870798708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5589256703%_
                          '0)))
                    (let ((_%$%tl5602856188%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9870798708%_ '1)))
                          (_%$%target5602656185%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9870798708%_ '0))))
                      (if (gx#stx-null? _%$%tl5602856188%_)
                          (_%__match9899398994%_
                           _%$%e5588756686%_
                           _%$%hd5588856690%_
                           _%$%tl5588956693%_
                           _%$%e5589056696%_
                           _%$%hd5589156700%_
                           _%$%tl5589256703%_
                           _%$%e5589356706%_
                           _%$%hd5589456710%_
                           _%$%tl5589556713%_
                           _%$%e5602356175%_
                           _%$%hd5602456179%_
                           _%$%tl5602556182%_
                           _%__splice9870798708%_
                           _%$%target5602656185%_
                           _%$%tl5602856188%_)
                          (let () (declare (not safe)) (_%$%g5584756056%_)))))
                  (let () (declare (not safe)) (_%$%g5584756056%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5584756056%_))))
                                          (if (gx#stx-pair? _%$%hd5589456710%_)
                                              (let ((_%$%e5602356175%_
                                                     (gx#syntax-e
                                                      _%$%hd5589456710%_)))
                                                (let ((_%$%tl5602556182%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5602356175%_)))
                                                      (_%$%hd5602456179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5602356175%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5589256703%_)
                                                      (let ((_%__splice9870798708%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5589256703%_
                                                              '0)))
                                                        (let ((_%$%tl5602856188%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9870798708%_ '1)))
                      (_%$%target5602656185%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9870798708%_ '0))))
                  (if (gx#stx-null? _%$%tl5602856188%_)
                      (_%__match9899398994%_
                       _%$%e5588756686%_
                       _%$%hd5588856690%_
                       _%$%tl5588956693%_
                       _%$%e5589056696%_
                       _%$%hd5589156700%_
                       _%$%tl5589256703%_
                       _%$%e5589356706%_
                       _%$%hd5589456710%_
                       _%$%tl5589556713%_
                       _%$%e5602356175%_
                       _%$%hd5602456179%_
                       _%$%tl5602556182%_
                       _%__splice9870798708%_
                       _%$%target5602656185%_
                       _%$%tl5602856188%_)
                      (let () (declare (not safe)) (_%$%g5584756056%_)))))
              (let () (declare (not safe)) (_%$%g5584756056%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5584756056%_))))
                                      (if (gx#stx-pair? _%$%hd5589456710%_)
                                          (let ((_%$%e5602356175%_
                                                 (gx#syntax-e
                                                  _%$%hd5589456710%_)))
                                            (let ((_%$%tl5602556182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5602356175%_)))
                                                  (_%$%hd5602456179%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5602356175%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5589256703%_)
                                                  (let ((_%__splice9870798708%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5589256703%_
                                                          '0)))
                                                    (let ((_%$%tl5602856188%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9870798708%_
                                                              '1)))
                                                          (_%$%target5602656185%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9870798708%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5602856188%_)
                                                          (_%__match9899398994%_
                                                           _%$%e5588756686%_
                                                           _%$%hd5588856690%_
                                                           _%$%tl5588956693%_
                                                           _%$%e5589056696%_
                                                           _%$%hd5589156700%_
                                                           _%$%tl5589256703%_
                                                           _%$%e5589356706%_
                                                           _%$%hd5589456710%_
                                                           _%$%tl5589556713%_
                                                           _%$%e5602356175%_
                                                           _%$%hd5602456179%_
                                                           _%$%tl5602556182%_
                                                           _%__splice9870798708%_
                                                           _%$%target5602656185%_
                                                           _%$%tl5602856188%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5584756056%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5584756056%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5584756056%_))))))
                          (if (gx#stx-null? _%$%tl5590156733%_)
                              (if (gx#stx-pair/null? _%$%tl5589256703%_)
                                  (let ((_%__splice9869598696%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5589256703%_
                                          '0)))
                                    (let ((_%$%tl5594156588%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9869598696%_
                                              '1)))
                                          (_%$%target5593956585%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9869598696%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5594156588%_)
                                          (_%__match9886198862%_
                                           _%$%e5588756686%_
                                           _%$%hd5588856690%_
                                           _%$%tl5588956693%_
                                           _%$%e5589056696%_
                                           _%$%hd5589156700%_
                                           _%$%tl5589256703%_
                                           _%$%e5589356706%_
                                           _%$%hd5589456710%_
                                           _%$%tl5589556713%_
                                           _%$%e5589656716%_
                                           _%$%hd5589756720%_
                                           _%$%tl5589856723%_
                                           _%$%e5589956726%_
                                           _%$%hd5590056730%_
                                           _%$%tl5590156733%_
                                           _%__splice9869598696%_
                                           _%$%target5593956585%_
                                           _%$%tl5594156588%_)
                                          (if (gx#stx-pair? _%$%hd5589456710%_)
                                              (let ((_%$%e5602356175%_
                                                     (gx#syntax-e
                                                      _%$%hd5589456710%_)))
                                                (let ((_%$%tl5602556182%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5602356175%_)))
                                                      (_%$%hd5602456179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5602356175%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5584756056%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5584756056%_))))))
                                  (if (gx#stx-pair? _%$%hd5589456710%_)
                                      (let ((_%$%e5602356175%_
                                             (gx#syntax-e _%$%hd5589456710%_)))
                                        (let ((_%$%tl5602556182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5602356175%_)))
                                              (_%$%hd5602456179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5602356175%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5584756056%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5584756056%_))))
                              (if (gx#identifier? _%$%hd5589756720%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g105405_|
                                       _%$%hd5589756720%_)
                                      (if (gx#stx-pair? _%$%tl5590156733%_)
                                          (let ((_%$%e5599556305%_
                                                 (gx#syntax-e
                                                  _%$%tl5590156733%_)))
                                            (let ((_%$%tl5599756312%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5599556305%_)))
                                                  (_%$%hd5599656309%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5599556305%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5599756312%_)
                                                  (let ((_%$%e5599856315%_
                                                         (gx#syntax-e
                                                          _%$%tl5599756312%_)))
                                                    (let ((_%$%tl5600056322%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5599856315%_)))
                                                          (_%$%hd5599956319%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5599856315%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5600056322%_)
                                                          (if (gx#stx-pair/null?
                                                               _%$%tl5589256703%_)
                                                              (let ((_%__splice9870398704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%$%tl5589256703%_
                              '0)))
                        (let ((_%$%tl5600356328%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9870398704%_ '1)))
                              (_%$%target5600156325%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9870398704%_ '0))))
                          (if (gx#stx-null? _%$%tl5600356328%_)
                              (_%__match9896198962%_
                               _%$%e5588756686%_
                               _%$%hd5588856690%_
                               _%$%tl5588956693%_
                               _%$%e5589056696%_
                               _%$%hd5589156700%_
                               _%$%tl5589256703%_
                               _%$%e5589356706%_
                               _%$%hd5589456710%_
                               _%$%tl5589556713%_
                               _%$%e5589656716%_
                               _%$%hd5589756720%_
                               _%$%tl5589856723%_
                               _%$%e5589956726%_
                               _%$%hd5590056730%_
                               _%$%tl5590156733%_
                               _%$%e5599556305%_
                               _%$%hd5599656309%_
                               _%$%tl5599756312%_
                               _%$%e5599856315%_
                               _%$%hd5599956319%_
                               _%$%tl5600056322%_
                               _%__splice9870398704%_
                               _%$%target5600156325%_
                               _%$%tl5600356328%_)
                              (if (gx#stx-pair? _%$%hd5589456710%_)
                                  (let ((_%$%e5602356175%_
                                         (gx#syntax-e _%$%hd5589456710%_)))
                                    (let ((_%$%tl5602556182%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5602356175%_)))
                                          (_%$%hd5602456179%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5602356175%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5584756056%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_))))))
                      (if (gx#stx-pair? _%$%hd5589456710%_)
                          (let ((_%$%e5602356175%_
                                 (gx#syntax-e _%$%hd5589456710%_)))
                            (let ((_%$%tl5602556182%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5602356175%_)))
                                  (_%$%hd5602456179%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5602356175%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5584756056%_))))
                          (let () (declare (not safe)) (_%$%g5584756056%_))))
                  (if (gx#stx-pair? _%$%hd5589456710%_)
                      (let ((_%$%e5602356175%_
                             (gx#syntax-e _%$%hd5589456710%_)))
                        (let ((_%$%tl5602556182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5602356175%_)))
                              (_%$%hd5602456179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5602356175%_))))
                          (if (gx#stx-pair/null? _%$%tl5589256703%_)
                              (let ((_%__splice9870798708%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5589256703%_
                                      '0)))
                                (let ((_%$%tl5602856188%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9870798708%_
                                          '1)))
                                      (_%$%target5602656185%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9870798708%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5602856188%_)
                                      (_%__match9899398994%_
                                       _%$%e5588756686%_
                                       _%$%hd5588856690%_
                                       _%$%tl5588956693%_
                                       _%$%e5589056696%_
                                       _%$%hd5589156700%_
                                       _%$%tl5589256703%_
                                       _%$%e5589356706%_
                                       _%$%hd5589456710%_
                                       _%$%tl5589556713%_
                                       _%$%e5602356175%_
                                       _%$%hd5602456179%_
                                       _%$%tl5602556182%_
                                       _%__splice9870798708%_
                                       _%$%target5602656185%_
                                       _%$%tl5602856188%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5584756056%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5584756056%_)))))
                      (let () (declare (not safe)) (_%$%g5584756056%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5589456710%_)
                                                      (let ((_%$%e5602356175%_
                                                             (gx#syntax-e
                                                              _%$%hd5589456710%_)))
                                                        (let ((_%$%tl5602556182%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5602356175%_)))
                      (_%$%hd5602456179%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5602356175%_))))
                  (if (gx#stx-pair/null? _%$%tl5589256703%_)
                      (let ((_%__splice9870798708%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5589256703%_
                              '0)))
                        (let ((_%$%tl5602856188%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9870798708%_ '1)))
                              (_%$%target5602656185%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9870798708%_ '0))))
                          (if (gx#stx-null? _%$%tl5602856188%_)
                              (_%__match9899398994%_
                               _%$%e5588756686%_
                               _%$%hd5588856690%_
                               _%$%tl5588956693%_
                               _%$%e5589056696%_
                               _%$%hd5589156700%_
                               _%$%tl5589256703%_
                               _%$%e5589356706%_
                               _%$%hd5589456710%_
                               _%$%tl5589556713%_
                               _%$%e5602356175%_
                               _%$%hd5602456179%_
                               _%$%tl5602556182%_
                               _%__splice9870798708%_
                               _%$%target5602656185%_
                               _%$%tl5602856188%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5584756056%_)))))
                      (let () (declare (not safe)) (_%$%g5584756056%_)))))
              (let () (declare (not safe)) (_%$%g5584756056%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5589456710%_)
                                              (let ((_%$%e5602356175%_
                                                     (gx#syntax-e
                                                      _%$%hd5589456710%_)))
                                                (let ((_%$%tl5602556182%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5602356175%_)))
                                                      (_%$%hd5602456179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5602356175%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5589256703%_)
                                                      (let ((_%__splice9870798708%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5589256703%_
                                                              '0)))
                                                        (let ((_%$%tl5602856188%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9870798708%_ '1)))
                      (_%$%target5602656185%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9870798708%_ '0))))
                  (if (gx#stx-null? _%$%tl5602856188%_)
                      (_%__match9899398994%_
                       _%$%e5588756686%_
                       _%$%hd5588856690%_
                       _%$%tl5588956693%_
                       _%$%e5589056696%_
                       _%$%hd5589156700%_
                       _%$%tl5589256703%_
                       _%$%e5589356706%_
                       _%$%hd5589456710%_
                       _%$%tl5589556713%_
                       _%$%e5602356175%_
                       _%$%hd5602456179%_
                       _%$%tl5602556182%_
                       _%__splice9870798708%_
                       _%$%target5602656185%_
                       _%$%tl5602856188%_)
                      (let () (declare (not safe)) (_%$%g5584756056%_)))))
              (let () (declare (not safe)) (_%$%g5584756056%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5584756056%_))))
                                      (if (gx#stx-pair? _%$%hd5589456710%_)
                                          (let ((_%$%e5602356175%_
                                                 (gx#syntax-e
                                                  _%$%hd5589456710%_)))
                                            (let ((_%$%tl5602556182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5602356175%_)))
                                                  (_%$%hd5602456179%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5602356175%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5589256703%_)
                                                  (let ((_%__splice9870798708%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5589256703%_
                                                          '0)))
                                                    (let ((_%$%tl5602856188%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9870798708%_
                                                              '1)))
                                                          (_%$%target5602656185%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9870798708%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5602856188%_)
                                                          (_%__match9899398994%_
                                                           _%$%e5588756686%_
                                                           _%$%hd5588856690%_
                                                           _%$%tl5588956693%_
                                                           _%$%e5589056696%_
                                                           _%$%hd5589156700%_
                                                           _%$%tl5589256703%_
                                                           _%$%e5589356706%_
                                                           _%$%hd5589456710%_
                                                           _%$%tl5589556713%_
                                                           _%$%e5602356175%_
                                                           _%$%hd5602456179%_
                                                           _%$%tl5602556182%_
                                                           _%__splice9870798708%_
                                                           _%$%target5602656185%_
                                                           _%$%tl5602856188%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5584756056%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5584756056%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5584756056%_))))
                                  (if (gx#stx-pair? _%$%hd5589456710%_)
                                      (let ((_%$%e5602356175%_
                                             (gx#syntax-e _%$%hd5589456710%_)))
                                        (let ((_%$%tl5602556182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5602356175%_)))
                                              (_%$%hd5602456179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5602356175%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl5589256703%_)
                                              (let ((_%__splice9870798708%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5589256703%_
                                                      '0)))
                                                (let ((_%$%tl5602856188%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9870798708%_
                                                          '1)))
                                                      (_%$%target5602656185%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9870798708%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5602856188%_)
                                                      (_%__match9899398994%_
                                                       _%$%e5588756686%_
                                                       _%$%hd5588856690%_
                                                       _%$%tl5588956693%_
                                                       _%$%e5589056696%_
                                                       _%$%hd5589156700%_
                                                       _%$%tl5589256703%_
                                                       _%$%e5589356706%_
                                                       _%$%hd5589456710%_
                                                       _%$%tl5589556713%_
                                                       _%$%e5602356175%_
                                                       _%$%hd5602456179%_
                                                       _%$%tl5602556182%_
                                                       _%__splice9870798708%_
                                                       _%$%target5602656185%_
                                                       _%$%tl5602856188%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5584756056%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5584756056%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5584756056%_))))))))
                   (_%__match9875998760%_
                    (lambda (_%$%e5585456860%_
                             _%$%hd5585556864%_
                             _%$%tl5585656867%_
                             _%$%e5585756870%_
                             _%$%hd5585856874%_
                             _%$%tl5585956877%_
                             _%$%e5586056880%_
                             _%$%hd5586156884%_
                             _%$%tl5586256887%_
                             _%$%e5586356890%_
                             _%$%hd5586456894%_
                             _%$%tl5586556897%_
                             _%$%e5586656900%_
                             _%$%hd5586756904%_
                             _%$%tl5586856907%_
                             _%$%e5586956910%_
                             _%$%hd5587056914%_
                             _%$%tl5587156917%_
                             _%__splice9868798688%_
                             _%$%target5587256920%_
                             _%$%tl5587456923%_)
                      (letrec ((_%$%loop5587556926%_
                                (lambda (_%$%hd5587356930%_
                                         _%$%body5587956933%_)
                                  (if (gx#stx-pair? _%$%hd5587356930%_)
                                      (let ((_%$%e5587656935%_
                                             (gx#syntax-e _%$%hd5587356930%_)))
                                        (let ((_%$%lp-tl5587856942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5587656935%_)))
                                              (_%$%lp-hd5587756939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5587656935%_))))
                                          (_%$%loop5587556926%_
                                           _%$%lp-tl5587856942%_
                                           (cons _%$%lp-hd5587756939%_
                                                 _%$%body5587956933%_))))
                                      (let ((_%$%body5588056945%_
                                             (reverse _%$%body5587956933%_)))
                                        (let ((_%$%g5584956948%_
                                               _%$%body5588056945%_)
                                              (_%$%g5585056950%_
                                               _%$%hd5587056914%_)
                                              (_%$%g5585156951%_
                                               _%$%hd5586756904%_)
                                              (_%$%g5585256952%_
                                               _%$%hd5586456894%_)
                                              (_%$%g5585356953%_
                                               _%$%hd5586156884%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5585356953%_)
                                                   (gx#identifier?
                                                    _%$%g5585156951%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5585156951%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5585156951%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5585156951%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5585156951%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%$%g5585156951%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9868598686%_
                                               _%$%g5584956948%_
                                               _%$%g5585056950%_
                                               _%$%g5585156951%_
                                               _%$%g5585256952%_
                                               _%$%g5585356953%_)
                                              (_%__match9878998790%_
                                               _%$%e5585456860%_
                                               _%$%hd5585556864%_
                                               _%$%tl5585656867%_
                                               _%$%e5585756870%_
                                               _%$%hd5585856874%_
                                               _%$%tl5585956877%_
                                               _%$%e5586056880%_
                                               _%$%hd5586156884%_
                                               _%$%tl5586256887%_
                                               _%$%e5586356890%_
                                               _%$%hd5586456894%_
                                               _%$%tl5586556897%_
                                               _%$%e5586656900%_
                                               _%$%hd5586756904%_
                                               _%$%tl5586856907%_))))))))
                        (_%$%loop5587556926%_ _%$%target5587256920%_ '())))))
              (if (gx#stx-pair? _%__stx9868298683%_)
                  (let ((_%$%e5585456860%_ (gx#syntax-e _%__stx9868298683%_)))
                    (let ((_%$%tl5585656867%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5585456860%_)))
                          (_%$%hd5585556864%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5585456860%_))))
                      (if (gx#stx-pair? _%$%tl5585656867%_)
                          (let ((_%$%e5585756870%_
                                 (gx#syntax-e _%$%tl5585656867%_)))
                            (let ((_%$%tl5585956877%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5585756870%_)))
                                  (_%$%hd5585856874%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5585756870%_))))
                              (if (gx#stx-pair? _%$%hd5585856874%_)
                                  (let ((_%$%e5586056880%_
                                         (gx#syntax-e _%$%hd5585856874%_)))
                                    (let ((_%$%tl5586256887%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5586056880%_)))
                                          (_%$%hd5586156884%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5586056880%_))))
                                      (if (gx#stx-pair? _%$%tl5586256887%_)
                                          (let ((_%$%e5586356890%_
                                                 (gx#syntax-e
                                                  _%$%tl5586256887%_)))
                                            (let ((_%$%tl5586556897%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5586356890%_)))
                                                  (_%$%hd5586456894%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5586356890%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5586556897%_)
                                                  (let ((_%$%e5586656900%_
                                                         (gx#syntax-e
                                                          _%$%tl5586556897%_)))
                                                    (let ((_%$%tl5586856907%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5586656900%_)))
                                                          (_%$%hd5586756904%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5586656900%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5586856907%_)
                                                          (let ((_%$%e5586956910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5586856907%_)))
                    (let ((_%$%tl5587156917%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5586956910%_)))
                          (_%$%hd5587056914%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5586956910%_))))
                      (if (gx#stx-null? _%$%tl5587156917%_)
                          (if (gx#stx-pair/null? _%$%tl5585956877%_)
                              (let ((_%__splice9868798688%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5585956877%_
                                      '0)))
                                (let ((_%$%tl5587456923%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9868798688%_
                                          '1)))
                                      (_%$%target5587256920%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9868798688%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5587456923%_)
                                      (_%__match9875998760%_
                                       _%$%e5585456860%_
                                       _%$%hd5585556864%_
                                       _%$%tl5585656867%_
                                       _%$%e5585756870%_
                                       _%$%hd5585856874%_
                                       _%$%tl5585956877%_
                                       _%$%e5586056880%_
                                       _%$%hd5586156884%_
                                       _%$%tl5586256887%_
                                       _%$%e5586356890%_
                                       _%$%hd5586456894%_
                                       _%$%tl5586556897%_
                                       _%$%e5586656900%_
                                       _%$%hd5586756904%_
                                       _%$%tl5586856907%_
                                       _%$%e5586956910%_
                                       _%$%hd5587056914%_
                                       _%$%tl5587156917%_
                                       _%__splice9868798688%_
                                       _%$%target5587256920%_
                                       _%$%tl5587456923%_)
                                      (if (gx#stx-pair? _%$%hd5586156884%_)
                                          (let ((_%$%e5602356175%_
                                                 (gx#syntax-e
                                                  _%$%hd5586156884%_)))
                                            (let ((_%$%tl5602556182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5602356175%_)))
                                                  (_%$%hd5602456179%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5602356175%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5584756056%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5584756056%_))))))
                              (if (gx#stx-pair? _%$%hd5586156884%_)
                                  (let ((_%$%e5602356175%_
                                         (gx#syntax-e _%$%hd5586156884%_)))
                                    (let ((_%$%tl5602556182%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5602356175%_)))
                                          (_%$%hd5602456179%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5602356175%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5584756056%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_))))
                          (if (gx#identifier? _%$%hd5586756904%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g105406_|
                                   _%$%hd5586756904%_)
                                  (if (gx#stx-pair? _%$%tl5587156917%_)
                                      (let ((_%$%e5590556746%_
                                             (gx#syntax-e _%$%tl5587156917%_)))
                                        (let ((_%$%tl5590756753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5590556746%_)))
                                              (_%$%hd5590656750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5590556746%_))))
                                          (if (gx#stx-pair? _%$%tl5590756753%_)
                                              (let ((_%$%e5590856756%_
                                                     (gx#syntax-e
                                                      _%$%tl5590756753%_)))
                                                (let ((_%$%tl5591056763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5590856756%_)))
                                                      (_%$%hd5590956760%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5590856756%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5591056763%_)
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5585956877%_)
                                                          (let ((_%__splice9869198692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5585956877%_
                          '0)))
                    (let ((_%$%tl5591356769%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9869198692%_ '1)))
                          (_%$%target5591156766%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9869198692%_ '0))))
                      (if (gx#stx-null? _%$%tl5591356769%_)
                          (_%__match9882198822%_
                           _%$%e5585456860%_
                           _%$%hd5585556864%_
                           _%$%tl5585656867%_
                           _%$%e5585756870%_
                           _%$%hd5585856874%_
                           _%$%tl5585956877%_
                           _%$%e5586056880%_
                           _%$%hd5586156884%_
                           _%$%tl5586256887%_
                           _%$%e5586356890%_
                           _%$%hd5586456894%_
                           _%$%tl5586556897%_
                           _%$%e5586656900%_
                           _%$%hd5586756904%_
                           _%$%tl5586856907%_
                           _%$%e5586956910%_
                           _%$%hd5587056914%_
                           _%$%tl5587156917%_
                           _%$%e5590556746%_
                           _%$%hd5590656750%_
                           _%$%tl5590756753%_
                           _%$%e5590856756%_
                           _%$%hd5590956760%_
                           _%$%tl5591056763%_
                           _%__splice9869198692%_
                           _%$%target5591156766%_
                           _%$%tl5591356769%_)
                          (if (gx#stx-pair? _%$%hd5586156884%_)
                              (let ((_%$%e5602356175%_
                                     (gx#syntax-e _%$%hd5586156884%_)))
                                (let ((_%$%tl5602556182%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5602356175%_)))
                                      (_%$%hd5602456179%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5602356175%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5584756056%_))))))
                  (if (gx#stx-pair? _%$%hd5586156884%_)
                      (let ((_%$%e5602356175%_
                             (gx#syntax-e _%$%hd5586156884%_)))
                        (let ((_%$%tl5602556182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5602356175%_)))
                              (_%$%hd5602456179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5602356175%_))))
                          (let () (declare (not safe)) (_%$%g5584756056%_))))
                      (let () (declare (not safe)) (_%$%g5584756056%_))))
              (if (gx#stx-pair? _%$%hd5586156884%_)
                  (let ((_%$%e5602356175%_ (gx#syntax-e _%$%hd5586156884%_)))
                    (let ((_%$%tl5602556182%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5602356175%_)))
                          (_%$%hd5602456179%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5602356175%_))))
                      (if (gx#stx-pair/null? _%$%tl5585956877%_)
                          (let ((_%__splice9870798708%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5585956877%_
                                  '0)))
                            (let ((_%$%tl5602856188%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9870798708%_ '1)))
                                  (_%$%target5602656185%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9870798708%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5602856188%_)
                                  (_%__match9899398994%_
                                   _%$%e5585456860%_
                                   _%$%hd5585556864%_
                                   _%$%tl5585656867%_
                                   _%$%e5585756870%_
                                   _%$%hd5585856874%_
                                   _%$%tl5585956877%_
                                   _%$%e5586056880%_
                                   _%$%hd5586156884%_
                                   _%$%tl5586256887%_
                                   _%$%e5602356175%_
                                   _%$%hd5602456179%_
                                   _%$%tl5602556182%_
                                   _%__splice9870798708%_
                                   _%$%target5602656185%_
                                   _%$%tl5602856188%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_)))))
                          (let () (declare (not safe)) (_%$%g5584756056%_)))))
                  (let () (declare (not safe)) (_%$%g5584756056%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%$%hd5586456894%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g105405_|
                                                       _%$%hd5586456894%_)
                                                      (if (gx#stx-null?
                                                           _%$%tl5590756753%_)
                                                          (if (gx#stx-pair/null?
                                                               _%$%tl5585956877%_)
                                                              (let ((_%__splice9870398704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%$%tl5585956877%_
                              '0)))
                        (let ((_%$%tl5600356328%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9870398704%_ '1)))
                              (_%$%target5600156325%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9870398704%_ '0))))
                          (if (gx#stx-null? _%$%tl5600356328%_)
                              (_%__match9896198962%_
                               _%$%e5585456860%_
                               _%$%hd5585556864%_
                               _%$%tl5585656867%_
                               _%$%e5585756870%_
                               _%$%hd5585856874%_
                               _%$%tl5585956877%_
                               _%$%e5586056880%_
                               _%$%hd5586156884%_
                               _%$%tl5586256887%_
                               _%$%e5586356890%_
                               _%$%hd5586456894%_
                               _%$%tl5586556897%_
                               _%$%e5586656900%_
                               _%$%hd5586756904%_
                               _%$%tl5586856907%_
                               _%$%e5586956910%_
                               _%$%hd5587056914%_
                               _%$%tl5587156917%_
                               _%$%e5590556746%_
                               _%$%hd5590656750%_
                               _%$%tl5590756753%_
                               _%__splice9870398704%_
                               _%$%target5600156325%_
                               _%$%tl5600356328%_)
                              (if (gx#stx-pair? _%$%hd5586156884%_)
                                  (let ((_%$%e5602356175%_
                                         (gx#syntax-e _%$%hd5586156884%_)))
                                    (let ((_%$%tl5602556182%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5602356175%_)))
                                          (_%$%hd5602456179%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5602356175%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5584756056%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_))))))
                      (if (gx#stx-pair? _%$%hd5586156884%_)
                          (let ((_%$%e5602356175%_
                                 (gx#syntax-e _%$%hd5586156884%_)))
                            (let ((_%$%tl5602556182%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5602356175%_)))
                                  (_%$%hd5602456179%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5602356175%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5584756056%_))))
                          (let () (declare (not safe)) (_%$%g5584756056%_))))
                  (if (gx#stx-pair? _%$%hd5586156884%_)
                      (let ((_%$%e5602356175%_
                             (gx#syntax-e _%$%hd5586156884%_)))
                        (let ((_%$%tl5602556182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5602356175%_)))
                              (_%$%hd5602456179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5602356175%_))))
                          (if (gx#stx-pair/null? _%$%tl5585956877%_)
                              (let ((_%__splice9870798708%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5585956877%_
                                      '0)))
                                (let ((_%$%tl5602856188%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9870798708%_
                                          '1)))
                                      (_%$%target5602656185%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9870798708%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5602856188%_)
                                      (_%__match9899398994%_
                                       _%$%e5585456860%_
                                       _%$%hd5585556864%_
                                       _%$%tl5585656867%_
                                       _%$%e5585756870%_
                                       _%$%hd5585856874%_
                                       _%$%tl5585956877%_
                                       _%$%e5586056880%_
                                       _%$%hd5586156884%_
                                       _%$%tl5586256887%_
                                       _%$%e5602356175%_
                                       _%$%hd5602456179%_
                                       _%$%tl5602556182%_
                                       _%__splice9870798708%_
                                       _%$%target5602656185%_
                                       _%$%tl5602856188%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5584756056%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5584756056%_)))))
                      (let () (declare (not safe)) (_%$%g5584756056%_))))
              (if (gx#stx-pair? _%$%hd5586156884%_)
                  (let ((_%$%e5602356175%_ (gx#syntax-e _%$%hd5586156884%_)))
                    (let ((_%$%tl5602556182%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5602356175%_)))
                          (_%$%hd5602456179%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5602356175%_))))
                      (if (gx#stx-pair/null? _%$%tl5585956877%_)
                          (let ((_%__splice9870798708%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5585956877%_
                                  '0)))
                            (let ((_%$%tl5602856188%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9870798708%_ '1)))
                                  (_%$%target5602656185%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9870798708%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5602856188%_)
                                  (_%__match9899398994%_
                                   _%$%e5585456860%_
                                   _%$%hd5585556864%_
                                   _%$%tl5585656867%_
                                   _%$%e5585756870%_
                                   _%$%hd5585856874%_
                                   _%$%tl5585956877%_
                                   _%$%e5586056880%_
                                   _%$%hd5586156884%_
                                   _%$%tl5586256887%_
                                   _%$%e5602356175%_
                                   _%$%hd5602456179%_
                                   _%$%tl5602556182%_
                                   _%__splice9870798708%_
                                   _%$%target5602656185%_
                                   _%$%tl5602856188%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_)))))
                          (let () (declare (not safe)) (_%$%g5584756056%_)))))
                  (let () (declare (not safe)) (_%$%g5584756056%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5586156884%_)
                                                      (let ((_%$%e5602356175%_
                                                             (gx#syntax-e
                                                              _%$%hd5586156884%_)))
                                                        (let ((_%$%tl5602556182%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5602356175%_)))
                      (_%$%hd5602456179%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5602356175%_))))
                  (if (gx#stx-pair/null? _%$%tl5585956877%_)
                      (let ((_%__splice9870798708%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5585956877%_
                              '0)))
                        (let ((_%$%tl5602856188%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9870798708%_ '1)))
                              (_%$%target5602656185%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9870798708%_ '0))))
                          (if (gx#stx-null? _%$%tl5602856188%_)
                              (_%__match9899398994%_
                               _%$%e5585456860%_
                               _%$%hd5585556864%_
                               _%$%tl5585656867%_
                               _%$%e5585756870%_
                               _%$%hd5585856874%_
                               _%$%tl5585956877%_
                               _%$%e5586056880%_
                               _%$%hd5586156884%_
                               _%$%tl5586256887%_
                               _%$%e5602356175%_
                               _%$%hd5602456179%_
                               _%$%tl5602556182%_
                               _%__splice9870798708%_
                               _%$%target5602656185%_
                               _%$%tl5602856188%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5584756056%_)))))
                      (let () (declare (not safe)) (_%$%g5584756056%_)))))
              (let () (declare (not safe)) (_%$%g5584756056%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%$%hd5586156884%_)
                                          (let ((_%$%e5602356175%_
                                                 (gx#syntax-e
                                                  _%$%hd5586156884%_)))
                                            (let ((_%$%tl5602556182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5602356175%_)))
                                                  (_%$%hd5602456179%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5602356175%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5585956877%_)
                                                  (let ((_%__splice9870798708%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5585956877%_
                                                          '0)))
                                                    (let ((_%$%tl5602856188%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9870798708%_
                                                              '1)))
                                                          (_%$%target5602656185%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9870798708%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5602856188%_)
                                                          (_%__match9899398994%_
                                                           _%$%e5585456860%_
                                                           _%$%hd5585556864%_
                                                           _%$%tl5585656867%_
                                                           _%$%e5585756870%_
                                                           _%$%hd5585856874%_
                                                           _%$%tl5585956877%_
                                                           _%$%e5586056880%_
                                                           _%$%hd5586156884%_
                                                           _%$%tl5586256887%_
                                                           _%$%e5602356175%_
                                                           _%$%hd5602456179%_
                                                           _%$%tl5602556182%_
                                                           _%__splice9870798708%_
                                                           _%$%target5602656185%_
                                                           _%$%tl5602856188%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5584756056%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5584756056%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5584756056%_))))
                                  (if (gx#identifier? _%$%hd5586456894%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g105405_|
                                           _%$%hd5586456894%_)
                                          (if (gx#stx-pair? _%$%tl5587156917%_)
                                              (let ((_%$%e5599856315%_
                                                     (gx#syntax-e
                                                      _%$%tl5587156917%_)))
                                                (let ((_%$%tl5600056322%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5599856315%_)))
                                                      (_%$%hd5599956319%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5599856315%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5600056322%_)
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5585956877%_)
                                                          (let ((_%__splice9870398704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5585956877%_
                          '0)))
                    (let ((_%$%tl5600356328%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9870398704%_ '1)))
                          (_%$%target5600156325%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9870398704%_ '0))))
                      (if (gx#stx-null? _%$%tl5600356328%_)
                          (_%__match9896198962%_
                           _%$%e5585456860%_
                           _%$%hd5585556864%_
                           _%$%tl5585656867%_
                           _%$%e5585756870%_
                           _%$%hd5585856874%_
                           _%$%tl5585956877%_
                           _%$%e5586056880%_
                           _%$%hd5586156884%_
                           _%$%tl5586256887%_
                           _%$%e5586356890%_
                           _%$%hd5586456894%_
                           _%$%tl5586556897%_
                           _%$%e5586656900%_
                           _%$%hd5586756904%_
                           _%$%tl5586856907%_
                           _%$%e5586956910%_
                           _%$%hd5587056914%_
                           _%$%tl5587156917%_
                           _%$%e5599856315%_
                           _%$%hd5599956319%_
                           _%$%tl5600056322%_
                           _%__splice9870398704%_
                           _%$%target5600156325%_
                           _%$%tl5600356328%_)
                          (if (gx#stx-pair? _%$%hd5586156884%_)
                              (let ((_%$%e5602356175%_
                                     (gx#syntax-e _%$%hd5586156884%_)))
                                (let ((_%$%tl5602556182%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5602356175%_)))
                                      (_%$%hd5602456179%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5602356175%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5584756056%_))))))
                  (if (gx#stx-pair? _%$%hd5586156884%_)
                      (let ((_%$%e5602356175%_
                             (gx#syntax-e _%$%hd5586156884%_)))
                        (let ((_%$%tl5602556182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5602356175%_)))
                              (_%$%hd5602456179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5602356175%_))))
                          (let () (declare (not safe)) (_%$%g5584756056%_))))
                      (let () (declare (not safe)) (_%$%g5584756056%_))))
              (if (gx#stx-pair? _%$%hd5586156884%_)
                  (let ((_%$%e5602356175%_ (gx#syntax-e _%$%hd5586156884%_)))
                    (let ((_%$%tl5602556182%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5602356175%_)))
                          (_%$%hd5602456179%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5602356175%_))))
                      (if (gx#stx-pair/null? _%$%tl5585956877%_)
                          (let ((_%__splice9870798708%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5585956877%_
                                  '0)))
                            (let ((_%$%tl5602856188%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9870798708%_ '1)))
                                  (_%$%target5602656185%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9870798708%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5602856188%_)
                                  (_%__match9899398994%_
                                   _%$%e5585456860%_
                                   _%$%hd5585556864%_
                                   _%$%tl5585656867%_
                                   _%$%e5585756870%_
                                   _%$%hd5585856874%_
                                   _%$%tl5585956877%_
                                   _%$%e5586056880%_
                                   _%$%hd5586156884%_
                                   _%$%tl5586256887%_
                                   _%$%e5602356175%_
                                   _%$%hd5602456179%_
                                   _%$%tl5602556182%_
                                   _%__splice9870798708%_
                                   _%$%target5602656185%_
                                   _%$%tl5602856188%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_)))))
                          (let () (declare (not safe)) (_%$%g5584756056%_)))))
                  (let () (declare (not safe)) (_%$%g5584756056%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5586156884%_)
                                                  (let ((_%$%e5602356175%_
                                                         (gx#syntax-e
                                                          _%$%hd5586156884%_)))
                                                    (let ((_%$%tl5602556182%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5602356175%_)))
                                                          (_%$%hd5602456179%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5602356175%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5585956877%_)
                                                          (let ((_%__splice9870798708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5585956877%_
                          '0)))
                    (let ((_%$%tl5602856188%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9870798708%_ '1)))
                          (_%$%target5602656185%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9870798708%_ '0))))
                      (if (gx#stx-null? _%$%tl5602856188%_)
                          (_%__match9899398994%_
                           _%$%e5585456860%_
                           _%$%hd5585556864%_
                           _%$%tl5585656867%_
                           _%$%e5585756870%_
                           _%$%hd5585856874%_
                           _%$%tl5585956877%_
                           _%$%e5586056880%_
                           _%$%hd5586156884%_
                           _%$%tl5586256887%_
                           _%$%e5602356175%_
                           _%$%hd5602456179%_
                           _%$%tl5602556182%_
                           _%__splice9870798708%_
                           _%$%target5602656185%_
                           _%$%tl5602856188%_)
                          (let () (declare (not safe)) (_%$%g5584756056%_)))))
                  (let () (declare (not safe)) (_%$%g5584756056%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5584756056%_))))
                                          (if (gx#stx-pair? _%$%hd5586156884%_)
                                              (let ((_%$%e5602356175%_
                                                     (gx#syntax-e
                                                      _%$%hd5586156884%_)))
                                                (let ((_%$%tl5602556182%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5602356175%_)))
                                                      (_%$%hd5602456179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5602356175%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5585956877%_)
                                                      (let ((_%__splice9870798708%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5585956877%_
                                                              '0)))
                                                        (let ((_%$%tl5602856188%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9870798708%_ '1)))
                      (_%$%target5602656185%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9870798708%_ '0))))
                  (if (gx#stx-null? _%$%tl5602856188%_)
                      (_%__match9899398994%_
                       _%$%e5585456860%_
                       _%$%hd5585556864%_
                       _%$%tl5585656867%_
                       _%$%e5585756870%_
                       _%$%hd5585856874%_
                       _%$%tl5585956877%_
                       _%$%e5586056880%_
                       _%$%hd5586156884%_
                       _%$%tl5586256887%_
                       _%$%e5602356175%_
                       _%$%hd5602456179%_
                       _%$%tl5602556182%_
                       _%__splice9870798708%_
                       _%$%target5602656185%_
                       _%$%tl5602856188%_)
                      (let () (declare (not safe)) (_%$%g5584756056%_)))))
              (let () (declare (not safe)) (_%$%g5584756056%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5584756056%_))))
                                      (if (gx#stx-pair? _%$%hd5586156884%_)
                                          (let ((_%$%e5602356175%_
                                                 (gx#syntax-e
                                                  _%$%hd5586156884%_)))
                                            (let ((_%$%tl5602556182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5602356175%_)))
                                                  (_%$%hd5602456179%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5602356175%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5585956877%_)
                                                  (let ((_%__splice9870798708%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5585956877%_
                                                          '0)))
                                                    (let ((_%$%tl5602856188%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9870798708%_
                                                              '1)))
                                                          (_%$%target5602656185%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9870798708%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5602856188%_)
                                                          (_%__match9899398994%_
                                                           _%$%e5585456860%_
                                                           _%$%hd5585556864%_
                                                           _%$%tl5585656867%_
                                                           _%$%e5585756870%_
                                                           _%$%hd5585856874%_
                                                           _%$%tl5585956877%_
                                                           _%$%e5586056880%_
                                                           _%$%hd5586156884%_
                                                           _%$%tl5586256887%_
                                                           _%$%e5602356175%_
                                                           _%$%hd5602456179%_
                                                           _%$%tl5602556182%_
                                                           _%__splice9870798708%_
                                                           _%$%target5602656185%_
                                                           _%$%tl5602856188%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5584756056%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5584756056%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5584756056%_)))))
                              (if (gx#identifier? _%$%hd5586456894%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g105405_|
                                       _%$%hd5586456894%_)
                                      (if (gx#stx-pair? _%$%tl5587156917%_)
                                          (let ((_%$%e5599856315%_
                                                 (gx#syntax-e
                                                  _%$%tl5587156917%_)))
                                            (let ((_%$%tl5600056322%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5599856315%_)))
                                                  (_%$%hd5599956319%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5599856315%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl5600056322%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5585956877%_)
                                                      (let ((_%__splice9870398704%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5585956877%_
                                                              '0)))
                                                        (let ((_%$%tl5600356328%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9870398704%_ '1)))
                      (_%$%target5600156325%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9870398704%_ '0))))
                  (if (gx#stx-null? _%$%tl5600356328%_)
                      (_%__match9896198962%_
                       _%$%e5585456860%_
                       _%$%hd5585556864%_
                       _%$%tl5585656867%_
                       _%$%e5585756870%_
                       _%$%hd5585856874%_
                       _%$%tl5585956877%_
                       _%$%e5586056880%_
                       _%$%hd5586156884%_
                       _%$%tl5586256887%_
                       _%$%e5586356890%_
                       _%$%hd5586456894%_
                       _%$%tl5586556897%_
                       _%$%e5586656900%_
                       _%$%hd5586756904%_
                       _%$%tl5586856907%_
                       _%$%e5586956910%_
                       _%$%hd5587056914%_
                       _%$%tl5587156917%_
                       _%$%e5599856315%_
                       _%$%hd5599956319%_
                       _%$%tl5600056322%_
                       _%__splice9870398704%_
                       _%$%target5600156325%_
                       _%$%tl5600356328%_)
                      (if (gx#stx-pair? _%$%hd5586156884%_)
                          (let ((_%$%e5602356175%_
                                 (gx#syntax-e _%$%hd5586156884%_)))
                            (let ((_%$%tl5602556182%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5602356175%_)))
                                  (_%$%hd5602456179%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5602356175%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5584756056%_))))
                          (let () (declare (not safe)) (_%$%g5584756056%_))))))
              (if (gx#stx-pair? _%$%hd5586156884%_)
                  (let ((_%$%e5602356175%_ (gx#syntax-e _%$%hd5586156884%_)))
                    (let ((_%$%tl5602556182%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5602356175%_)))
                          (_%$%hd5602456179%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5602356175%_))))
                      (let () (declare (not safe)) (_%$%g5584756056%_))))
                  (let () (declare (not safe)) (_%$%g5584756056%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5586156884%_)
                                                      (let ((_%$%e5602356175%_
                                                             (gx#syntax-e
                                                              _%$%hd5586156884%_)))
                                                        (let ((_%$%tl5602556182%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5602356175%_)))
                      (_%$%hd5602456179%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5602356175%_))))
                  (if (gx#stx-pair/null? _%$%tl5585956877%_)
                      (let ((_%__splice9870798708%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5585956877%_
                              '0)))
                        (let ((_%$%tl5602856188%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9870798708%_ '1)))
                              (_%$%target5602656185%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9870798708%_ '0))))
                          (if (gx#stx-null? _%$%tl5602856188%_)
                              (_%__match9899398994%_
                               _%$%e5585456860%_
                               _%$%hd5585556864%_
                               _%$%tl5585656867%_
                               _%$%e5585756870%_
                               _%$%hd5585856874%_
                               _%$%tl5585956877%_
                               _%$%e5586056880%_
                               _%$%hd5586156884%_
                               _%$%tl5586256887%_
                               _%$%e5602356175%_
                               _%$%hd5602456179%_
                               _%$%tl5602556182%_
                               _%__splice9870798708%_
                               _%$%target5602656185%_
                               _%$%tl5602856188%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5584756056%_)))))
                      (let () (declare (not safe)) (_%$%g5584756056%_)))))
              (let () (declare (not safe)) (_%$%g5584756056%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5586156884%_)
                                              (let ((_%$%e5602356175%_
                                                     (gx#syntax-e
                                                      _%$%hd5586156884%_)))
                                                (let ((_%$%tl5602556182%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5602356175%_)))
                                                      (_%$%hd5602456179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5602356175%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5585956877%_)
                                                      (let ((_%__splice9870798708%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5585956877%_
                                                              '0)))
                                                        (let ((_%$%tl5602856188%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9870798708%_ '1)))
                      (_%$%target5602656185%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9870798708%_ '0))))
                  (if (gx#stx-null? _%$%tl5602856188%_)
                      (_%__match9899398994%_
                       _%$%e5585456860%_
                       _%$%hd5585556864%_
                       _%$%tl5585656867%_
                       _%$%e5585756870%_
                       _%$%hd5585856874%_
                       _%$%tl5585956877%_
                       _%$%e5586056880%_
                       _%$%hd5586156884%_
                       _%$%tl5586256887%_
                       _%$%e5602356175%_
                       _%$%hd5602456179%_
                       _%$%tl5602556182%_
                       _%__splice9870798708%_
                       _%$%target5602656185%_
                       _%$%tl5602856188%_)
                      (let () (declare (not safe)) (_%$%g5584756056%_)))))
              (let () (declare (not safe)) (_%$%g5584756056%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5584756056%_))))
                                      (if (gx#stx-pair? _%$%hd5586156884%_)
                                          (let ((_%$%e5602356175%_
                                                 (gx#syntax-e
                                                  _%$%hd5586156884%_)))
                                            (let ((_%$%tl5602556182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5602356175%_)))
                                                  (_%$%hd5602456179%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5602356175%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5585956877%_)
                                                  (let ((_%__splice9870798708%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5585956877%_
                                                          '0)))
                                                    (let ((_%$%tl5602856188%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9870798708%_
                                                              '1)))
                                                          (_%$%target5602656185%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9870798708%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5602856188%_)
                                                          (_%__match9899398994%_
                                                           _%$%e5585456860%_
                                                           _%$%hd5585556864%_
                                                           _%$%tl5585656867%_
                                                           _%$%e5585756870%_
                                                           _%$%hd5585856874%_
                                                           _%$%tl5585956877%_
                                                           _%$%e5586056880%_
                                                           _%$%hd5586156884%_
                                                           _%$%tl5586256887%_
                                                           _%$%e5602356175%_
                                                           _%$%hd5602456179%_
                                                           _%$%tl5602556182%_
                                                           _%__splice9870798708%_
                                                           _%$%target5602656185%_
                                                           _%$%tl5602856188%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5584756056%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5584756056%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5584756056%_))))
                                  (if (gx#stx-pair? _%$%hd5586156884%_)
                                      (let ((_%$%e5602356175%_
                                             (gx#syntax-e _%$%hd5586156884%_)))
                                        (let ((_%$%tl5602556182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5602356175%_)))
                                              (_%$%hd5602456179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5602356175%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl5585956877%_)
                                              (let ((_%__splice9870798708%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5585956877%_
                                                      '0)))
                                                (let ((_%$%tl5602856188%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9870798708%_
                                                          '1)))
                                                      (_%$%target5602656185%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9870798708%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5602856188%_)
                                                      (_%__match9899398994%_
                                                       _%$%e5585456860%_
                                                       _%$%hd5585556864%_
                                                       _%$%tl5585656867%_
                                                       _%$%e5585756870%_
                                                       _%$%hd5585856874%_
                                                       _%$%tl5585956877%_
                                                       _%$%e5586056880%_
                                                       _%$%hd5586156884%_
                                                       _%$%tl5586256887%_
                                                       _%$%e5602356175%_
                                                       _%$%hd5602456179%_
                                                       _%$%tl5602556182%_
                                                       _%__splice9870798708%_
                                                       _%$%target5602656185%_
                                                       _%$%tl5602856188%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5584756056%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5584756056%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5584756056%_))))))))
                  (if (gx#stx-null? _%$%tl5586856907%_)
                      (if (gx#stx-pair/null? _%$%tl5585956877%_)
                          (let ((_%__splice9869598696%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5585956877%_
                                  '0)))
                            (let ((_%$%tl5594156588%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9869598696%_ '1)))
                                  (_%$%target5593956585%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9869598696%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5594156588%_)
                                  (_%__match9886198862%_
                                   _%$%e5585456860%_
                                   _%$%hd5585556864%_
                                   _%$%tl5585656867%_
                                   _%$%e5585756870%_
                                   _%$%hd5585856874%_
                                   _%$%tl5585956877%_
                                   _%$%e5586056880%_
                                   _%$%hd5586156884%_
                                   _%$%tl5586256887%_
                                   _%$%e5586356890%_
                                   _%$%hd5586456894%_
                                   _%$%tl5586556897%_
                                   _%$%e5586656900%_
                                   _%$%hd5586756904%_
                                   _%$%tl5586856907%_
                                   _%__splice9869598696%_
                                   _%$%target5593956585%_
                                   _%$%tl5594156588%_)
                                  (if (gx#stx-pair? _%$%hd5586156884%_)
                                      (let ((_%$%e5602356175%_
                                             (gx#syntax-e _%$%hd5586156884%_)))
                                        (let ((_%$%tl5602556182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5602356175%_)))
                                              (_%$%hd5602456179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5602356175%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5584756056%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5584756056%_))))))
                          (if (gx#stx-pair? _%$%hd5586156884%_)
                              (let ((_%$%e5602356175%_
                                     (gx#syntax-e _%$%hd5586156884%_)))
                                (let ((_%$%tl5602556182%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5602356175%_)))
                                      (_%$%hd5602456179%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5602356175%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5584756056%_))))
                      (if (gx#stx-pair? _%$%hd5586156884%_)
                          (let ((_%$%e5602356175%_
                                 (gx#syntax-e _%$%hd5586156884%_)))
                            (let ((_%$%tl5602556182%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5602356175%_)))
                                  (_%$%hd5602456179%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5602356175%_))))
                              (if (gx#stx-pair/null? _%$%tl5585956877%_)
                                  (let ((_%__splice9870798708%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5585956877%_
                                          '0)))
                                    (let ((_%$%tl5602856188%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9870798708%_
                                              '1)))
                                          (_%$%target5602656185%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9870798708%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5602856188%_)
                                          (_%__match9899398994%_
                                           _%$%e5585456860%_
                                           _%$%hd5585556864%_
                                           _%$%tl5585656867%_
                                           _%$%e5585756870%_
                                           _%$%hd5585856874%_
                                           _%$%tl5585956877%_
                                           _%$%e5586056880%_
                                           _%$%hd5586156884%_
                                           _%$%tl5586256887%_
                                           _%$%e5602356175%_
                                           _%$%hd5602456179%_
                                           _%$%tl5602556182%_
                                           _%__splice9870798708%_
                                           _%$%target5602656185%_
                                           _%$%tl5602856188%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5584756056%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5584756056%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g5584756056%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5586156884%_)
                                                      (let ((_%$%e5602356175%_
                                                             (gx#syntax-e
                                                              _%$%hd5586156884%_)))
                                                        (let ((_%$%tl5602556182%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5602356175%_)))
                      (_%$%hd5602456179%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5602356175%_))))
                  (if (gx#stx-pair/null? _%$%tl5585956877%_)
                      (let ((_%__splice9870798708%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5585956877%_
                              '0)))
                        (let ((_%$%tl5602856188%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9870798708%_ '1)))
                              (_%$%target5602656185%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9870798708%_ '0))))
                          (if (gx#stx-null? _%$%tl5602856188%_)
                              (_%__match9899398994%_
                               _%$%e5585456860%_
                               _%$%hd5585556864%_
                               _%$%tl5585656867%_
                               _%$%e5585756870%_
                               _%$%hd5585856874%_
                               _%$%tl5585956877%_
                               _%$%e5586056880%_
                               _%$%hd5586156884%_
                               _%$%tl5586256887%_
                               _%$%e5602356175%_
                               _%$%hd5602456179%_
                               _%$%tl5602556182%_
                               _%__splice9870798708%_
                               _%$%target5602656185%_
                               _%$%tl5602856188%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5584756056%_)))))
                      (let () (declare (not safe)) (_%$%g5584756056%_)))))
              (let () (declare (not safe)) (_%$%g5584756056%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5586156884%_)
                                              (let ((_%$%e5602356175%_
                                                     (gx#syntax-e
                                                      _%$%hd5586156884%_)))
                                                (let ((_%$%tl5602556182%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5602356175%_)))
                                                      (_%$%hd5602456179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5602356175%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5585956877%_)
                                                      (let ((_%__splice9870798708%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5585956877%_
                                                              '0)))
                                                        (let ((_%$%tl5602856188%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9870798708%_ '1)))
                      (_%$%target5602656185%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9870798708%_ '0))))
                  (if (gx#stx-null? _%$%tl5602856188%_)
                      (_%__match9899398994%_
                       _%$%e5585456860%_
                       _%$%hd5585556864%_
                       _%$%tl5585656867%_
                       _%$%e5585756870%_
                       _%$%hd5585856874%_
                       _%$%tl5585956877%_
                       _%$%e5586056880%_
                       _%$%hd5586156884%_
                       _%$%tl5586256887%_
                       _%$%e5602356175%_
                       _%$%hd5602456179%_
                       _%$%tl5602556182%_
                       _%__splice9870798708%_
                       _%$%target5602656185%_
                       _%$%tl5602856188%_)
                      (let () (declare (not safe)) (_%$%g5584756056%_)))))
              (let () (declare (not safe)) (_%$%g5584756056%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5584756056%_))))))
                                  (if (gx#stx-null? _%$%hd5585856874%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl5585956877%_)
                                          (let ((_%__splice9871198712%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5585956877%_
                                                  '0)))
                                            (let ((_%$%tl5604456086%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9871198712%_
                                                      '1)))
                                                  (_%$%target5604256083%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9871198712%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5604456086%_)
                                                  (_%__match9901599016%_
                                                   _%$%e5585456860%_
                                                   _%$%hd5585556864%_
                                                   _%$%tl5585656867%_
                                                   _%$%e5585756870%_
                                                   _%$%hd5585856874%_
                                                   _%$%tl5585956877%_
                                                   _%__splice9871198712%_
                                                   _%$%target5604256083%_
                                                   _%$%tl5604456086%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5584756056%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5584756056%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5584756056%_))))))
                          (let () (declare (not safe)) (_%$%g5584756056%_)))))
                  (let () (declare (not safe)) (_%$%g5584756056%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx57016%_)
        (let* ((_%$%g5702057054%_
                (lambda (_%$%g5702157050%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5702157050%_)))
               (_%$%g5701957175%_
                (lambda (_%$%g5702157058%_)
                  (if (gx#stx-pair? _%$%g5702157058%_)
                      (let ((_%$%e5702557061%_
                             (gx#syntax-e _%$%g5702157058%_)))
                        (let ((_%$%hd5702657065%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5702557061%_)))
                              (_%$%tl5702757068%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5702557061%_))))
                          (if (gx#stx-pair? _%$%tl5702757068%_)
                              (let ((_%$%e5702857071%_
                                     (gx#syntax-e _%$%tl5702757068%_)))
                                (let ((_%$%hd5702957075%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5702857071%_)))
                                      (_%$%tl5703057078%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5702857071%_))))
                                  (if (gx#stx-pair? _%$%hd5702957075%_)
                                      (let ((_%$%e5703157081%_
                                             (gx#syntax-e _%$%hd5702957075%_)))
                                        (let ((_%$%hd5703257085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5703157081%_)))
                                              (_%$%tl5703357088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5703157081%_))))
                                          (if (gx#stx-pair? _%$%tl5703357088%_)
                                              (let ((_%$%e5703457091%_
                                                     (gx#syntax-e
                                                      _%$%tl5703357088%_)))
                                                (let ((_%$%hd5703557095%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5703457091%_)))
                                                      (_%$%tl5703657098%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5703457091%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd5703557095%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g105407_|
                                                           _%$%hd5703557095%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl5703657098%_)
                                                              (let ((_%$%e5703757101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl5703657098%_)))
                        (let ((_%$%hd5703857105%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5703757101%_)))
                              (_%$%tl5703957108%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5703757101%_))))
                          (if (gx#stx-null? _%$%tl5703957108%_)
                              (if (gx#stx-pair/null? _%$%tl5703057078%_)
                                  (let ((_g105408_
                                         (gx#syntax-split-splice
                                          _%$%tl5703057078%_
                                          '0)))
                                    (begin
                                      (let ((_g105409_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g105408_)
                                                   (##values-length _g105408_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g105409_ 2)))
                                            (error "Context expects 2 values"
                                                   _g105409_)))
                                      (let ((_%$%target5704057111%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g105408_ 0)))
                                            (_%$%tl5704257114%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g105408_ 1))))
                                        (if (gx#stx-null? _%$%tl5704257114%_)
                                            (letrec ((_%$%loop5704357117%_
                                                      (lambda (_%$%hd5704157121%_
                                                               _%$%body5704757124%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd5704157121%_)
                                                            (let ((_%$%e5704457126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd5704157121%_)))
                      (let ((_%$%lp-hd5704557130%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5704457126%_)))
                            (_%$%lp-tl5704657133%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5704457126%_))))
                        (_%$%loop5704357117%_
                         _%$%lp-tl5704657133%_
                         (cons _%$%lp-hd5704557130%_ _%$%body5704757124%_))))
                    (let ((_%$%body5704857136%_
                           (reverse _%$%body5704757124%_)))
                      (if (gx#identifier? _%$%hd5703257085%_)
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons _%$%hd5703857105%_
                                            (cons _%$%hd5703257085%_ '()))
                                      (cons (cons (gx#datum->syntax '#f 'let)
                                                  (cons '()
                                                        (foldr (lambda (_%$%g5716657169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g5716757172%_)
                         (cons _%$%g5716657169%_ _%$%g5716757172%_))
                       '()
                       _%$%body5704857136%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'contract-violation!)
                                                        (cons _%$%hd5703257085%_
                                                              (cons _%$%hd5703857105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd5703257085%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                          (_%$%g5702057054%_ _%$%g5702157058%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop5704357117%_
                                               _%$%target5704057111%_
                                               '()))
                                            (_%$%g5702057054%_
                                             _%$%g5702157058%_)))))
                                  (_%$%g5702057054%_ _%$%g5702157058%_))
                              (_%$%g5702057054%_ _%$%g5702157058%_))))
                      (_%$%g5702057054%_ _%$%g5702157058%_))
                  (_%$%g5702057054%_ _%$%g5702157058%_))
              (_%$%g5702057054%_ _%$%g5702157058%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5702057054%_
                                               _%$%g5702157058%_))))
                                      (_%$%g5702057054%_ _%$%g5702157058%_))))
                              (_%$%g5702057054%_ _%$%g5702157058%_))))
                      (_%$%g5702057054%_ _%$%g5702157058%_)))))
          (_%$%g5701957175%_ _%$stx57016%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass57933%_ _%slot57935%_)
        (let ((_%$e57937%_
               (let ((__obj105204 _%klass57933%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj105204
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj105204 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj105204
                      'slot-types)))))
          (if _%$e57937%_ (agetq _%slot57935%_ _%$e57937%_) '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass57914%_ _%slot57916%_)
        (let ((_%$e57918%_
               (let ((__obj105205 _%klass57914%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj105205
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj105205 '21 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj105205
                      'slot-defaults)))))
          (if _%$e57918%_
              (let ((_%$e57925%_ (agetq _%slot57916%_ _%$e57918%_)))
                (if _%$e57925%_ (gx#syntax-local-introduce _%$e57925%_) '#f))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass57895%_ _%slot57897%_)
        (let ((_%$e57899%_
               (let ((__obj105206 _%klass57895%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj105206
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj105206 '22 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj105206
                      'slot-contracts)))))
          (if _%$e57899%_
              (let ((_%$e57906%_ (agetq _%slot57897%_ _%$e57899%_)))
                (if _%$e57906%_ (gx#syntax-local-introduce _%$e57906%_) '#f))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass57664%_ _%slot57666%_)
        (let ((_%$%contract5766757669%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass57664%_
                _%slot57666%_)))
          (if _%$%contract5766757669%_
              (let* ((_%contract57672%_ _%$%contract5766757669%_)
                     (_%__stx9901899019%_ _%contract57672%_)
                     (_%$%g5767757714%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9901899019%_))))
                (let ((_%__kont9902199022%_
                       (lambda (_%$%g5767957864%_ _%$%g5768057866%_)
                         (not (gx#free-identifier=?
                               _%$%g5768057866%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9902399024%_
                       (lambda (_%$%g5768757804%_
                                _%$%g5768857806%_
                                _%$%g5768957807%_)
                         (not (gx#free-identifier=?
                               _%$%g5768857806%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9902599026%_ (lambda (_%$%g5770257741%_) '#f)))
                  (let* ((_%__match9907199072%_
                          (lambda (_%$%e5769057764%_
                                   _%$%hd5769157768%_
                                   _%$%tl5769257771%_
                                   _%$%e5769357774%_
                                   _%$%hd5769457778%_
                                   _%$%tl5769557781%_
                                   _%$%e5769657784%_
                                   _%$%hd5769757788%_
                                   _%$%tl5769857791%_
                                   _%$%e5769957794%_
                                   _%$%hd5770057798%_
                                   _%$%tl5770157801%_)
                            (let ((_%$%g5768757804%_ _%$%hd5770057798%_)
                                  (_%$%g5768857806%_ _%$%hd5769757788%_)
                                  (_%$%g5768957807%_ _%$%hd5769457778%_))
                              (if (and (gx#identifier? _%$%g5768857806%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5768857806%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5768857806%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5768857806%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5768857806%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9902399024%_
                                   _%$%g5768757804%_
                                   _%$%g5768857806%_
                                   _%$%g5768957807%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5767757714%_))))))
                         (_%__match9904199042%_
                          (lambda (_%$%e5768157844%_
                                   _%$%hd5768257848%_
                                   _%$%tl5768357851%_
                                   _%$%e5768457854%_
                                   _%$%hd5768557858%_
                                   _%$%tl5768657861%_)
                            (let ((_%$%g5767957864%_ _%$%hd5768557858%_)
                                  (_%$%g5768057866%_ _%$%hd5768257848%_))
                              (if (and (gx#identifier? _%$%g5768057866%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5768057866%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5768057866%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5768057866%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5768057866%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9902199022%_
                                   _%$%g5767957864%_
                                   _%$%g5768057866%_)
                                  (if (gx#identifier? _%$%hd5768257848%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g105410_|
                                           _%$%hd5768257848%_)
                                          (_%__kont9902599026%_
                                           _%$%hd5768557858%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5767757714%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5767757714%_))))))))
                    (if (gx#stx-pair? _%__stx9901899019%_)
                        (let ((_%$%e5768157844%_
                               (gx#syntax-e _%__stx9901899019%_)))
                          (let ((_%$%tl5768357851%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5768157844%_)))
                                (_%$%hd5768257848%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5768157844%_))))
                            (if (gx#stx-pair? _%$%tl5768357851%_)
                                (let ((_%$%e5768457854%_
                                       (gx#syntax-e _%$%tl5768357851%_)))
                                  (let ((_%$%tl5768657861%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5768457854%_)))
                                        (_%$%hd5768557858%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5768457854%_))))
                                    (if (gx#stx-null? _%$%tl5768657861%_)
                                        (_%__match9904199042%_
                                         _%$%e5768157844%_
                                         _%$%hd5768257848%_
                                         _%$%tl5768357851%_
                                         _%$%e5768457854%_
                                         _%$%hd5768557858%_
                                         _%$%tl5768657861%_)
                                        (if (gx#identifier? _%$%hd5768257848%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g105410_|
                                                 _%$%hd5768257848%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl5768657861%_)
                                                    (let ((_%$%e5769657784%_
                                                           (gx#syntax-e
                                                            _%$%tl5768657861%_)))
                                                      (let ((_%$%tl5769857791%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5769657784%_)))
                    (_%$%hd5769757788%_
                     (let () (declare (not safe)) (##car _%$%e5769657784%_))))
                (if (gx#stx-pair? _%$%tl5769857791%_)
                    (let ((_%$%e5769957794%_ (gx#syntax-e _%$%tl5769857791%_)))
                      (let ((_%$%tl5770157801%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5769957794%_)))
                            (_%$%hd5770057798%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5769957794%_))))
                        (if (gx#stx-null? _%$%tl5770157801%_)
                            (_%__match9907199072%_
                             _%$%e5768157844%_
                             _%$%hd5768257848%_
                             _%$%tl5768357851%_
                             _%$%e5768457854%_
                             _%$%hd5768557858%_
                             _%$%tl5768657861%_
                             _%$%e5769657784%_
                             _%$%hd5769757788%_
                             _%$%tl5769857791%_
                             _%$%e5769957794%_
                             _%$%hd5770057798%_
                             _%$%tl5770157801%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5767757714%_)))))
                    (let () (declare (not safe)) (_%$%g5767757714%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5767757714%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5767757714%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5767757714%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5767757714%_)))))
                        (let () (declare (not safe)) (_%$%g5767757714%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass57433%_ _%slot57435%_)
        (let ((_%$%contract5743657438%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass57433%_
                _%slot57435%_)))
          (if _%$%contract5743657438%_
              (let* ((_%contract57441%_ _%$%contract5743657438%_)
                     (_%__stx9909299093%_ _%contract57441%_)
                     (_%$%g5744657483%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9909299093%_))))
                (let ((_%__kont9909599096%_
                       (lambda (_%$%g5744857633%_ _%$%g5744957635%_)
                         (not (gx#free-identifier=?
                               _%$%g5744957635%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9909799098%_
                       (lambda (_%$%g5745657573%_
                                _%$%g5745757575%_
                                _%$%g5745857576%_)
                         '#t))
                      (_%__kont9909999100%_ (lambda (_%$%g5747157510%_) '#t)))
                  (let* ((_%__match9914599146%_
                          (lambda (_%$%e5745957533%_
                                   _%$%hd5746057537%_
                                   _%$%tl5746157540%_
                                   _%$%e5746257543%_
                                   _%$%hd5746357547%_
                                   _%$%tl5746457550%_
                                   _%$%e5746557553%_
                                   _%$%hd5746657557%_
                                   _%$%tl5746757560%_
                                   _%$%e5746857563%_
                                   _%$%hd5746957567%_
                                   _%$%tl5747057570%_)
                            (let ((_%$%g5745657573%_ _%$%hd5746957567%_)
                                  (_%$%g5745757575%_ _%$%hd5746657557%_)
                                  (_%$%g5745857576%_ _%$%hd5746357547%_))
                              (if (and (gx#identifier? _%$%g5745757575%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5745757575%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5745757575%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5745757575%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5745757575%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9909799098%_
                                   _%$%g5745657573%_
                                   _%$%g5745757575%_
                                   _%$%g5745857576%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5744657483%_))))))
                         (_%__match9911599116%_
                          (lambda (_%$%e5745057613%_
                                   _%$%hd5745157617%_
                                   _%$%tl5745257620%_
                                   _%$%e5745357623%_
                                   _%$%hd5745457627%_
                                   _%$%tl5745557630%_)
                            (let ((_%$%g5744857633%_ _%$%hd5745457627%_)
                                  (_%$%g5744957635%_ _%$%hd5745157617%_))
                              (if (and (gx#identifier? _%$%g5744957635%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5744957635%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5744957635%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5744957635%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5744957635%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9909599096%_
                                   _%$%g5744857633%_
                                   _%$%g5744957635%_)
                                  (if (gx#identifier? _%$%hd5745157617%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g105411_|
                                           _%$%hd5745157617%_)
                                          (_%__kont9909999100%_
                                           _%$%hd5745457627%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5744657483%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5744657483%_))))))))
                    (if (gx#stx-pair? _%__stx9909299093%_)
                        (let ((_%$%e5745057613%_
                               (gx#syntax-e _%__stx9909299093%_)))
                          (let ((_%$%tl5745257620%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5745057613%_)))
                                (_%$%hd5745157617%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5745057613%_))))
                            (if (gx#stx-pair? _%$%tl5745257620%_)
                                (let ((_%$%e5745357623%_
                                       (gx#syntax-e _%$%tl5745257620%_)))
                                  (let ((_%$%tl5745557630%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5745357623%_)))
                                        (_%$%hd5745457627%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5745357623%_))))
                                    (if (gx#stx-null? _%$%tl5745557630%_)
                                        (_%__match9911599116%_
                                         _%$%e5745057613%_
                                         _%$%hd5745157617%_
                                         _%$%tl5745257620%_
                                         _%$%e5745357623%_
                                         _%$%hd5745457627%_
                                         _%$%tl5745557630%_)
                                        (if (gx#identifier? _%$%hd5745157617%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g105411_|
                                                 _%$%hd5745157617%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl5745557630%_)
                                                    (let ((_%$%e5746557553%_
                                                           (gx#syntax-e
                                                            _%$%tl5745557630%_)))
                                                      (let ((_%$%tl5746757560%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5746557553%_)))
                    (_%$%hd5746657557%_
                     (let () (declare (not safe)) (##car _%$%e5746557553%_))))
                (if (gx#stx-pair? _%$%tl5746757560%_)
                    (let ((_%$%e5746857563%_ (gx#syntax-e _%$%tl5746757560%_)))
                      (let ((_%$%tl5747057570%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5746857563%_)))
                            (_%$%hd5746957567%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5746857563%_))))
                        (if (gx#stx-null? _%$%tl5747057570%_)
                            (_%__match9914599146%_
                             _%$%e5745057613%_
                             _%$%hd5745157617%_
                             _%$%tl5745257620%_
                             _%$%e5745357623%_
                             _%$%hd5745457627%_
                             _%$%tl5745557630%_
                             _%$%e5746557553%_
                             _%$%hd5746657557%_
                             _%$%tl5746757560%_
                             _%$%e5746857563%_
                             _%$%hd5746957567%_
                             _%$%tl5747057570%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5744657483%_)))))
                    (let () (declare (not safe)) (_%$%g5744657483%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5744657483%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5744657483%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5744657483%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5744657483%_)))))
                        (let () (declare (not safe)) (_%$%g5744657483%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id57420%_)
        (if (gx#identifier? _%id57420%_)
            (let* ((_%str57423%_ (symbol->string (gx#stx-e _%id57420%_)))
                   (_%$%index5742557427%_ (string-index _%str57423%_ '#\.)))
              (if _%$%index5742557427%_
                  (let ((_%index57430%_ _%$%index5742557427%_))
                    (if (let () (declare (not safe)) (##fx> _%index57430%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str57423%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx57413%_ _%id57415%_)
        (let ((_%parts57417%_
               (string-split (symbol->string (gx#stx-e _%id57415%_)) '#\.)))
          (if (find string-empty? _%parts57417%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx57413%_
               _%id57415%_)
              (cons (gx#stx-identifier _%id57415%_ (car _%parts57417%_))
                    (map string->symbol (cdr _%parts57417%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx57299%_ _%klass-or-id57301%_ _%slot57302%_)
        (let* ((_%klass57304%_
                (if (gx#identifier? _%klass-or-id57301%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx57299%_
                       _%klass-or-id57301%_))
                    _%klass-or-id57301%_))
               (_%$e57309%_
                (agetq _%slot57302%_
                       (let ((__obj105207 _%klass57304%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj105207
                                'gerbil/core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj105207
                                '18
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/mop~MOP-2#class-type-info::t
                              __obj105207
                              'unchecked-accessors))))))
          (if _%$e57309%_
              _%$e57309%_
              (let ((_%$e57317%_
                     (agetq _%slot57302%_
                            (let ((_%$e57313%_
                                   (let ((__obj105208 _%klass57304%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj105208
                                            'gerbil/core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj105208
                                            '23
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj105208
                                          'slot-offsets)))))
                              (if _%$e57313%_ _%$e57313%_ '())))))
                (if _%$e57317%_
                    (let* ((_%$%g5732457343%_
                            (lambda (_%$%g5732557339%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5732557339%_)))
                           (_%$%g5732357407%_
                            (lambda (_%$%g5732557347%_)
                              (if (gx#stx-pair? _%$%g5732557347%_)
                                  (let ((_%$%e5732957350%_
                                         (gx#syntax-e _%$%g5732557347%_)))
                                    (let ((_%$%hd5733057354%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5732957350%_)))
                                          (_%$%tl5733157357%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5732957350%_))))
                                      (if (gx#stx-pair? _%$%tl5733157357%_)
                                          (let ((_%$%e5733257360%_
                                                 (gx#syntax-e
                                                  _%$%tl5733157357%_)))
                                            (let ((_%$%hd5733357364%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5733257360%_)))
                                                  (_%$%tl5733457367%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5733257360%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5733457367%_)
                                                  (let ((_%$%e5733557370%_
                                                         (gx#syntax-e
                                                          _%$%tl5733457367%_)))
                                                    (let ((_%$%hd5733657374%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5733557370%_)))
                                                          (_%$%tl5733757377%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5733557370%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5733757377%_)
                                                          (gx#stx-wrap-source
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##unchecked-structure-ref)
                                           (cons (gx#datum->syntax '#f '$obj)
                                                 (cons _%$%hd5733657374%_
                                                       (cons _%$%hd5733057354%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%$%hd5733357364%_ '()))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (gx#stx-source _%stx57299%_))
                  (_%$%g5732457343%_ _%$%g5732557347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5732457343%_
                                                   _%$%g5732557347%_))))
                                          (_%$%g5732457343%_
                                           _%$%g5732557347%_))))
                                  (_%$%g5732457343%_ _%$%g5732557347%_)))))
                      (_%$%g5732357407%_
                       (list (let ((__obj105209 _%klass57304%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj105209
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj105209
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj105209
                                    'type-descriptor)))
                             _%slot57302%_
                             _%$e57317%_)))
                    (gx#raise-syntax-error
                     '#f
                     '"no accessor for slot"
                     _%stx57299%_
                     _%klass57304%_
                     _%slot57302%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx57180%_
               _%klass-or-id57182%_
               _%slot57183%_
               _%checked?57184%_)
        (let* ((_%klass57186%_
                (if (gx#identifier? _%klass-or-id57182%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx57180%_
                       _%klass-or-id57182%_))
                    _%klass-or-id57182%_))
               (_%mutators57189%_
                (if _%checked?57184%_
                    (let ((__obj105210 _%klass57186%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj105210
                             'gerbil/core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj105210
                             '17
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj105210
                           'mutators)))
                    (let ((__obj105211 _%klass57186%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj105211
                             'gerbil/core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj105211
                             '19
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj105211
                           'unchecked-mutators)))))
               (_%$e57194%_ (agetq _%slot57183%_ _%mutators57189%_)))
          (if _%$e57194%_
              _%$e57194%_
              (let ((_%$e57202%_
                     (agetq _%slot57183%_
                            (let ((_%$e57198%_
                                   (let ((__obj105212 _%klass57186%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj105212
                                            'gerbil/core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj105212
                                            '23
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj105212
                                          'slot-offsets)))))
                              (if _%$e57198%_ _%$e57198%_ '())))))
                (if _%$e57202%_
                    (let* ((_%$%g5720957228%_
                            (lambda (_%$%g5721057224%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5721057224%_)))
                           (_%$%g5720857293%_
                            (lambda (_%$%g5721057232%_)
                              (if (gx#stx-pair? _%$%g5721057232%_)
                                  (let ((_%$%e5721457235%_
                                         (gx#syntax-e _%$%g5721057232%_)))
                                    (let ((_%$%hd5721557239%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5721457235%_)))
                                          (_%$%tl5721657242%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5721457235%_))))
                                      (if (gx#stx-pair? _%$%tl5721657242%_)
                                          (let ((_%$%e5721757245%_
                                                 (gx#syntax-e
                                                  _%$%tl5721657242%_)))
                                            (let ((_%$%hd5721857249%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5721757245%_)))
                                                  (_%$%tl5721957252%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5721757245%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5721957252%_)
                                                  (let ((_%$%e5722057255%_
                                                         (gx#syntax-e
                                                          _%$%tl5721957252%_)))
                                                    (let ((_%$%hd5722157259%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5722057255%_)))
                                                          (_%$%tl5722257262%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5722057255%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5722257262%_)
                                                          (gx#stx-wrap-source
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj)
                                     (cons (gx#datum->syntax '#f '$val) '()))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##unchecked-structure-set!)
                                           (cons (gx#datum->syntax '#f '$obj)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons _%$%hd5722157259%_
                                                             (cons _%$%hd5721557239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%$%hd5721857249%_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (gx#stx-source _%stx57180%_))
                  (_%$%g5720957228%_ _%$%g5721057232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5720957228%_
                                                   _%$%g5721057232%_))))
                                          (_%$%g5720957228%_
                                           _%$%g5721057232%_))))
                                  (_%$%g5720957228%_ _%$%g5721057232%_)))))
                      (_%$%g5720857293%_
                       (list (let ((__obj105213 _%klass57186%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj105213
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj105213
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj105213
                                    'type-descriptor)))
                             _%slot57183%_
                             _%$e57202%_)))
                    (gx#raise-syntax-error
                     '#f
                     '"no mutator for slot"
                     _%stx57180%_
                     _%klass57186%_
                     _%slot57183%_)))))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx57946%_)
        (letrec ((_%expand-body57949%_
                  (lambda (_%klass58852%_
                           _%var58854%_
                           _%Type58855%_
                           _%body58856%_
                           _%checked?58857%_)
                    (let* ((_%$%g5885958903%_
                            (lambda (_%$%g5886058899%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5886058899%_)))
                           (_%$%g5885859058%_
                            (lambda (_%$%g5886058907%_)
                              (if (gx#stx-pair? _%$%g5886058907%_)
                                  (let ((_%$%e5886858910%_
                                         (gx#syntax-e _%$%g5886058907%_)))
                                    (let ((_%$%hd5886958914%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5886858910%_)))
                                          (_%$%tl5887058917%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5886858910%_))))
                                      (if (gx#stx-pair? _%$%tl5887058917%_)
                                          (let ((_%$%e5887158920%_
                                                 (gx#syntax-e
                                                  _%$%tl5887058917%_)))
                                            (let ((_%$%hd5887258924%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5887158920%_)))
                                                  (_%$%tl5887358927%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5887158920%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5887358927%_)
                                                  (let ((_%$%e5887458930%_
                                                         (gx#syntax-e
                                                          _%$%tl5887358927%_)))
                                                    (let ((_%$%hd5887558934%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5887458930%_)))
                                                          (_%$%tl5887658937%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5887458930%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5887658937%_)
                                                          (let ((_%$%e5887758940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5887658937%_)))
                    (let ((_%$%hd5887858944%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5887758940%_)))
                          (_%$%tl5887958947%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5887758940%_))))
                      (if (gx#stx-pair? _%$%tl5887958947%_)
                          (let ((_%$%e5888058950%_
                                 (gx#syntax-e _%$%tl5887958947%_)))
                            (let ((_%$%hd5888158954%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5888058950%_)))
                                  (_%$%tl5888258957%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5888058950%_))))
                              (if (gx#stx-pair? _%$%tl5888258957%_)
                                  (let ((_%$%e5888358960%_
                                         (gx#syntax-e _%$%tl5888258957%_)))
                                    (let ((_%$%hd5888458964%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5888358960%_)))
                                          (_%$%tl5888558967%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5888358960%_))))
                                      (if (gx#stx-pair? _%$%tl5888558967%_)
                                          (let ((_%$%e5888658970%_
                                                 (gx#syntax-e
                                                  _%$%tl5888558967%_)))
                                            (let ((_%$%hd5888758974%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5888658970%_)))
                                                  (_%$%tl5888858977%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5888658970%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd5888758974%_)
                                                  (let ((_g105412_
                                                         (gx#syntax-split-splice
                                                          _%$%hd5888758974%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g105413_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g105412_)
                           (##values-length _g105412_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g105413_ 2)))
                    (error "Context expects 2 values" _g105413_)))
              (let ((_%$%target5888958980%_
                     (let () (declare (not safe)) (##values-ref _g105412_ 0)))
                    (_%$%tl5889158983%_
                     (let () (declare (not safe)) (##values-ref _g105412_ 1))))
                (if (gx#stx-null? _%$%tl5889158983%_)
                    (letrec ((_%$%loop5889258986%_
                              (lambda (_%$%hd5889058990%_ _%$%body5889658993%_)
                                (if (gx#stx-pair? _%$%hd5889058990%_)
                                    (let ((_%$%e5889358995%_
                                           (gx#syntax-e _%$%hd5889058990%_)))
                                      (let ((_%$%lp-hd5889458999%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5889358995%_)))
                                            (_%$%lp-tl5889559002%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5889358995%_))))
                                        (_%$%loop5889258986%_
                                         _%$%lp-tl5889559002%_
                                         (cons _%$%lp-hd5889458999%_
                                               _%$%body5889658993%_))))
                                    (let ((_%$%body5889759005%_
                                           (reverse _%$%body5889658993%_)))
                                      (if (gx#stx-null? _%$%tl5888858977%_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons _%$%hd5887558934%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%$%hd5887258924%_ '()))
                                      (cons _%$%hd5887558934%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'let-syntax)
                          (cons (cons (cons _%$%hd5886958914%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'make-type-env)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%$%hd5887558934%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _%$%hd5887858944%_ '()))
                            (cons _%$%hd5888158954%_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%$%hd5888458964%_ '()))
                                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%$%g5904959052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g5905059055%_)
                   (cons _%$%g5904959052%_ _%$%g5905059055%_))
                 '()
                 _%$%body5889759005%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g5885958903%_
                                           _%$%g5886058907%_)))))))
                      (_%$%loop5889258986%_ _%$%target5888958980%_ '()))
                    (_%$%g5885958903%_ _%$%g5886058907%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5885958903%_
                                                   _%$%g5886058907%_))))
                                          (_%$%g5885958903%_
                                           _%$%g5886058907%_))))
                                  (_%$%g5885958903%_ _%$%g5886058907%_))))
                          (_%$%g5885958903%_ _%$%g5886058907%_))))
                  (_%$%g5885958903%_ _%$%g5886058907%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5885958903%_
                                                   _%$%g5886058907%_))))
                                          (_%$%g5885958903%_
                                           _%$%g5886058907%_))))
                                  (_%$%g5885958903%_ _%$%g5886058907%_)))))
                      (_%$%g5885859058%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj105214 _%klass58852%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj105214
                                      'gerbil/core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj105214
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj105214
                                    'type-descriptor)))
                             _%var58854%_
                             _%klass58852%_
                             _%checked?58857%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body58856%_)))))
                 (_%expand57951%_
                  (lambda (_%var58739%_
                           _%Type58741%_
                           _%body58742%_
                           _%checked?58743%_
                           _%checked-mutators?58744%_
                           _%maybe?58745%_)
                    (let* ((_%klass58747%_
                            (gx#syntax-local-value _%Type58741%_ false))
                           (_%expr-body58754%_
                            (_%expand-body57949%_
                             _%klass58747%_
                             _%var58739%_
                             _%Type58741%_
                             _%body58742%_
                             (let ((_%$e58750%_ _%checked?58743%_))
                               (if _%$e58750%_
                                   _%$e58750%_
                                   _%checked-mutators?58744%_)))))
                      (if _%checked?58743%_
                          (let* ((_%$%g5875958778%_
                                  (lambda (_%$%g5876058774%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g5876058774%_)))
                                 (_%$%g5875858840%_
                                  (lambda (_%$%g5876058782%_)
                                    (if (gx#stx-pair? _%$%g5876058782%_)
                                        (let ((_%$%e5876458785%_
                                               (gx#syntax-e
                                                _%$%g5876058782%_)))
                                          (let ((_%$%hd5876558789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5876458785%_)))
                                                (_%$%tl5876658792%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5876458785%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl5876658792%_)
                                                (let ((_%$%e5876758795%_
                                                       (gx#syntax-e
                                                        _%$%tl5876658792%_)))
                                                  (let ((_%$%hd5876858799%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e5876758795%_)))
                                                        (_%$%tl5876958802%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e5876758795%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl5876958802%_)
                                                        (let ((_%$%e5877058805%_
                                                               (gx#syntax-e
                                                                _%$%tl5876958802%_)))
                                                          (let ((_%$%hd5877158809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5877058805%_)))
                        (_%$%tl5877258812%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5877058805%_))))
                    (if (gx#stx-null? _%$%tl5877258812%_)
                        (cons (gx#datum->syntax '#f 'with-contract)
                              (cons (cons _%$%hd5876858799%_
                                          (cons (gx#datum->syntax '#f ':~)
                                                (cons _%$%hd5876558789%_ '())))
                                    (cons _%$%hd5877158809%_ '())))
                        (_%$%g5875958778%_ _%$%g5876058782%_))))
                (_%$%g5875958778%_ _%$%g5876058782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g5875958778%_
                                                 _%$%g5876058782%_))))
                                        (_%$%g5875958778%_
                                         _%$%g5876058782%_)))))
                            (_%$%g5875858840%_
                             (list (let ((_%instance?58844%_
                                          (let ((__obj105215 _%klass58747%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj105215
                                                   'gerbil/core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj105215
                                                   '15
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj105215
                                                 'predicate)))))
                                     (if _%maybe?58745%_
                                         (list '?
                                               (list 'or
                                                     'not
                                                     _%instance?58844%_))
                                         _%instance?58844%_))
                                   _%var58739%_
                                   _%expr-body58754%_)))
                          _%expr-body58754%_)))))
          (let* ((_%__stx9916699167%_ _%stx57946%_)
                 (_%$%g5795758100%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9916699167%_))))
            (let ((_%__kont9916999170%_
                   (lambda (_%$%g5795958667%_
                            _%$%g5796058669%_
                            _%$%g5796158670%_
                            _%$%g5796258671%_)
                     (let* ((_%$%g5869658704%_
                             (lambda (_%$%g5869758700%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g5869758700%_)))
                            (_%$%g5869558731%_
                             (lambda (_%$%g5869758708%_)
                               (cons (gx#datum->syntax '#f 'with-class)
                                     (cons (cons _%$%g5796258671%_
                                                 (cons _%$%g5796158670%_
                                                       (cons _%$%g5869758708%_
                                                             '())))
                                           (foldr (lambda (_%$%g5872258725%_
                                                           _%$%g5872358728%_)
                                                    (cons _%$%g5872258725%_
                                                          _%$%g5872358728%_))
                                                  '()
                                                  _%$%g5795958667%_))))))
                       (_%$%g5869558731%_
                        (let ((__obj105216
                               (gx#syntax-local-value _%$%g5796058669%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj105216
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj105216
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj105216
                               'identifier)))))))
                  (_%__kont9917399174%_
                   (lambda (_%$%g5798758547%_
                            _%$%g5798858549%_
                            _%$%g5798958550%_)
                     (_%expand57951%_
                      _%$%g5798958550%_
                      _%$%g5798858549%_
                      (foldr (lambda (_%$%g5857358576%_ _%$%g5857458579%_)
                               (cons _%$%g5857358576%_ _%$%g5857458579%_))
                             '()
                             _%$%g5798758547%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9917799178%_
                   (lambda (_%$%g5801458427%_
                            _%$%g5801558429%_
                            _%$%g5801658430%_)
                     (_%expand57951%_
                      _%$%g5801658430%_
                      _%$%g5801558429%_
                      (foldr (lambda (_%$%g5845358456%_ _%$%g5845458459%_)
                               (cons _%$%g5845358456%_ _%$%g5845458459%_))
                             '()
                             _%$%g5801458427%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9918199182%_
                   (lambda (_%$%g5804158307%_
                            _%$%g5804258309%_
                            _%$%g5804358310%_)
                     (_%expand57951%_
                      _%$%g5804358310%_
                      _%$%g5804258309%_
                      (foldr (lambda (_%$%g5833358336%_ _%$%g5833458339%_)
                               (cons _%$%g5833358336%_ _%$%g5833458339%_))
                             '()
                             _%$%g5804158307%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9918599186%_
                   (lambda (_%$%g5806858185%_
                            _%$%g5806958187%_
                            _%$%g5807058188%_)
                     (_%expand57951%_
                      _%$%g5807058188%_
                      _%$%g5806958187%_
                      (foldr (lambda (_%$%g5821358216%_ _%$%g5821458219%_)
                               (cons _%$%g5821358216%_ _%$%g5821458219%_))
                             '()
                             _%$%g5806858185%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9940599406%_
                      (lambda (_%$%e5807158107%_
                               _%$%hd5807258111%_
                               _%$%tl5807358114%_
                               _%$%e5807458117%_
                               _%$%hd5807558121%_
                               _%$%tl5807658124%_
                               _%$%e5807758127%_
                               _%$%hd5807858131%_
                               _%$%tl5807958134%_
                               _%$%e5808058137%_
                               _%$%hd5808158141%_
                               _%$%tl5808258144%_
                               _%$%e5808358147%_
                               _%$%hd5808458151%_
                               _%$%tl5808558154%_
                               _%__splice9918799188%_
                               _%$%target5808658157%_
                               _%$%tl5808858160%_)
                        (letrec ((_%$%loop5808958163%_
                                  (lambda (_%$%hd5808758167%_
                                           _%$%body5809358170%_)
                                    (if (gx#stx-pair? _%$%hd5808758167%_)
                                        (let ((_%$%e5809058172%_
                                               (gx#syntax-e
                                                _%$%hd5808758167%_)))
                                          (let ((_%$%lp-tl5809258179%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5809058172%_)))
                                                (_%$%lp-hd5809158176%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5809058172%_))))
                                            (_%$%loop5808958163%_
                                             _%$%lp-tl5809258179%_
                                             (cons _%$%lp-hd5809158176%_
                                                   _%$%body5809358170%_))))
                                        (let ((_%$%body5809458182%_
                                               (reverse _%$%body5809358170%_)))
                                          (let ((_%$%g5806858185%_
                                                 _%$%body5809458182%_)
                                                (_%$%g5806958187%_
                                                 _%$%hd5808458151%_)
                                                (_%$%g5807058188%_
                                                 _%$%hd5807858131%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5806958187%_))
                                                (_%__kont9918599186%_
                                                 _%$%g5806858185%_
                                                 _%$%g5806958187%_
                                                 _%$%g5807058188%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5795758100%_)))))))))
                          (_%$%loop5808958163%_ _%$%target5808658157%_ '()))))
                     (_%__match9936199362%_
                      (lambda (_%$%e5804458229%_
                               _%$%hd5804558233%_
                               _%$%tl5804658236%_
                               _%$%e5804758239%_
                               _%$%hd5804858243%_
                               _%$%tl5804958246%_
                               _%$%e5805058249%_
                               _%$%hd5805158253%_
                               _%$%tl5805258256%_
                               _%$%e5805358259%_
                               _%$%hd5805458263%_
                               _%$%tl5805558266%_
                               _%$%e5805658269%_
                               _%$%hd5805758273%_
                               _%$%tl5805858276%_
                               _%__splice9918399184%_
                               _%$%target5805958279%_
                               _%$%tl5806158282%_)
                        (letrec ((_%$%loop5806258285%_
                                  (lambda (_%$%hd5806058289%_
                                           _%$%body5806658292%_)
                                    (if (gx#stx-pair? _%$%hd5806058289%_)
                                        (let ((_%$%e5806358294%_
                                               (gx#syntax-e
                                                _%$%hd5806058289%_)))
                                          (let ((_%$%lp-tl5806558301%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5806358294%_)))
                                                (_%$%lp-hd5806458298%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5806358294%_))))
                                            (_%$%loop5806258285%_
                                             _%$%lp-tl5806558301%_
                                             (cons _%$%lp-hd5806458298%_
                                                   _%$%body5806658292%_))))
                                        (let ((_%$%body5806758304%_
                                               (reverse _%$%body5806658292%_)))
                                          (let ((_%$%g5804158307%_
                                                 _%$%body5806758304%_)
                                                (_%$%g5804258309%_
                                                 _%$%hd5805758273%_)
                                                (_%$%g5804358310%_
                                                 _%$%hd5805158253%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5804258309%_))
                                                (_%__kont9918199182%_
                                                 _%$%g5804158307%_
                                                 _%$%g5804258309%_
                                                 _%$%g5804358310%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5795758100%_)))))))))
                          (_%$%loop5806258285%_ _%$%target5805958279%_ '()))))
                     (_%__match9931799318%_
                      (lambda (_%$%e5801758349%_
                               _%$%hd5801858353%_
                               _%$%tl5801958356%_
                               _%$%e5802058359%_
                               _%$%hd5802158363%_
                               _%$%tl5802258366%_
                               _%$%e5802358369%_
                               _%$%hd5802458373%_
                               _%$%tl5802558376%_
                               _%$%e5802658379%_
                               _%$%hd5802758383%_
                               _%$%tl5802858386%_
                               _%$%e5802958389%_
                               _%$%hd5803058393%_
                               _%$%tl5803158396%_
                               _%__splice9917999180%_
                               _%$%target5803258399%_
                               _%$%tl5803458402%_)
                        (letrec ((_%$%loop5803558405%_
                                  (lambda (_%$%hd5803358409%_
                                           _%$%body5803958412%_)
                                    (if (gx#stx-pair? _%$%hd5803358409%_)
                                        (let ((_%$%e5803658414%_
                                               (gx#syntax-e
                                                _%$%hd5803358409%_)))
                                          (let ((_%$%lp-tl5803858421%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5803658414%_)))
                                                (_%$%lp-hd5803758418%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5803658414%_))))
                                            (_%$%loop5803558405%_
                                             _%$%lp-tl5803858421%_
                                             (cons _%$%lp-hd5803758418%_
                                                   _%$%body5803958412%_))))
                                        (let ((_%$%body5804058424%_
                                               (reverse _%$%body5803958412%_)))
                                          (let ((_%$%g5801458427%_
                                                 _%$%body5804058424%_)
                                                (_%$%g5801558429%_
                                                 _%$%hd5803058393%_)
                                                (_%$%g5801658430%_
                                                 _%$%hd5802458373%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5801558429%_))
                                                (_%__kont9917799178%_
                                                 _%$%g5801458427%_
                                                 _%$%g5801558429%_
                                                 _%$%g5801658430%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5795758100%_)))))))))
                          (_%$%loop5803558405%_ _%$%target5803258399%_ '()))))
                     (_%__match9927399274%_
                      (lambda (_%$%e5799058469%_
                               _%$%hd5799158473%_
                               _%$%tl5799258476%_
                               _%$%e5799358479%_
                               _%$%hd5799458483%_
                               _%$%tl5799558486%_
                               _%$%e5799658489%_
                               _%$%hd5799758493%_
                               _%$%tl5799858496%_
                               _%$%e5799958499%_
                               _%$%hd5800058503%_
                               _%$%tl5800158506%_
                               _%$%e5800258509%_
                               _%$%hd5800358513%_
                               _%$%tl5800458516%_
                               _%__splice9917599176%_
                               _%$%target5800558519%_
                               _%$%tl5800758522%_)
                        (letrec ((_%$%loop5800858525%_
                                  (lambda (_%$%hd5800658529%_
                                           _%$%body5801258532%_)
                                    (if (gx#stx-pair? _%$%hd5800658529%_)
                                        (let ((_%$%e5800958534%_
                                               (gx#syntax-e
                                                _%$%hd5800658529%_)))
                                          (let ((_%$%lp-tl5801158541%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5800958534%_)))
                                                (_%$%lp-hd5801058538%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5800958534%_))))
                                            (_%$%loop5800858525%_
                                             _%$%lp-tl5801158541%_
                                             (cons _%$%lp-hd5801058538%_
                                                   _%$%body5801258532%_))))
                                        (let ((_%$%body5801358544%_
                                               (reverse _%$%body5801258532%_)))
                                          (let ((_%$%g5798758547%_
                                                 _%$%body5801358544%_)
                                                (_%$%g5798858549%_
                                                 _%$%hd5800358513%_)
                                                (_%$%g5798958550%_
                                                 _%$%hd5799758493%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5798858549%_))
                                                (_%__kont9917399174%_
                                                 _%$%g5798758547%_
                                                 _%$%g5798858549%_
                                                 _%$%g5798958550%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5795758100%_)))))))))
                          (_%$%loop5800858525%_ _%$%target5800558519%_ '()))))
                     (_%__match9925399254%_
                      (lambda (_%$%e5799058469%_
                               _%$%hd5799158473%_
                               _%$%tl5799258476%_
                               _%$%e5799358479%_
                               _%$%hd5799458483%_
                               _%$%tl5799558486%_
                               _%$%e5799658489%_
                               _%$%hd5799758493%_
                               _%$%tl5799858496%_
                               _%$%e5799958499%_
                               _%$%hd5800058503%_
                               _%$%tl5800158506%_)
                        (if (gx#identifier? _%$%hd5800058503%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g105414_|
                                 _%$%hd5800058503%_)
                                (if (gx#stx-pair? _%$%tl5800158506%_)
                                    (let ((_%$%e5800258509%_
                                           (gx#syntax-e _%$%tl5800158506%_)))
                                      (let ((_%$%tl5800458516%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5800258509%_)))
                                            (_%$%hd5800358513%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5800258509%_))))
                                        (if (gx#stx-null? _%$%tl5800458516%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl5799558486%_)
                                                (let ((_%__splice9917599176%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl5799558486%_
                                                        '0)))
                                                  (let ((_%$%tl5800758522%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9917599176%_
                                                            '1)))
                                                        (_%$%target5800558519%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9917599176%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5800758522%_)
                                                        (_%__match9927399274%_
                                                         _%$%e5799058469%_
                                                         _%$%hd5799158473%_
                                                         _%$%tl5799258476%_
                                                         _%$%e5799358479%_
                                                         _%$%hd5799458483%_
                                                         _%$%tl5799558486%_
                                                         _%$%e5799658489%_
                                                         _%$%hd5799758493%_
                                                         _%$%tl5799858496%_
                                                         _%$%e5799958499%_
                                                         _%$%hd5800058503%_
                                                         _%$%tl5800158506%_
                                                         _%$%e5800258509%_
                                                         _%$%hd5800358513%_
                                                         _%$%tl5800458516%_
                                                         _%__splice9917599176%_
                                                         _%$%target5800558519%_
                                                         _%$%tl5800758522%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g5795758100%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5795758100%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5795758100%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5795758100%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g105415_|
                                     _%$%hd5800058503%_)
                                    (if (gx#stx-pair? _%$%tl5800158506%_)
                                        (let ((_%$%e5802958389%_
                                               (gx#syntax-e
                                                _%$%tl5800158506%_)))
                                          (let ((_%$%tl5803158396%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5802958389%_)))
                                                (_%$%hd5803058393%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5802958389%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl5803158396%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5799558486%_)
                                                    (let ((_%__splice9917999180%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl5799558486%_
                                                            '0)))
                                                      (let ((_%$%tl5803458402%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9917999180%_ '1)))
                    (_%$%target5803258399%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9917999180%_ '0))))
                (if (gx#stx-null? _%$%tl5803458402%_)
                    (_%__match9931799318%_
                     _%$%e5799058469%_
                     _%$%hd5799158473%_
                     _%$%tl5799258476%_
                     _%$%e5799358479%_
                     _%$%hd5799458483%_
                     _%$%tl5799558486%_
                     _%$%e5799658489%_
                     _%$%hd5799758493%_
                     _%$%tl5799858496%_
                     _%$%e5799958499%_
                     _%$%hd5800058503%_
                     _%$%tl5800158506%_
                     _%$%e5802958389%_
                     _%$%hd5803058393%_
                     _%$%tl5803158396%_
                     _%__splice9917999180%_
                     _%$%target5803258399%_
                     _%$%tl5803458402%_)
                    (let () (declare (not safe)) (_%$%g5795758100%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5795758100%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5795758100%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g5795758100%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g105416_|
                                         _%$%hd5800058503%_)
                                        (if (gx#stx-pair? _%$%tl5800158506%_)
                                            (let ((_%$%e5805658269%_
                                                   (gx#syntax-e
                                                    _%$%tl5800158506%_)))
                                              (let ((_%$%tl5805858276%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5805658269%_)))
                                                    (_%$%hd5805758273%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5805658269%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl5805858276%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl5799558486%_)
                                                        (let ((_%__splice9918399184%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl5799558486%_
                                                                '0)))
                                                          (let ((_%$%tl5806158282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9918399184%_ '1)))
                        (_%$%target5805958279%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9918399184%_ '0))))
                    (if (gx#stx-null? _%$%tl5806158282%_)
                        (_%__match9936199362%_
                         _%$%e5799058469%_
                         _%$%hd5799158473%_
                         _%$%tl5799258476%_
                         _%$%e5799358479%_
                         _%$%hd5799458483%_
                         _%$%tl5799558486%_
                         _%$%e5799658489%_
                         _%$%hd5799758493%_
                         _%$%tl5799858496%_
                         _%$%e5799958499%_
                         _%$%hd5800058503%_
                         _%$%tl5800158506%_
                         _%$%e5805658269%_
                         _%$%hd5805758273%_
                         _%$%tl5805858276%_
                         _%__splice9918399184%_
                         _%$%target5805958279%_
                         _%$%tl5806158282%_)
                        (let () (declare (not safe)) (_%$%g5795758100%_)))))
                (let () (declare (not safe)) (_%$%g5795758100%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5795758100%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5795758100%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g105417_|
                                             _%$%hd5800058503%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl5800158506%_)
                                                (let ((_%$%e5808358147%_
                                                       (gx#syntax-e
                                                        _%$%tl5800158506%_)))
                                                  (let ((_%$%tl5808558154%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e5808358147%_)))
                                                        (_%$%hd5808458151%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e5808358147%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5808558154%_)
                                                        (if (gx#stx-pair/null?
                                                             _%$%tl5799558486%_)
                                                            (let ((_%__splice9918799188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%$%tl5799558486%_
                            '0)))
                      (let ((_%$%tl5808858160%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9918799188%_ '1)))
                            (_%$%target5808658157%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9918799188%_ '0))))
                        (if (gx#stx-null? _%$%tl5808858160%_)
                            (_%__match9940599406%_
                             _%$%e5799058469%_
                             _%$%hd5799158473%_
                             _%$%tl5799258476%_
                             _%$%e5799358479%_
                             _%$%hd5799458483%_
                             _%$%tl5799558486%_
                             _%$%e5799658489%_
                             _%$%hd5799758493%_
                             _%$%tl5799858496%_
                             _%$%e5799958499%_
                             _%$%hd5800058503%_
                             _%$%tl5800158506%_
                             _%$%e5808358147%_
                             _%$%hd5808458151%_
                             _%$%tl5808558154%_
                             _%__splice9918799188%_
                             _%$%target5808658157%_
                             _%$%tl5808858160%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5795758100%_)))))
                    (let () (declare (not safe)) (_%$%g5795758100%_)))
                (let () (declare (not safe)) (_%$%g5795758100%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5795758100%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5795758100%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5795758100%_)))))
                     (_%__match9922999230%_
                      (lambda (_%$%e5796358589%_
                               _%$%hd5796458593%_
                               _%$%tl5796558596%_
                               _%$%e5796658599%_
                               _%$%hd5796758603%_
                               _%$%tl5796858606%_
                               _%$%e5796958609%_
                               _%$%hd5797058613%_
                               _%$%tl5797158616%_
                               _%$%e5797258619%_
                               _%$%hd5797358623%_
                               _%$%tl5797458626%_
                               _%$%e5797558629%_
                               _%$%hd5797658633%_
                               _%$%tl5797758636%_
                               _%__splice9917199172%_
                               _%$%target5797858639%_
                               _%$%tl5798058642%_)
                        (letrec ((_%$%loop5798158645%_
                                  (lambda (_%$%hd5797958649%_
                                           _%$%body5798558652%_)
                                    (if (gx#stx-pair? _%$%hd5797958649%_)
                                        (let ((_%$%e5798258654%_
                                               (gx#syntax-e
                                                _%$%hd5797958649%_)))
                                          (let ((_%$%lp-tl5798458661%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5798258654%_)))
                                                (_%$%lp-hd5798358658%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5798258654%_))))
                                            (_%$%loop5798158645%_
                                             _%$%lp-tl5798458661%_
                                             (cons _%$%lp-hd5798358658%_
                                                   _%$%body5798558652%_))))
                                        (let ((_%$%body5798658664%_
                                               (reverse _%$%body5798558652%_)))
                                          (let ((_%$%g5795958667%_
                                                 _%$%body5798658664%_)
                                                (_%$%g5796058669%_
                                                 _%$%hd5797658633%_)
                                                (_%$%g5796158670%_
                                                 _%$%hd5797358623%_)
                                                (_%$%g5796258671%_
                                                 _%$%hd5797058613%_))
                                            (if (let ((__tmp105418
                                                       (gx#syntax-local-value
                                                        _%$%g5796058669%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp105418))
                                                (_%__kont9916999170%_
                                                 _%$%g5795958667%_
                                                 _%$%g5796058669%_
                                                 _%$%g5796158670%_
                                                 _%$%g5796258671%_)
                                                (_%__match9925399254%_
                                                 _%$%e5796358589%_
                                                 _%$%hd5796458593%_
                                                 _%$%tl5796558596%_
                                                 _%$%e5796658599%_
                                                 _%$%hd5796758603%_
                                                 _%$%tl5796858606%_
                                                 _%$%e5796958609%_
                                                 _%$%hd5797058613%_
                                                 _%$%tl5797158616%_
                                                 _%$%e5797258619%_
                                                 _%$%hd5797358623%_
                                                 _%$%tl5797458626%_))))))))
                          (_%$%loop5798158645%_ _%$%target5797858639%_ '())))))
                (if (gx#stx-pair? _%__stx9916699167%_)
                    (let ((_%$%e5796358589%_
                           (gx#syntax-e _%__stx9916699167%_)))
                      (let ((_%$%tl5796558596%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5796358589%_)))
                            (_%$%hd5796458593%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5796358589%_))))
                        (if (gx#stx-pair? _%$%tl5796558596%_)
                            (let ((_%$%e5796658599%_
                                   (gx#syntax-e _%$%tl5796558596%_)))
                              (let ((_%$%tl5796858606%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5796658599%_)))
                                    (_%$%hd5796758603%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5796658599%_))))
                                (if (gx#stx-pair? _%$%hd5796758603%_)
                                    (let ((_%$%e5796958609%_
                                           (gx#syntax-e _%$%hd5796758603%_)))
                                      (let ((_%$%tl5797158616%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5796958609%_)))
                                            (_%$%hd5797058613%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5796958609%_))))
                                        (if (gx#stx-pair? _%$%tl5797158616%_)
                                            (let ((_%$%e5797258619%_
                                                   (gx#syntax-e
                                                    _%$%tl5797158616%_)))
                                              (let ((_%$%tl5797458626%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5797258619%_)))
                                                    (_%$%hd5797358623%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5797258619%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl5797458626%_)
                                                    (let ((_%$%e5797558629%_
                                                           (gx#syntax-e
                                                            _%$%tl5797458626%_)))
                                                      (let ((_%$%tl5797758636%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5797558629%_)))
                    (_%$%hd5797658633%_
                     (let () (declare (not safe)) (##car _%$%e5797558629%_))))
                (if (gx#stx-null? _%$%tl5797758636%_)
                    (if (gx#stx-pair/null? _%$%tl5796858606%_)
                        (let ((_%__splice9917199172%_
                               (gx#syntax-split-splice->vector
                                _%$%tl5796858606%_
                                '0)))
                          (let ((_%$%tl5798058642%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9917199172%_ '1)))
                                (_%$%target5797858639%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9917199172%_ '0))))
                            (if (gx#stx-null? _%$%tl5798058642%_)
                                (_%__match9922999230%_
                                 _%$%e5796358589%_
                                 _%$%hd5796458593%_
                                 _%$%tl5796558596%_
                                 _%$%e5796658599%_
                                 _%$%hd5796758603%_
                                 _%$%tl5796858606%_
                                 _%$%e5796958609%_
                                 _%$%hd5797058613%_
                                 _%$%tl5797158616%_
                                 _%$%e5797258619%_
                                 _%$%hd5797358623%_
                                 _%$%tl5797458626%_
                                 _%$%e5797558629%_
                                 _%$%hd5797658633%_
                                 _%$%tl5797758636%_
                                 _%__splice9917199172%_
                                 _%$%target5797858639%_
                                 _%$%tl5798058642%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5795758100%_)))))
                        (let () (declare (not safe)) (_%$%g5795758100%_)))
                    (let () (declare (not safe)) (_%$%g5795758100%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5795758100%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5795758100%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5795758100%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5795758100%_)))))
                    (let () (declare (not safe)) (_%$%g5795758100%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx59068%_)
        (letrec ((_%expand-body59071%_
                  (lambda (_%var60062%_
                           _%Interface60064%_
                           _%body60065%_
                           _%checked?60066%_)
                    (let* ((_%type60068%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx59068%_
                               _%Interface60064%_)))
                           (_%$%g6007160115%_
                            (lambda (_%$%g6007260111%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g6007260111%_)))
                           (_%$%g6007060271%_
                            (lambda (_%$%g6007260119%_)
                              (if (gx#stx-pair? _%$%g6007260119%_)
                                  (let ((_%$%e6008060122%_
                                         (gx#syntax-e _%$%g6007260119%_)))
                                    (let ((_%$%hd6008160126%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e6008060122%_)))
                                          (_%$%tl6008260129%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e6008060122%_))))
                                      (if (gx#stx-pair? _%$%tl6008260129%_)
                                          (let ((_%$%e6008360132%_
                                                 (gx#syntax-e
                                                  _%$%tl6008260129%_)))
                                            (let ((_%$%hd6008460136%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e6008360132%_)))
                                                  (_%$%tl6008560139%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e6008360132%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl6008560139%_)
                                                  (let ((_%$%e6008660142%_
                                                         (gx#syntax-e
                                                          _%$%tl6008560139%_)))
                                                    (let ((_%$%hd6008760146%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e6008660142%_)))
                                                          (_%$%tl6008860149%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e6008660142%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl6008860149%_)
                                                          (let ((_%$%e6008960152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl6008860149%_)))
                    (let ((_%$%hd6009060156%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e6008960152%_)))
                          (_%$%tl6009160159%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e6008960152%_))))
                      (if (gx#stx-pair? _%$%tl6009160159%_)
                          (let ((_%$%e6009260162%_
                                 (gx#syntax-e _%$%tl6009160159%_)))
                            (let ((_%$%hd6009360166%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e6009260162%_)))
                                  (_%$%tl6009460169%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e6009260162%_))))
                              (if (gx#stx-pair? _%$%tl6009460169%_)
                                  (let ((_%$%e6009560172%_
                                         (gx#syntax-e _%$%tl6009460169%_)))
                                    (let ((_%$%hd6009660176%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e6009560172%_)))
                                          (_%$%tl6009760179%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e6009560172%_))))
                                      (if (gx#stx-pair? _%$%tl6009760179%_)
                                          (let ((_%$%e6009860182%_
                                                 (gx#syntax-e
                                                  _%$%tl6009760179%_)))
                                            (let ((_%$%hd6009960186%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e6009860182%_)))
                                                  (_%$%tl6010060189%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e6009860182%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd6009960186%_)
                                                  (let ((_g105419_
                                                         (gx#syntax-split-splice
                                                          _%$%hd6009960186%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g105420_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g105419_)
                           (##values-length _g105419_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g105420_ 2)))
                    (error "Context expects 2 values" _g105420_)))
              (let ((_%$%target6010160192%_
                     (let () (declare (not safe)) (##values-ref _g105419_ 0)))
                    (_%$%tl6010360195%_
                     (let () (declare (not safe)) (##values-ref _g105419_ 1))))
                (if (gx#stx-null? _%$%tl6010360195%_)
                    (letrec ((_%$%loop6010460198%_
                              (lambda (_%$%hd6010260202%_ _%$%body6010860205%_)
                                (if (gx#stx-pair? _%$%hd6010260202%_)
                                    (let ((_%$%e6010560207%_
                                           (gx#syntax-e _%$%hd6010260202%_)))
                                      (let ((_%$%lp-hd6010660211%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e6010560207%_)))
                                            (_%$%lp-tl6010760214%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e6010560207%_))))
                                        (_%$%loop6010460198%_
                                         _%$%lp-tl6010760214%_
                                         (cons _%$%lp-hd6010660211%_
                                               _%$%body6010860205%_))))
                                    (let ((_%$%body6010960217%_
                                           (reverse _%$%body6010860205%_)))
                                      (if (gx#stx-null? _%$%tl6010060189%_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons _%$%hd6009060156%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%$%hd6008760146%_ '()))
                                      (cons _%$%hd6009060156%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'let-syntax)
                          (cons (cons (cons _%$%hd6008160126%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'make-type-env)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%$%hd6009060156%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _%$%hd6008460136%_ '()))
                            (cons _%$%hd6009360166%_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%$%hd6009660176%_ '()))
                                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%$%g6026260265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g6026360268%_)
                   (cons _%$%g6026260265%_ _%$%g6026360268%_))
                 '()
                 _%$%body6010960217%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g6007160115%_
                                           _%$%g6007260119%_)))))))
                      (_%$%loop6010460198%_ _%$%target6010160192%_ '()))
                    (_%$%g6007160115%_ _%$%g6007260119%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g6007160115%_
                                                   _%$%g6007260119%_))))
                                          (_%$%g6007160115%_
                                           _%$%g6007260119%_))))
                                  (_%$%g6007160115%_ _%$%g6007260119%_))))
                          (_%$%g6007160115%_ _%$%g6007260119%_))))
                  (_%$%g6007160115%_ _%$%g6007260119%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g6007160115%_
                                                   _%$%g6007260119%_))))
                                          (_%$%g6007160115%_
                                           _%$%g6007260119%_))))
                                  (_%$%g6007160115%_ _%$%g6007260119%_)))))
                      (_%$%g6007060271%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type60068%_
                             (let ((__obj105217 _%type60068%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj105217
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj105217
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj105217
                                    'type-descriptor)))
                             _%var60062%_
                             _%checked?60066%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body60065%_)))))
                 (_%expand59073%_
                  (lambda (_%var59861%_
                           _%Interface59863%_
                           _%body59864%_
                           _%checked?59865%_
                           _%checked-methods?59866%_
                           _%maybe?59867%_)
                    (let* ((_%$%g5986959877%_
                            (lambda (_%$%g5987059873%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5987059873%_)))
                           (_%$%g5986860054%_
                            (lambda (_%$%g5987059881%_)
                              (if _%checked?59865%_
                                  (if _%maybe?59867%_
                                      (let* ((_%$%g5989659911%_
                                              (lambda (_%$%g5989759907%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5989759907%_)))
                                             (_%$%g5989559957%_
                                              (lambda (_%$%g5989759915%_)
                                                (if (gx#stx-pair?
                                                     _%$%g5989759915%_)
                                                    (let ((_%$%e5990059918%_
                                                           (gx#syntax-e
                                                            _%$%g5989759915%_)))
                                                      (let ((_%$%hd5990159922%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e5990059918%_)))
                    (_%$%tl5990259925%_
                     (let () (declare (not safe)) (##cdr _%$%e5990059918%_))))
                (if (gx#stx-pair? _%$%tl5990259925%_)
                    (let ((_%$%e5990359928%_ (gx#syntax-e _%$%tl5990259925%_)))
                      (let ((_%$%hd5990459932%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5990359928%_)))
                            (_%$%tl5990559935%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5990359928%_))))
                        (if (gx#stx-null? _%$%tl5990559935%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons _%$%hd5990159922%_
                                              (cons (cons _%$%hd5990459932%_
                                                          (cons _%$%hd5990159922%_
                                                                '()))
                                                    '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons _%$%hd5990159922%_
                                                          (cons _%$%g5987059881%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'nil-dereference!)
                                    (cons _%$%hd5990159922%_ '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (_%$%g5989659911%_ _%$%g5989759915%_))))
                    (_%$%g5989659911%_ _%$%g5989759915%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5989659911%_
                                                     _%$%g5989759915%_)))))
                                        (_%$%g5989559957%_
                                         (list _%var59861%_
                                               _%Interface59863%_)))
                                      (let* ((_%$%g5996159976%_
                                              (lambda (_%$%g5996259972%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5996259972%_)))
                                             (_%$%g5996060020%_
                                              (lambda (_%$%g5996259980%_)
                                                (if (gx#stx-pair?
                                                     _%$%g5996259980%_)
                                                    (let ((_%$%e5996559983%_
                                                           (gx#syntax-e
                                                            _%$%g5996259980%_)))
                                                      (let ((_%$%hd5996659987%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e5996559983%_)))
                    (_%$%tl5996759990%_
                     (let () (declare (not safe)) (##cdr _%$%e5996559983%_))))
                (if (gx#stx-pair? _%$%tl5996759990%_)
                    (let ((_%$%e5996859993%_ (gx#syntax-e _%$%tl5996759990%_)))
                      (let ((_%$%hd5996959997%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5996859993%_)))
                            (_%$%tl5997060000%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5996859993%_))))
                        (if (gx#stx-null? _%$%tl5997060000%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons _%$%hd5996659987%_
                                              (cons (cons _%$%hd5996959997%_
                                                          (cons _%$%hd5996659987%_
                                                                '()))
                                                    '()))
                                        (cons _%$%g5987059881%_ '())))
                            (_%$%g5996159976%_ _%$%g5996259980%_))))
                    (_%$%g5996159976%_ _%$%g5996259980%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5996159976%_
                                                     _%$%g5996259980%_)))))
                                        (_%$%g5996060020%_
                                         (list _%var59861%_
                                               _%Interface59863%_))))
                                  (if _%maybe?59867%_
                                      (let* ((_%$%g6002460032%_
                                              (lambda (_%$%g6002560028%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g6002560028%_)))
                                             (_%$%g6002360050%_
                                              (lambda (_%$%g6002560036%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons _%$%g6002560036%_
                                                            (cons _%$%g5987059881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'nil-dereference!)
                                      (cons _%$%g6002560036%_ '()))
                                '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%g6002360050%_ _%var59861%_))
                                      _%$%g5987059881%_)))))
                      (_%$%g5986860054%_
                       (_%expand-body59071%_
                        _%var59861%_
                        _%Interface59863%_
                        _%body59864%_
                        (let ((_%$e60058%_ _%checked?59865%_))
                          (if _%$e60058%_
                              _%$e60058%_
                              _%checked-methods?59866%_))))))))
          (let* ((_%__stx9940899409%_ _%stx59068%_)
                 (_%$%g5907959222%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9940899409%_))))
            (let ((_%__kont9941199412%_
                   (lambda (_%$%g5908159789%_
                            _%$%g5908259791%_
                            _%$%g5908359792%_
                            _%$%g5908459793%_)
                     (let* ((_%$%g5981859826%_
                             (lambda (_%$%g5981959822%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g5981959822%_)))
                            (_%$%g5981759853%_
                             (lambda (_%$%g5981959830%_)
                               (cons (gx#datum->syntax '#f 'with-interface)
                                     (cons (cons _%$%g5908459793%_
                                                 (cons _%$%g5908359792%_
                                                       (cons _%$%g5981959830%_
                                                             '())))
                                           (foldr (lambda (_%$%g5984459847%_
                                                           _%$%g5984559850%_)
                                                    (cons _%$%g5984459847%_
                                                          _%$%g5984559850%_))
                                                  '()
                                                  _%$%g5908159789%_))))))
                       (_%$%g5981759853%_
                        (let ((__obj105218
                               (gx#syntax-local-value _%$%g5908259791%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj105218
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj105218
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj105218
                               'identifier)))))))
                  (_%__kont9941599416%_
                   (lambda (_%$%g5910959669%_
                            _%$%g5911059671%_
                            _%$%g5911159672%_)
                     (_%expand59073%_
                      _%$%g5911159672%_
                      _%$%g5911059671%_
                      (foldr (lambda (_%$%g5969559698%_ _%$%g5969659701%_)
                               (cons _%$%g5969559698%_ _%$%g5969659701%_))
                             '()
                             _%$%g5910959669%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9941999420%_
                   (lambda (_%$%g5913659549%_
                            _%$%g5913759551%_
                            _%$%g5913859552%_)
                     (_%expand59073%_
                      _%$%g5913859552%_
                      _%$%g5913759551%_
                      (foldr (lambda (_%$%g5957559578%_ _%$%g5957659581%_)
                               (cons _%$%g5957559578%_ _%$%g5957659581%_))
                             '()
                             _%$%g5913659549%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9942399424%_
                   (lambda (_%$%g5916359429%_
                            _%$%g5916459431%_
                            _%$%g5916559432%_)
                     (_%expand59073%_
                      _%$%g5916559432%_
                      _%$%g5916459431%_
                      (foldr (lambda (_%$%g5945559458%_ _%$%g5945659461%_)
                               (cons _%$%g5945559458%_ _%$%g5945659461%_))
                             '()
                             _%$%g5916359429%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9942799428%_
                   (lambda (_%$%g5919059307%_
                            _%$%g5919159309%_
                            _%$%g5919259310%_)
                     (_%expand59073%_
                      _%$%g5919259310%_
                      _%$%g5919159309%_
                      (foldr (lambda (_%$%g5933559338%_ _%$%g5933659341%_)
                               (cons _%$%g5933559338%_ _%$%g5933659341%_))
                             '()
                             _%$%g5919059307%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9964799648%_
                      (lambda (_%$%e5919359229%_
                               _%$%hd5919459233%_
                               _%$%tl5919559236%_
                               _%$%e5919659239%_
                               _%$%hd5919759243%_
                               _%$%tl5919859246%_
                               _%$%e5919959249%_
                               _%$%hd5920059253%_
                               _%$%tl5920159256%_
                               _%$%e5920259259%_
                               _%$%hd5920359263%_
                               _%$%tl5920459266%_
                               _%$%e5920559269%_
                               _%$%hd5920659273%_
                               _%$%tl5920759276%_
                               _%__splice9942999430%_
                               _%$%target5920859279%_
                               _%$%tl5921059282%_)
                        (letrec ((_%$%loop5921159285%_
                                  (lambda (_%$%hd5920959289%_
                                           _%$%body5921559292%_)
                                    (if (gx#stx-pair? _%$%hd5920959289%_)
                                        (let ((_%$%e5921259294%_
                                               (gx#syntax-e
                                                _%$%hd5920959289%_)))
                                          (let ((_%$%lp-tl5921459301%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5921259294%_)))
                                                (_%$%lp-hd5921359298%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5921259294%_))))
                                            (_%$%loop5921159285%_
                                             _%$%lp-tl5921459301%_
                                             (cons _%$%lp-hd5921359298%_
                                                   _%$%body5921559292%_))))
                                        (let ((_%$%body5921659304%_
                                               (reverse _%$%body5921559292%_)))
                                          (let ((_%$%g5919059307%_
                                                 _%$%body5921659304%_)
                                                (_%$%g5919159309%_
                                                 _%$%hd5920659273%_)
                                                (_%$%g5919259310%_
                                                 _%$%hd5920059253%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5919259310%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5919159309%_)))
                                                (_%__kont9942799428%_
                                                 _%$%g5919059307%_
                                                 _%$%g5919159309%_
                                                 _%$%g5919259310%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5907959222%_)))))))))
                          (_%$%loop5921159285%_ _%$%target5920859279%_ '()))))
                     (_%__match9960399604%_
                      (lambda (_%$%e5916659351%_
                               _%$%hd5916759355%_
                               _%$%tl5916859358%_
                               _%$%e5916959361%_
                               _%$%hd5917059365%_
                               _%$%tl5917159368%_
                               _%$%e5917259371%_
                               _%$%hd5917359375%_
                               _%$%tl5917459378%_
                               _%$%e5917559381%_
                               _%$%hd5917659385%_
                               _%$%tl5917759388%_
                               _%$%e5917859391%_
                               _%$%hd5917959395%_
                               _%$%tl5918059398%_
                               _%__splice9942599426%_
                               _%$%target5918159401%_
                               _%$%tl5918359404%_)
                        (letrec ((_%$%loop5918459407%_
                                  (lambda (_%$%hd5918259411%_
                                           _%$%body5918859414%_)
                                    (if (gx#stx-pair? _%$%hd5918259411%_)
                                        (let ((_%$%e5918559416%_
                                               (gx#syntax-e
                                                _%$%hd5918259411%_)))
                                          (let ((_%$%lp-tl5918759423%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5918559416%_)))
                                                (_%$%lp-hd5918659420%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5918559416%_))))
                                            (_%$%loop5918459407%_
                                             _%$%lp-tl5918759423%_
                                             (cons _%$%lp-hd5918659420%_
                                                   _%$%body5918859414%_))))
                                        (let ((_%$%body5918959426%_
                                               (reverse _%$%body5918859414%_)))
                                          (let ((_%$%g5916359429%_
                                                 _%$%body5918959426%_)
                                                (_%$%g5916459431%_
                                                 _%$%hd5917959395%_)
                                                (_%$%g5916559432%_
                                                 _%$%hd5917359375%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5916559432%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5916459431%_)))
                                                (_%__kont9942399424%_
                                                 _%$%g5916359429%_
                                                 _%$%g5916459431%_
                                                 _%$%g5916559432%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5907959222%_)))))))))
                          (_%$%loop5918459407%_ _%$%target5918159401%_ '()))))
                     (_%__match9955999560%_
                      (lambda (_%$%e5913959471%_
                               _%$%hd5914059475%_
                               _%$%tl5914159478%_
                               _%$%e5914259481%_
                               _%$%hd5914359485%_
                               _%$%tl5914459488%_
                               _%$%e5914559491%_
                               _%$%hd5914659495%_
                               _%$%tl5914759498%_
                               _%$%e5914859501%_
                               _%$%hd5914959505%_
                               _%$%tl5915059508%_
                               _%$%e5915159511%_
                               _%$%hd5915259515%_
                               _%$%tl5915359518%_
                               _%__splice9942199422%_
                               _%$%target5915459521%_
                               _%$%tl5915659524%_)
                        (letrec ((_%$%loop5915759527%_
                                  (lambda (_%$%hd5915559531%_
                                           _%$%body5916159534%_)
                                    (if (gx#stx-pair? _%$%hd5915559531%_)
                                        (let ((_%$%e5915859536%_
                                               (gx#syntax-e
                                                _%$%hd5915559531%_)))
                                          (let ((_%$%lp-tl5916059543%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5915859536%_)))
                                                (_%$%lp-hd5915959540%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5915859536%_))))
                                            (_%$%loop5915759527%_
                                             _%$%lp-tl5916059543%_
                                             (cons _%$%lp-hd5915959540%_
                                                   _%$%body5916159534%_))))
                                        (let ((_%$%body5916259546%_
                                               (reverse _%$%body5916159534%_)))
                                          (let ((_%$%g5913659549%_
                                                 _%$%body5916259546%_)
                                                (_%$%g5913759551%_
                                                 _%$%hd5915259515%_)
                                                (_%$%g5913859552%_
                                                 _%$%hd5914659495%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5913859552%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5913759551%_)))
                                                (_%__kont9941999420%_
                                                 _%$%g5913659549%_
                                                 _%$%g5913759551%_
                                                 _%$%g5913859552%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5907959222%_)))))))))
                          (_%$%loop5915759527%_ _%$%target5915459521%_ '()))))
                     (_%__match9951599516%_
                      (lambda (_%$%e5911259591%_
                               _%$%hd5911359595%_
                               _%$%tl5911459598%_
                               _%$%e5911559601%_
                               _%$%hd5911659605%_
                               _%$%tl5911759608%_
                               _%$%e5911859611%_
                               _%$%hd5911959615%_
                               _%$%tl5912059618%_
                               _%$%e5912159621%_
                               _%$%hd5912259625%_
                               _%$%tl5912359628%_
                               _%$%e5912459631%_
                               _%$%hd5912559635%_
                               _%$%tl5912659638%_
                               _%__splice9941799418%_
                               _%$%target5912759641%_
                               _%$%tl5912959644%_)
                        (letrec ((_%$%loop5913059647%_
                                  (lambda (_%$%hd5912859651%_
                                           _%$%body5913459654%_)
                                    (if (gx#stx-pair? _%$%hd5912859651%_)
                                        (let ((_%$%e5913159656%_
                                               (gx#syntax-e
                                                _%$%hd5912859651%_)))
                                          (let ((_%$%lp-tl5913359663%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5913159656%_)))
                                                (_%$%lp-hd5913259660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5913159656%_))))
                                            (_%$%loop5913059647%_
                                             _%$%lp-tl5913359663%_
                                             (cons _%$%lp-hd5913259660%_
                                                   _%$%body5913459654%_))))
                                        (let ((_%$%body5913559666%_
                                               (reverse _%$%body5913459654%_)))
                                          (let ((_%$%g5910959669%_
                                                 _%$%body5913559666%_)
                                                (_%$%g5911059671%_
                                                 _%$%hd5912559635%_)
                                                (_%$%g5911159672%_
                                                 _%$%hd5911959615%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5911159672%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5911059671%_)))
                                                (_%__kont9941599416%_
                                                 _%$%g5910959669%_
                                                 _%$%g5911059671%_
                                                 _%$%g5911159672%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5907959222%_)))))))))
                          (_%$%loop5913059647%_ _%$%target5912759641%_ '()))))
                     (_%__match9949599496%_
                      (lambda (_%$%e5911259591%_
                               _%$%hd5911359595%_
                               _%$%tl5911459598%_
                               _%$%e5911559601%_
                               _%$%hd5911659605%_
                               _%$%tl5911759608%_
                               _%$%e5911859611%_
                               _%$%hd5911959615%_
                               _%$%tl5912059618%_
                               _%$%e5912159621%_
                               _%$%hd5912259625%_
                               _%$%tl5912359628%_)
                        (if (gx#identifier? _%$%hd5912259625%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g105421_|
                                 _%$%hd5912259625%_)
                                (if (gx#stx-pair? _%$%tl5912359628%_)
                                    (let ((_%$%e5912459631%_
                                           (gx#syntax-e _%$%tl5912359628%_)))
                                      (let ((_%$%tl5912659638%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5912459631%_)))
                                            (_%$%hd5912559635%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5912459631%_))))
                                        (if (gx#stx-null? _%$%tl5912659638%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl5911759608%_)
                                                (let ((_%__splice9941799418%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl5911759608%_
                                                        '0)))
                                                  (let ((_%$%tl5912959644%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9941799418%_
                                                            '1)))
                                                        (_%$%target5912759641%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9941799418%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5912959644%_)
                                                        (_%__match9951599516%_
                                                         _%$%e5911259591%_
                                                         _%$%hd5911359595%_
                                                         _%$%tl5911459598%_
                                                         _%$%e5911559601%_
                                                         _%$%hd5911659605%_
                                                         _%$%tl5911759608%_
                                                         _%$%e5911859611%_
                                                         _%$%hd5911959615%_
                                                         _%$%tl5912059618%_
                                                         _%$%e5912159621%_
                                                         _%$%hd5912259625%_
                                                         _%$%tl5912359628%_
                                                         _%$%e5912459631%_
                                                         _%$%hd5912559635%_
                                                         _%$%tl5912659638%_
                                                         _%__splice9941799418%_
                                                         _%$%target5912759641%_
                                                         _%$%tl5912959644%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g5907959222%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5907959222%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5907959222%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5907959222%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g105422_|
                                     _%$%hd5912259625%_)
                                    (if (gx#stx-pair? _%$%tl5912359628%_)
                                        (let ((_%$%e5915159511%_
                                               (gx#syntax-e
                                                _%$%tl5912359628%_)))
                                          (let ((_%$%tl5915359518%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5915159511%_)))
                                                (_%$%hd5915259515%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5915159511%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl5915359518%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5911759608%_)
                                                    (let ((_%__splice9942199422%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl5911759608%_
                                                            '0)))
                                                      (let ((_%$%tl5915659524%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9942199422%_ '1)))
                    (_%$%target5915459521%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9942199422%_ '0))))
                (if (gx#stx-null? _%$%tl5915659524%_)
                    (_%__match9955999560%_
                     _%$%e5911259591%_
                     _%$%hd5911359595%_
                     _%$%tl5911459598%_
                     _%$%e5911559601%_
                     _%$%hd5911659605%_
                     _%$%tl5911759608%_
                     _%$%e5911859611%_
                     _%$%hd5911959615%_
                     _%$%tl5912059618%_
                     _%$%e5912159621%_
                     _%$%hd5912259625%_
                     _%$%tl5912359628%_
                     _%$%e5915159511%_
                     _%$%hd5915259515%_
                     _%$%tl5915359518%_
                     _%__splice9942199422%_
                     _%$%target5915459521%_
                     _%$%tl5915659524%_)
                    (let () (declare (not safe)) (_%$%g5907959222%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5907959222%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5907959222%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g5907959222%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g105423_|
                                         _%$%hd5912259625%_)
                                        (if (gx#stx-pair? _%$%tl5912359628%_)
                                            (let ((_%$%e5917859391%_
                                                   (gx#syntax-e
                                                    _%$%tl5912359628%_)))
                                              (let ((_%$%tl5918059398%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5917859391%_)))
                                                    (_%$%hd5917959395%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5917859391%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl5918059398%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl5911759608%_)
                                                        (let ((_%__splice9942599426%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl5911759608%_
                                                                '0)))
                                                          (let ((_%$%tl5918359404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9942599426%_ '1)))
                        (_%$%target5918159401%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9942599426%_ '0))))
                    (if (gx#stx-null? _%$%tl5918359404%_)
                        (_%__match9960399604%_
                         _%$%e5911259591%_
                         _%$%hd5911359595%_
                         _%$%tl5911459598%_
                         _%$%e5911559601%_
                         _%$%hd5911659605%_
                         _%$%tl5911759608%_
                         _%$%e5911859611%_
                         _%$%hd5911959615%_
                         _%$%tl5912059618%_
                         _%$%e5912159621%_
                         _%$%hd5912259625%_
                         _%$%tl5912359628%_
                         _%$%e5917859391%_
                         _%$%hd5917959395%_
                         _%$%tl5918059398%_
                         _%__splice9942599426%_
                         _%$%target5918159401%_
                         _%$%tl5918359404%_)
                        (let () (declare (not safe)) (_%$%g5907959222%_)))))
                (let () (declare (not safe)) (_%$%g5907959222%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5907959222%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5907959222%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g105424_|
                                             _%$%hd5912259625%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl5912359628%_)
                                                (let ((_%$%e5920559269%_
                                                       (gx#syntax-e
                                                        _%$%tl5912359628%_)))
                                                  (let ((_%$%tl5920759276%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e5920559269%_)))
                                                        (_%$%hd5920659273%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e5920559269%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5920759276%_)
                                                        (if (gx#stx-pair/null?
                                                             _%$%tl5911759608%_)
                                                            (let ((_%__splice9942999430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%$%tl5911759608%_
                            '0)))
                      (let ((_%$%tl5921059282%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9942999430%_ '1)))
                            (_%$%target5920859279%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9942999430%_ '0))))
                        (if (gx#stx-null? _%$%tl5921059282%_)
                            (_%__match9964799648%_
                             _%$%e5911259591%_
                             _%$%hd5911359595%_
                             _%$%tl5911459598%_
                             _%$%e5911559601%_
                             _%$%hd5911659605%_
                             _%$%tl5911759608%_
                             _%$%e5911859611%_
                             _%$%hd5911959615%_
                             _%$%tl5912059618%_
                             _%$%e5912159621%_
                             _%$%hd5912259625%_
                             _%$%tl5912359628%_
                             _%$%e5920559269%_
                             _%$%hd5920659273%_
                             _%$%tl5920759276%_
                             _%__splice9942999430%_
                             _%$%target5920859279%_
                             _%$%tl5921059282%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5907959222%_)))))
                    (let () (declare (not safe)) (_%$%g5907959222%_)))
                (let () (declare (not safe)) (_%$%g5907959222%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5907959222%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5907959222%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5907959222%_)))))
                     (_%__match9947199472%_
                      (lambda (_%$%e5908559711%_
                               _%$%hd5908659715%_
                               _%$%tl5908759718%_
                               _%$%e5908859721%_
                               _%$%hd5908959725%_
                               _%$%tl5909059728%_
                               _%$%e5909159731%_
                               _%$%hd5909259735%_
                               _%$%tl5909359738%_
                               _%$%e5909459741%_
                               _%$%hd5909559745%_
                               _%$%tl5909659748%_
                               _%$%e5909759751%_
                               _%$%hd5909859755%_
                               _%$%tl5909959758%_
                               _%__splice9941399414%_
                               _%$%target5910059761%_
                               _%$%tl5910259764%_)
                        (letrec ((_%$%loop5910359767%_
                                  (lambda (_%$%hd5910159771%_
                                           _%$%body5910759774%_)
                                    (if (gx#stx-pair? _%$%hd5910159771%_)
                                        (let ((_%$%e5910459776%_
                                               (gx#syntax-e
                                                _%$%hd5910159771%_)))
                                          (let ((_%$%lp-tl5910659783%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5910459776%_)))
                                                (_%$%lp-hd5910559780%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5910459776%_))))
                                            (_%$%loop5910359767%_
                                             _%$%lp-tl5910659783%_
                                             (cons _%$%lp-hd5910559780%_
                                                   _%$%body5910759774%_))))
                                        (let ((_%$%body5910859786%_
                                               (reverse _%$%body5910759774%_)))
                                          (let ((_%$%g5908159789%_
                                                 _%$%body5910859786%_)
                                                (_%$%g5908259791%_
                                                 _%$%hd5909859755%_)
                                                (_%$%g5908359792%_
                                                 _%$%hd5909559745%_)
                                                (_%$%g5908459793%_
                                                 _%$%hd5909259735%_))
                                            (if (let ((__tmp105425
                                                       (gx#syntax-local-value
                                                        _%$%g5908259791%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp105425))
                                                (_%__kont9941199412%_
                                                 _%$%g5908159789%_
                                                 _%$%g5908259791%_
                                                 _%$%g5908359792%_
                                                 _%$%g5908459793%_)
                                                (_%__match9949599496%_
                                                 _%$%e5908559711%_
                                                 _%$%hd5908659715%_
                                                 _%$%tl5908759718%_
                                                 _%$%e5908859721%_
                                                 _%$%hd5908959725%_
                                                 _%$%tl5909059728%_
                                                 _%$%e5909159731%_
                                                 _%$%hd5909259735%_
                                                 _%$%tl5909359738%_
                                                 _%$%e5909459741%_
                                                 _%$%hd5909559745%_
                                                 _%$%tl5909659748%_))))))))
                          (_%$%loop5910359767%_ _%$%target5910059761%_ '())))))
                (if (gx#stx-pair? _%__stx9940899409%_)
                    (let ((_%$%e5908559711%_
                           (gx#syntax-e _%__stx9940899409%_)))
                      (let ((_%$%tl5908759718%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5908559711%_)))
                            (_%$%hd5908659715%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5908559711%_))))
                        (if (gx#stx-pair? _%$%tl5908759718%_)
                            (let ((_%$%e5908859721%_
                                   (gx#syntax-e _%$%tl5908759718%_)))
                              (let ((_%$%tl5909059728%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5908859721%_)))
                                    (_%$%hd5908959725%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5908859721%_))))
                                (if (gx#stx-pair? _%$%hd5908959725%_)
                                    (let ((_%$%e5909159731%_
                                           (gx#syntax-e _%$%hd5908959725%_)))
                                      (let ((_%$%tl5909359738%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5909159731%_)))
                                            (_%$%hd5909259735%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5909159731%_))))
                                        (if (gx#stx-pair? _%$%tl5909359738%_)
                                            (let ((_%$%e5909459741%_
                                                   (gx#syntax-e
                                                    _%$%tl5909359738%_)))
                                              (let ((_%$%tl5909659748%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5909459741%_)))
                                                    (_%$%hd5909559745%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5909459741%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl5909659748%_)
                                                    (let ((_%$%e5909759751%_
                                                           (gx#syntax-e
                                                            _%$%tl5909659748%_)))
                                                      (let ((_%$%tl5909959758%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5909759751%_)))
                    (_%$%hd5909859755%_
                     (let () (declare (not safe)) (##car _%$%e5909759751%_))))
                (if (gx#stx-null? _%$%tl5909959758%_)
                    (if (gx#stx-pair/null? _%$%tl5909059728%_)
                        (let ((_%__splice9941399414%_
                               (gx#syntax-split-splice->vector
                                _%$%tl5909059728%_
                                '0)))
                          (let ((_%$%tl5910259764%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9941399414%_ '1)))
                                (_%$%target5910059761%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9941399414%_ '0))))
                            (if (gx#stx-null? _%$%tl5910259764%_)
                                (_%__match9947199472%_
                                 _%$%e5908559711%_
                                 _%$%hd5908659715%_
                                 _%$%tl5908759718%_
                                 _%$%e5908859721%_
                                 _%$%hd5908959725%_
                                 _%$%tl5909059728%_
                                 _%$%e5909159731%_
                                 _%$%hd5909259735%_
                                 _%$%tl5909359738%_
                                 _%$%e5909459741%_
                                 _%$%hd5909559745%_
                                 _%$%tl5909659748%_
                                 _%$%e5909759751%_
                                 _%$%hd5909859755%_
                                 _%$%tl5909959758%_
                                 _%__splice9941399414%_
                                 _%$%target5910059761%_
                                 _%$%tl5910259764%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5907959222%_)))))
                        (let () (declare (not safe)) (_%$%g5907959222%_)))
                    (let () (declare (not safe)) (_%$%g5907959222%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5907959222%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5907959222%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5907959222%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5907959222%_)))))
                    (let () (declare (not safe)) (_%$%g5907959222%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx60281%_)
        (let* ((_%__stx9965099651%_ _%stx60281%_)
               (_%$%g6028660346%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9965099651%_))))
          (let ((_%__kont9965399654%_
                 (lambda (_%$%g6028860902%_ _%$%g6028960904%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%$%g6028960904%_ '()))
                               (foldr (lambda (_%$%g6092060923%_
                                               _%$%g6092160926%_)
                                        (cons _%$%g6092060923%_
                                              _%$%g6092160926%_))
                                      '()
                                      _%$%g6028860902%_)))))
                (_%__kont9965799658%_
                 (lambda (_%$%g6030560490%_ _%$%g6030660492%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%$%g6030660492%_)
                       (let* ((_%$%g6051260519%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx60281%_
                                _%$%g6030660492%_))
                              (_%$%E6051460525%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%$%g6051260519%_
                                        '([var . parts]))
                                 (void)))
                              (_%$%K6051560823%_
                               (lambda (_%parts60529%_ _%var60531%_)
                                 (let ((_%$e60533%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var60531%_))))
                                   (if _%$e60533%_
                                       (let _%loop60540%_ ((_%parts60543%_
                                                            _%parts60529%_)
                                                           (_%type60545%_
                                                            (##direct-structure-ref
                                                             _%$e60533%_
                                                             '2
                                                             gerbil/core/contract~TypeEnv#type-env::t
                                                             '#f))
                                                           (_%object60546%_
                                                            _%var60531%_)
                                                           (_%checked-method?60547%_
                                                            (##direct-structure-ref
                                                             _%$e60533%_
                                                             '3
                                                             gerbil/core/contract~TypeEnv#type-env::t
                                                             '#f))
                                                           (_%nil-check?60548%_
                                                            '#f))
                                         (let* ((_%$%parts6054960557%_
                                                 _%parts60543%_)
                                                (_%$%else6055160618%_
                                                 (lambda ()
                                                   (let* ((_%$%g6056960577%_
                                                           (lambda (_%$%g6057060573%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%$%g6057060573%_)))
                                                          (_%$%g6056860614%_
                                                           (lambda (_%$%g6057060581%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%%app)
                           (cons _%$%g6057060581%_
                                 (foldr (lambda (_%$%g6060560608%_
                                                 _%$%g6060660611%_)
                                          (cons _%$%g6060560608%_
                                                _%$%g6060660611%_))
                                        '()
                                        _%$%g6030560490%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g6056860614%_
                                                      _%object60546%_))))
                                                (_%$%K6055360797%_
                                                 (lambda (_%rest60622%_
                                                          _%part60624%_)
                                                   (if (and (not _%nil-check?60548%_)
                                                            (let ((__tmp105426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (symbol->string _%part60624%_)))
                      (declare (not safe))
                      (##string-prefix? '"?" __tmp105426)))
               (let ((_%str60628%_ (symbol->string _%part60624%_)))
                 (_%loop60540%_
                  (cons (let ((__tmp105427
                               (substring
                                _%str60628%_
                                '1
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%str60628%_)))))
                          (declare (not safe))
                          (##string->symbol __tmp105427))
                        _%rest60622%_)
                  _%type60545%_
                  _%object60546%_
                  _%checked-method?60547%_
                  '#t))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/mop~MOP-2#class-type-info::t
                      _%type60545%_))
                   (let* ((_%$%g6063360648%_
                           (lambda (_%$%g6063460644%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g6063460644%_)))
                          (_%$%g6063260717%_
                           (lambda (_%$%g6063460652%_)
                             (if (gx#stx-pair? _%$%g6063460652%_)
                                 (let ((_%$%e6063760655%_
                                        (gx#syntax-e _%$%g6063460652%_)))
                                   (let ((_%$%hd6063860659%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e6063760655%_)))
                                         (_%$%tl6063960662%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e6063760655%_))))
                                     (if (gx#stx-pair? _%$%tl6063960662%_)
                                         (let ((_%$%e6064060665%_
                                                (gx#syntax-e
                                                 _%$%tl6063960662%_)))
                                           (let ((_%$%hd6064160669%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e6064060665%_)))
                                                 (_%$%tl6064260672%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e6064060665%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl6064260672%_)
                                                 (if (null? _%rest60622%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '%%app)
                                                           (cons (cons _%$%hd6064160669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%$%hd6063860659%_ '()))
                         (foldr (lambda (_%$%g6069660699%_ _%$%g6069760702%_)
                                  (cons _%$%g6069660699%_ _%$%g6069760702%_))
                                '()
                                _%$%g6030560490%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$e60705%_
                                                            (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                             _%type60545%_
                                                             _%part60624%_)))
                                                       (if _%$e60705%_
                                                           (let ((_%slot-type60712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx60281%_
                             _%$e60705%_))))
                     (_%loop60540%_
                      _%rest60622%_
                      _%slot-type60712%_
                      (cons _%$%hd6064160669%_ (cons _%$%hd6063860659%_ '()))
                      (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                       _%type60545%_
                       _%part60624%_)
                      '#f))
                   (gx#raise-syntax-error
                    '#f
                    '"unresolved dotted reference value; unknown type for slot"
                    _%stx60281%_
                    _%$%g6030660492%_
                    _%part60624%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g6063360648%_
                                                  _%$%g6063460652%_))))
                                         (_%$%g6063360648%_
                                          _%$%g6063460652%_))))
                                 (_%$%g6063360648%_ _%$%g6063460652%_)))))
                     (_%$%g6063260717%_
                      (list (if _%nil-check?60548%_
                                (cons 'check-nil! (cons _%object60546%_ '()))
                                _%object60546%_)
                            (|gerbil/core/contract~Using[1]#get-slot-accessor|
                             _%stx60281%_
                             _%type60545%_
                             _%part60624%_))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%type60545%_))
                       (if (null? _%rest60622%_)
                           (let* ((_%$%g6072360738%_
                                   (lambda (_%$%g6072460734%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g6072460734%_)))
                                  (_%$%g6072260791%_
                                   (lambda (_%$%g6072460742%_)
                                     (if (gx#stx-pair? _%$%g6072460742%_)
                                         (let ((_%$%e6072760745%_
                                                (gx#syntax-e
                                                 _%$%g6072460742%_)))
                                           (let ((_%$%hd6072860749%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e6072760745%_)))
                                                 (_%$%tl6072960752%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e6072760745%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl6072960752%_)
                                                 (let ((_%$%e6073060755%_
                                                        (gx#syntax-e
                                                         _%$%tl6072960752%_)))
                                                   (let ((_%$%hd6073160759%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e6073060755%_)))
                                                         (_%$%tl6073260762%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e6073060755%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl6073260762%_)
                                                         (cons _%$%hd6073160759%_
                                                               (cons _%$%hd6072860749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_%$%g6078260785%_
                                             _%$%g6078360788%_)
                                      (cons _%$%g6078260785%_
                                            _%$%g6078360788%_))
                                    '()
                                    _%$%g6030560490%_)))
                 (_%$%g6072360738%_ _%$%g6072460742%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g6072360738%_
                                                  _%$%g6072460742%_))))
                                         (_%$%g6072360738%_
                                          _%$%g6072460742%_)))))
                             (_%$%g6072260791%_
                              (list (if _%nil-check?60548%_
                                        (cons 'check-nil!
                                              (cons _%object60546%_ '()))
                                        _%object60546%_)
                                    (gx#stx-identifier
                                     _%$%g6030660492%_
                                     (if _%checked-method?60547%_ '"" '"&")
                                     (let ((__obj105219 _%type60545%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj105219
                                              'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj105219
                                              '2
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj105219
                                            'name)))
                                     '"-"
                                     _%part60624%_))))
                           (gx#raise-syntax-error
                            '#f
                            '"illegal dotted reference; interface has no slots"
                            _%stx60281%_
                            _%$%g6030660492%_
                            _%part60624%_))
                       (gx#raise-syntax-error
                        '#f
                        '"unexpected type"
                        _%stx60281%_
                        _%type60545%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%$%parts6054960557%_)
                                               (let ((_%$%hd6055460801%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%parts6054960557%_)))
                                                     (_%$%tl6055560804%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%parts6054960557%_))))
                                                 (let* ((_%part60807%_
                                                         _%$%hd6055460801%_)
                                                        (_%rest60810%_
                                                         _%$%tl6055560804%_))
                                                   (_%$%K6055360797%_
                                                    _%rest60810%_
                                                    _%part60807%_)))
                                               (_%$%else6055160618%_))))
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%$%g6030660492%_
                                                   (foldr (lambda (_%$%g6081460817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g6081560820%_)
                    (cons _%$%g6081460817%_ _%$%g6081560820%_))
                  '()
                  _%$%g6030560490%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%$%g6051260519%_)
                             (let ((_%$%hd6051660827%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%g6051260519%_)))
                                   (_%$%tl6051760830%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%g6051260519%_))))
                               (let* ((_%var60833%_ _%$%hd6051660827%_)
                                      (_%parts60836%_ _%$%tl6051760830%_))
                                 (_%$%K6051560823%_
                                  _%parts60836%_
                                  _%var60833%_)))
                             (_%$%E6051460525%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%$%g6030660492%_
                                   (foldr (lambda (_%$%g6083860841%_
                                                   _%$%g6083960844%_)
                                            (cons _%$%g6083860841%_
                                                  _%$%g6083960844%_))
                                          '()
                                          _%$%g6030560490%_))))))
                (_%__kont9966199662%_
                 (lambda (_%$%g6032860391%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%$%g6040660409%_ _%$%g6040760412%_)
                                  (cons _%$%g6040660409%_ _%$%g6040760412%_))
                                '()
                                _%$%g6032860391%_)))))
            (let* ((_%__match9973799738%_
                    (lambda (_%$%e6032960353%_
                             _%$%hd6033060357%_
                             _%$%tl6033160360%_
                             _%__splice9966399664%_
                             _%$%target6033260363%_
                             _%$%tl6033460366%_)
                      (letrec ((_%$%loop6033560369%_
                                (lambda (_%$%hd6033360373%_
                                         _%$%arg6033960376%_)
                                  (if (gx#stx-pair? _%$%hd6033360373%_)
                                      (let ((_%$%e6033660378%_
                                             (gx#syntax-e _%$%hd6033360373%_)))
                                        (let ((_%$%lp-tl6033860385%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e6033660378%_)))
                                              (_%$%lp-hd6033760382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e6033660378%_))))
                                          (_%$%loop6033560369%_
                                           _%$%lp-tl6033860385%_
                                           (cons _%$%lp-hd6033760382%_
                                                 _%$%arg6033960376%_))))
                                      (let ((_%$%arg6034060388%_
                                             (reverse _%$%arg6033960376%_)))
                                        (_%__kont9966199662%_
                                         _%$%arg6034060388%_))))))
                        (_%$%loop6033560369%_ _%$%target6033260363%_ '()))))
                   (_%__match9972399724%_
                    (lambda (_%$%e6030760422%_
                             _%$%hd6030860426%_
                             _%$%tl6030960429%_
                             _%$%e6031060432%_
                             _%$%hd6031160436%_
                             _%$%tl6031260439%_
                             _%$%e6031360442%_
                             _%$%hd6031460446%_
                             _%$%tl6031560449%_
                             _%$%e6031660452%_
                             _%$%hd6031760456%_
                             _%$%tl6031860459%_
                             _%__splice9965999660%_
                             _%$%target6031960462%_
                             _%$%tl6032160465%_)
                      (letrec ((_%$%loop6032260468%_
                                (lambda (_%$%hd6032060472%_
                                         _%$%rand6032660475%_)
                                  (if (gx#stx-pair? _%$%hd6032060472%_)
                                      (let ((_%$%e6032360477%_
                                             (gx#syntax-e _%$%hd6032060472%_)))
                                        (let ((_%$%lp-tl6032560484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e6032360477%_)))
                                              (_%$%lp-hd6032460481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e6032360477%_))))
                                          (_%$%loop6032260468%_
                                           _%$%lp-tl6032560484%_
                                           (cons _%$%lp-hd6032460481%_
                                                 _%$%rand6032660475%_))))
                                      (let ((_%$%rand6032760487%_
                                             (reverse _%$%rand6032660475%_)))
                                        (_%__kont9965799658%_
                                         _%$%rand6032760487%_
                                         _%$%hd6031760456%_))))))
                        (_%$%loop6032260468%_ _%$%target6031960462%_ '()))))
                   (_%__match9969799698%_
                    (lambda (_%$%e6030760422%_
                             _%$%hd6030860426%_
                             _%$%tl6030960429%_
                             _%$%e6031060432%_
                             _%$%hd6031160436%_
                             _%$%tl6031260439%_)
                      (if (gx#stx-pair? _%$%hd6031160436%_)
                          (let ((_%$%e6031360442%_
                                 (gx#syntax-e _%$%hd6031160436%_)))
                            (let ((_%$%tl6031560449%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e6031360442%_)))
                                  (_%$%hd6031460446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e6031360442%_))))
                              (if (gx#identifier? _%$%hd6031460446%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g105428_|
                                       _%$%hd6031460446%_)
                                      (if (gx#stx-pair? _%$%tl6031560449%_)
                                          (let ((_%$%e6031660452%_
                                                 (gx#syntax-e
                                                  _%$%tl6031560449%_)))
                                            (let ((_%$%tl6031860459%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e6031660452%_)))
                                                  (_%$%hd6031760456%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e6031660452%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl6031860459%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl6031260439%_)
                                                      (let ((_%__splice9965999660%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl6031260439%_
                                                              '0)))
                                                        (let ((_%$%tl6032160465%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9965999660%_ '1)))
                      (_%$%target6031960462%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9965999660%_ '0))))
                  (if (gx#stx-null? _%$%tl6032160465%_)
                      (_%__match9972399724%_
                       _%$%e6030760422%_
                       _%$%hd6030860426%_
                       _%$%tl6030960429%_
                       _%$%e6031060432%_
                       _%$%hd6031160436%_
                       _%$%tl6031260439%_
                       _%$%e6031360442%_
                       _%$%hd6031460446%_
                       _%$%tl6031560449%_
                       _%$%e6031660452%_
                       _%$%hd6031760456%_
                       _%$%tl6031860459%_
                       _%__splice9965999660%_
                       _%$%target6031960462%_
                       _%$%tl6032160465%_)
                      (if (gx#stx-pair/null? _%$%tl6030960429%_)
                          (let ((_%__splice9966399664%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl6030960429%_
                                  '0)))
                            (let ((_%$%tl6033460366%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9966399664%_ '1)))
                                  (_%$%target6033260363%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9966399664%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl6033460366%_)
                                  (_%__match9973799738%_
                                   _%$%e6030760422%_
                                   _%$%hd6030860426%_
                                   _%$%tl6030960429%_
                                   _%__splice9966399664%_
                                   _%$%target6033260363%_
                                   _%$%tl6033460366%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g6028660346%_)))))
                          (let () (declare (not safe)) (_%$%g6028660346%_))))))
              (if (gx#stx-pair/null? _%$%tl6030960429%_)
                  (let ((_%__splice9966399664%_
                         (gx#syntax-split-splice->vector
                          _%$%tl6030960429%_
                          '0)))
                    (let ((_%$%tl6033460366%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9966399664%_ '1)))
                          (_%$%target6033260363%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9966399664%_ '0))))
                      (if (gx#stx-null? _%$%tl6033460366%_)
                          (_%__match9973799738%_
                           _%$%e6030760422%_
                           _%$%hd6030860426%_
                           _%$%tl6030960429%_
                           _%__splice9966399664%_
                           _%$%target6033260363%_
                           _%$%tl6033460366%_)
                          (let () (declare (not safe)) (_%$%g6028660346%_)))))
                  (let () (declare (not safe)) (_%$%g6028660346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl6030960429%_)
                                                      (let ((_%__splice9966399664%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl6030960429%_
                                                              '0)))
                                                        (let ((_%$%tl6033460366%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9966399664%_ '1)))
                      (_%$%target6033260363%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9966399664%_ '0))))
                  (if (gx#stx-null? _%$%tl6033460366%_)
                      (_%__match9973799738%_
                       _%$%e6030760422%_
                       _%$%hd6030860426%_
                       _%$%tl6030960429%_
                       _%__splice9966399664%_
                       _%$%target6033260363%_
                       _%$%tl6033460366%_)
                      (let () (declare (not safe)) (_%$%g6028660346%_)))))
              (let () (declare (not safe)) (_%$%g6028660346%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%$%tl6030960429%_)
                                              (let ((_%__splice9966399664%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl6030960429%_
                                                      '0)))
                                                (let ((_%$%tl6033460366%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9966399664%_
                                                          '1)))
                                                      (_%$%target6033260363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9966399664%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl6033460366%_)
                                                      (_%__match9973799738%_
                                                       _%$%e6030760422%_
                                                       _%$%hd6030860426%_
                                                       _%$%tl6030960429%_
                                                       _%__splice9966399664%_
                                                       _%$%target6033260363%_
                                                       _%$%tl6033460366%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g6028660346%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g6028660346%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl6030960429%_)
                                          (let ((_%__splice9966399664%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl6030960429%_
                                                  '0)))
                                            (let ((_%$%tl6033460366%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9966399664%_
                                                      '1)))
                                                  (_%$%target6033260363%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9966399664%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl6033460366%_)
                                                  (_%__match9973799738%_
                                                   _%$%e6030760422%_
                                                   _%$%hd6030860426%_
                                                   _%$%tl6030960429%_
                                                   _%__splice9966399664%_
                                                   _%$%target6033260363%_
                                                   _%$%tl6033460366%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g6028660346%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g6028660346%_))))
                                  (if (gx#stx-pair/null? _%$%tl6030960429%_)
                                      (let ((_%__splice9966399664%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl6030960429%_
                                              '0)))
                                        (let ((_%$%tl6033460366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9966399664%_
                                                  '1)))
                                              (_%$%target6033260363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9966399664%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl6033460366%_)
                                              (_%__match9973799738%_
                                               _%$%e6030760422%_
                                               _%$%hd6030860426%_
                                               _%$%tl6030960429%_
                                               _%__splice9966399664%_
                                               _%$%target6033260363%_
                                               _%$%tl6033460366%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g6028660346%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g6028660346%_))))))
                          (if (gx#stx-pair/null? _%$%tl6030960429%_)
                              (let ((_%__splice9966399664%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl6030960429%_
                                      '0)))
                                (let ((_%$%tl6033460366%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9966399664%_
                                          '1)))
                                      (_%$%target6033260363%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9966399664%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl6033460366%_)
                                      (_%__match9973799738%_
                                       _%$%e6030760422%_
                                       _%$%hd6030860426%_
                                       _%$%tl6030960429%_
                                       _%__splice9966399664%_
                                       _%$%target6033260363%_
                                       _%$%tl6033460366%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g6028660346%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g6028660346%_))))))
                   (_%__match9968599686%_
                    (lambda (_%$%e6029060854%_
                             _%$%hd6029160858%_
                             _%$%tl6029260861%_
                             _%$%e6029360864%_
                             _%$%hd6029460868%_
                             _%$%tl6029560871%_
                             _%__splice9965599656%_
                             _%$%target6029660874%_
                             _%$%tl6029860877%_)
                      (letrec ((_%$%loop6029960880%_
                                (lambda (_%$%hd6029760884%_
                                         _%$%rand6030360887%_)
                                  (if (gx#stx-pair? _%$%hd6029760884%_)
                                      (let ((_%$%e6030060889%_
                                             (gx#syntax-e _%$%hd6029760884%_)))
                                        (let ((_%$%lp-tl6030260896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e6030060889%_)))
                                              (_%$%lp-hd6030160893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e6030060889%_))))
                                          (_%$%loop6029960880%_
                                           _%$%lp-tl6030260896%_
                                           (cons _%$%lp-hd6030160893%_
                                                 _%$%rand6030360887%_))))
                                      (let ((_%$%rand6030460899%_
                                             (reverse _%$%rand6030360887%_)))
                                        (let ((_%$%g6028860902%_
                                               _%$%rand6030460899%_)
                                              (_%$%g6028960904%_
                                               _%$%hd6029460868%_))
                                          (if (gx#identifier?
                                               _%$%g6028960904%_)
                                              (_%__kont9965399654%_
                                               _%$%g6028860902%_
                                               _%$%g6028960904%_)
                                              (_%__match9969799698%_
                                               _%$%e6029060854%_
                                               _%$%hd6029160858%_
                                               _%$%tl6029260861%_
                                               _%$%e6029360864%_
                                               _%$%hd6029460868%_
                                               _%$%tl6029560871%_))))))))
                        (_%$%loop6029960880%_ _%$%target6029660874%_ '())))))
              (if (gx#stx-pair? _%__stx9965099651%_)
                  (let ((_%$%e6029060854%_ (gx#syntax-e _%__stx9965099651%_)))
                    (let ((_%$%tl6029260861%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e6029060854%_)))
                          (_%$%hd6029160858%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e6029060854%_))))
                      (if (gx#stx-pair? _%$%tl6029260861%_)
                          (let ((_%$%e6029360864%_
                                 (gx#syntax-e _%$%tl6029260861%_)))
                            (let ((_%$%tl6029560871%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e6029360864%_)))
                                  (_%$%hd6029460868%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e6029360864%_))))
                              (if (gx#stx-pair/null? _%$%tl6029560871%_)
                                  (let ((_%__splice9965599656%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl6029560871%_
                                          '0)))
                                    (let ((_%$%tl6029860877%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9965599656%_
                                              '1)))
                                          (_%$%target6029660874%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9965599656%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl6029860877%_)
                                          (_%__match9968599686%_
                                           _%$%e6029060854%_
                                           _%$%hd6029160858%_
                                           _%$%tl6029260861%_
                                           _%$%e6029360864%_
                                           _%$%hd6029460868%_
                                           _%$%tl6029560871%_
                                           _%__splice9965599656%_
                                           _%$%target6029660874%_
                                           _%$%tl6029860877%_)
                                          (if (gx#stx-pair? _%$%hd6029460868%_)
                                              (let ((_%$%e6031360442%_
                                                     (gx#syntax-e
                                                      _%$%hd6029460868%_)))
                                                (let ((_%$%tl6031560449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e6031360442%_)))
                                                      (_%$%hd6031460446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e6031360442%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd6031460446%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g105428_|
                                                           _%$%hd6031460446%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl6031560449%_)
                                                              (let ((_%$%e6031660452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl6031560449%_)))
                        (let ((_%$%tl6031860459%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e6031660452%_)))
                              (_%$%hd6031760456%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e6031660452%_))))
                          (if (gx#stx-pair/null? _%$%tl6029260861%_)
                              (let ((_%__splice9966399664%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl6029260861%_
                                      '0)))
                                (let ((_%$%tl6033460366%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9966399664%_
                                          '1)))
                                      (_%$%target6033260363%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9966399664%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl6033460366%_)
                                      (_%__match9973799738%_
                                       _%$%e6029060854%_
                                       _%$%hd6029160858%_
                                       _%$%tl6029260861%_
                                       _%__splice9966399664%_
                                       _%$%target6033260363%_
                                       _%$%tl6033460366%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g6028660346%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g6028660346%_)))))
                      (if (gx#stx-pair/null? _%$%tl6029260861%_)
                          (let ((_%__splice9966399664%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl6029260861%_
                                  '0)))
                            (let ((_%$%tl6033460366%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9966399664%_ '1)))
                                  (_%$%target6033260363%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9966399664%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl6033460366%_)
                                  (_%__match9973799738%_
                                   _%$%e6029060854%_
                                   _%$%hd6029160858%_
                                   _%$%tl6029260861%_
                                   _%__splice9966399664%_
                                   _%$%target6033260363%_
                                   _%$%tl6033460366%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g6028660346%_)))))
                          (let () (declare (not safe)) (_%$%g6028660346%_))))
                  (if (gx#stx-pair/null? _%$%tl6029260861%_)
                      (let ((_%__splice9966399664%_
                             (gx#syntax-split-splice->vector
                              _%$%tl6029260861%_
                              '0)))
                        (let ((_%$%tl6033460366%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9966399664%_ '1)))
                              (_%$%target6033260363%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9966399664%_ '0))))
                          (if (gx#stx-null? _%$%tl6033460366%_)
                              (_%__match9973799738%_
                               _%$%e6029060854%_
                               _%$%hd6029160858%_
                               _%$%tl6029260861%_
                               _%__splice9966399664%_
                               _%$%target6033260363%_
                               _%$%tl6033460366%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g6028660346%_)))))
                      (let () (declare (not safe)) (_%$%g6028660346%_))))
              (if (gx#stx-pair/null? _%$%tl6029260861%_)
                  (let ((_%__splice9966399664%_
                         (gx#syntax-split-splice->vector
                          _%$%tl6029260861%_
                          '0)))
                    (let ((_%$%tl6033460366%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9966399664%_ '1)))
                          (_%$%target6033260363%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9966399664%_ '0))))
                      (if (gx#stx-null? _%$%tl6033460366%_)
                          (_%__match9973799738%_
                           _%$%e6029060854%_
                           _%$%hd6029160858%_
                           _%$%tl6029260861%_
                           _%__splice9966399664%_
                           _%$%target6033260363%_
                           _%$%tl6033460366%_)
                          (let () (declare (not safe)) (_%$%g6028660346%_)))))
                  (let () (declare (not safe)) (_%$%g6028660346%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%$%tl6029260861%_)
                                                  (let ((_%__splice9966399664%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl6029260861%_
                                                          '0)))
                                                    (let ((_%$%tl6033460366%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9966399664%_
                                                              '1)))
                                                          (_%$%target6033260363%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9966399664%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl6033460366%_)
                                                          (_%__match9973799738%_
                                                           _%$%e6029060854%_
                                                           _%$%hd6029160858%_
                                                           _%$%tl6029260861%_
                                                           _%__splice9966399664%_
                                                           _%$%target6033260363%_
                                                           _%$%tl6033460366%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g6028660346%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g6028660346%_)))))))
                                  (if (gx#stx-pair? _%$%hd6029460868%_)
                                      (let ((_%$%e6031360442%_
                                             (gx#syntax-e _%$%hd6029460868%_)))
                                        (let ((_%$%tl6031560449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e6031360442%_)))
                                              (_%$%hd6031460446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e6031360442%_))))
                                          (if (gx#identifier?
                                               _%$%hd6031460446%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g105428_|
                                                   _%$%hd6031460446%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl6031560449%_)
                                                      (let ((_%$%e6031660452%_
                                                             (gx#syntax-e
                                                              _%$%tl6031560449%_)))
                                                        (let ((_%$%tl6031860459%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e6031660452%_)))
                      (_%$%hd6031760456%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e6031660452%_))))
                  (if (gx#stx-pair/null? _%$%tl6029260861%_)
                      (let ((_%__splice9966399664%_
                             (gx#syntax-split-splice->vector
                              _%$%tl6029260861%_
                              '0)))
                        (let ((_%$%tl6033460366%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9966399664%_ '1)))
                              (_%$%target6033260363%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9966399664%_ '0))))
                          (if (gx#stx-null? _%$%tl6033460366%_)
                              (_%__match9973799738%_
                               _%$%e6029060854%_
                               _%$%hd6029160858%_
                               _%$%tl6029260861%_
                               _%__splice9966399664%_
                               _%$%target6033260363%_
                               _%$%tl6033460366%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g6028660346%_)))))
                      (let () (declare (not safe)) (_%$%g6028660346%_)))))
              (if (gx#stx-pair/null? _%$%tl6029260861%_)
                  (let ((_%__splice9966399664%_
                         (gx#syntax-split-splice->vector
                          _%$%tl6029260861%_
                          '0)))
                    (let ((_%$%tl6033460366%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9966399664%_ '1)))
                          (_%$%target6033260363%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9966399664%_ '0))))
                      (if (gx#stx-null? _%$%tl6033460366%_)
                          (_%__match9973799738%_
                           _%$%e6029060854%_
                           _%$%hd6029160858%_
                           _%$%tl6029260861%_
                           _%__splice9966399664%_
                           _%$%target6033260363%_
                           _%$%tl6033460366%_)
                          (let () (declare (not safe)) (_%$%g6028660346%_)))))
                  (let () (declare (not safe)) (_%$%g6028660346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl6029260861%_)
                                                      (let ((_%__splice9966399664%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl6029260861%_
                                                              '0)))
                                                        (let ((_%$%tl6033460366%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9966399664%_ '1)))
                      (_%$%target6033260363%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9966399664%_ '0))))
                  (if (gx#stx-null? _%$%tl6033460366%_)
                      (_%__match9973799738%_
                       _%$%e6029060854%_
                       _%$%hd6029160858%_
                       _%$%tl6029260861%_
                       _%__splice9966399664%_
                       _%$%target6033260363%_
                       _%$%tl6033460366%_)
                      (let () (declare (not safe)) (_%$%g6028660346%_)))))
              (let () (declare (not safe)) (_%$%g6028660346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%$%tl6029260861%_)
                                                  (let ((_%__splice9966399664%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl6029260861%_
                                                          '0)))
                                                    (let ((_%$%tl6033460366%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9966399664%_
                                                              '1)))
                                                          (_%$%target6033260363%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9966399664%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl6033460366%_)
                                                          (_%__match9973799738%_
                                                           _%$%e6029060854%_
                                                           _%$%hd6029160858%_
                                                           _%$%tl6029260861%_
                                                           _%__splice9966399664%_
                                                           _%$%target6033260363%_
                                                           _%$%tl6033460366%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g6028660346%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g6028660346%_))))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl6029260861%_)
                                          (let ((_%__splice9966399664%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl6029260861%_
                                                  '0)))
                                            (let ((_%$%tl6033460366%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9966399664%_
                                                      '1)))
                                                  (_%$%target6033260363%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9966399664%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl6033460366%_)
                                                  (_%__match9973799738%_
                                                   _%$%e6029060854%_
                                                   _%$%hd6029160858%_
                                                   _%$%tl6029260861%_
                                                   _%__splice9966399664%_
                                                   _%$%target6033260363%_
                                                   _%$%tl6033460366%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g6028660346%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g6028660346%_)))))))
                          (if (gx#stx-pair/null? _%$%tl6029260861%_)
                              (let ((_%__splice9966399664%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl6029260861%_
                                      '0)))
                                (let ((_%$%tl6033460366%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9966399664%_
                                          '1)))
                                      (_%$%target6033260363%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9966399664%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl6033460366%_)
                                      (_%__match9973799738%_
                                       _%$%e6029060854%_
                                       _%$%hd6029160858%_
                                       _%$%tl6029260861%_
                                       _%__splice9966399664%_
                                       _%$%target6033260363%_
                                       _%$%tl6033460366%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g6028660346%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g6028660346%_))))))
                  (let () (declare (not safe)) (_%$%g6028660346%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx60936%_)
        (let* ((_%__stx9974099741%_ _%stx60936%_)
               (_%$%g6094060961%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9974099741%_))))
          (let ((_%__kont9974399744%_
                 (lambda (_%$%g6094261029%_)
                   (let* ((_%$%g6104161048%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx60936%_
                            _%$%g6094261029%_))
                          (_%$%E6104361054%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%$%g6104161048%_
                                    '([var . parts]))
                             (void)))
                          (_%$%K6104461270%_
                           (lambda (_%parts61058%_ _%var61060%_)
                             (let ((_%$e61062%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var61060%_))))
                               (if _%$e61062%_
                                   (let _%loop61069%_ ((_%parts61072%_
                                                        _%parts61058%_)
                                                       (_%type61074%_
                                                        (##direct-structure-ref
                                                         _%$e61062%_
                                                         '2
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%object61075%_
                                                        _%var61060%_)
                                                       (_%nil-check?61076%_
                                                        '#f))
                                     (let* ((_%$%parts6107761085%_
                                             _%parts61072%_)
                                            (_%$%else6107961097%_
                                             (lambda () _%object61075%_))
                                            (_%$%K6108161252%_
                                             (lambda (_%rest61101%_
                                                      _%part61103%_)
                                               (if (and (not _%nil-check?61076%_)
                                                        (let ((__tmp105429
                                                               (symbol->string
                                                                _%part61103%_)))
                                                          (declare (not safe))
                                                          (##string-prefix?
                                                           '"?"
                                                           __tmp105429)))
                                                   (let ((_%str61107%_
                                                          (symbol->string
                                                           _%part61103%_)))
                                                     (_%loop61069%_
                                                      (cons (let ((__tmp105430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (substring
                            _%str61107%_
                            '1
                            (let ()
                              (declare (not safe))
                              (##string-length _%str61107%_)))))
                      (declare (not safe))
                      (##string->symbol __tmp105430))
                    _%rest61101%_)
              _%type61074%_
              _%object61075%_
              '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (class-instance?
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          _%type61074%_))
                                                       (let* ((_%$%g6111261127%_
                                                               (lambda (_%$%g6111361123%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g6111361123%_)))
                      (_%$%g6111161244%_
                       (lambda (_%$%g6111361131%_)
                         (if (gx#stx-pair? _%$%g6111361131%_)
                             (let ((_%$%e6111661134%_
                                    (gx#syntax-e _%$%g6111361131%_)))
                               (let ((_%$%hd6111761138%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e6111661134%_)))
                                     (_%$%tl6111861141%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e6111661134%_))))
                                 (if (gx#stx-pair? _%$%tl6111861141%_)
                                     (let ((_%$%e6111961144%_
                                            (gx#syntax-e _%$%tl6111861141%_)))
                                       (let ((_%$%hd6112061148%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e6111961144%_)))
                                             (_%$%tl6112161151%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e6111961144%_))))
                                         (if (gx#stx-null? _%$%tl6112161151%_)
                                             (if (null? _%rest61101%_)
                                                 (let ((_%$e61186%_
                                                        (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                         _%type61074%_
                                                         _%part61103%_)))
                                                   (if _%$e61186%_
                                                       (let* ((_%$%g6119361201%_
                                                               (lambda (_%$%g6119461197%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g6119461197%_)))
                      (_%$%g6119261224%_
                       (lambda (_%$%g6119461205%_)
                         (cons (gx#datum->syntax '#f 'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@type)
                                           (cons _%$%g6119461205%_ '()))
                                     (cons (cons _%$%hd6112061148%_
                                                 (cons _%$%hd6111761138%_ '()))
                                           '()))))))
                 (_%$%g6119261224%_
                  (let ()
                    (declare (not safe))
                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                     _%stx60936%_
                     _%$e61186%_))))
               (if _%nil-check?61076%_
                   (cons _%$%hd6112061148%_
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%$%hd6111761138%_ '()))
                               '()))
                   (cons _%$%hd6112061148%_ (cons _%$%hd6111761138%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e61232%_
                                                        (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                         _%type61074%_
                                                         _%part61103%_)))
                                                   (if _%$e61232%_
                                                       (let ((_%type61239%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/contract~TypeReference[1]#resolve-type|
                         _%stx60936%_
                         _%$e61232%_))))
                 (if _%nil-check?61076%_
                     (_%loop61069%_
                      _%rest61101%_
                      _%type61239%_
                      (cons _%$%hd6112061148%_
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%$%hd6111761138%_ '()))
                                  '()))
                      '#f)
                     (_%loop61069%_
                      _%rest61101%_
                      _%type61239%_
                      (cons _%$%hd6112061148%_ (cons _%$%hd6111761138%_ '()))
                      '#f)))
               (gx#raise-syntax-error
                '#f
                '"unresolved dotted reference; unknown type for slot"
                _%stx60936%_
                _%$%g6094261029%_
                _%part61103%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g6111261127%_
                                              _%$%g6111361131%_))))
                                     (_%$%g6111261127%_ _%$%g6111361131%_))))
                             (_%$%g6111261127%_ _%$%g6111361131%_)))))
                 (_%$%g6111161244%_
                  (list (if _%nil-check?61076%_
                            (list 'check-nil! _%object61075%_)
                            _%object61075%_)
                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                         _%stx60936%_
                         _%type61074%_
                         _%part61103%_))))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/contract~InterfaceInfo#interface-info::t
                      _%type61074%_))
                   (gx#raise-syntax-error
                    '#f
                    '"illegal dotted reference; interface has no slots"
                    _%stx60936%_
                    _%$%g6094261029%_)
                   (gx#raise-syntax-error
                    '#f
                    '"unexpected type"
                    _%stx60936%_
                    _%type61074%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%$%parts6107761085%_)
                                           (let ((_%$%hd6108261256%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%parts6107761085%_)))
                                                 (_%$%tl6108361259%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%parts6107761085%_))))
                                             (let* ((_%part61262%_
                                                     _%$%hd6108261256%_)
                                                    (_%rest61265%_
                                                     _%$%tl6108361259%_))
                                               (_%$%K6108161252%_
                                                _%rest61265%_
                                                _%part61262%_)))
                                           (_%$%else6107961097%_))))
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%$%g6094261029%_ '())))))))
                     (if (pair? _%$%g6104161048%_)
                         (let ((_%$%hd6104561274%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%g6104161048%_)))
                               (_%$%tl6104661277%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%g6104161048%_))))
                           (let* ((_%var61280%_ _%$%hd6104561274%_)
                                  (_%parts61283%_ _%$%tl6104661277%_))
                             (_%$%K6104461270%_ _%parts61283%_ _%var61280%_)))
                         (_%$%E6104361054%_)))))
                (_%__kont9974599746%_
                 (lambda (_%$%g6094960988%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%$%g6094960988%_ '())))))
            (let ((_%__match9976199762%_
                   (lambda (_%$%e6094361009%_
                            _%$%hd6094461013%_
                            _%$%tl6094561016%_
                            _%$%e6094661019%_
                            _%$%hd6094761023%_
                            _%$%tl6094861026%_)
                     (let ((_%$%g6094261029%_ _%$%hd6094761023%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%$%g6094261029%_)
                           (_%__kont9974399744%_ _%$%g6094261029%_)
                           (_%__kont9974599746%_ _%$%hd6094761023%_))))))
              (if (gx#stx-pair? _%__stx9974099741%_)
                  (let ((_%$%e6094361009%_ (gx#syntax-e _%__stx9974099741%_)))
                    (let ((_%$%tl6094561016%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e6094361009%_)))
                          (_%$%hd6094461013%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e6094361009%_))))
                      (if (gx#stx-pair? _%$%tl6094561016%_)
                          (let ((_%$%e6094661019%_
                                 (gx#syntax-e _%$%tl6094561016%_)))
                            (let ((_%$%tl6094861026%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e6094661019%_)))
                                  (_%$%hd6094761023%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e6094661019%_))))
                              (if (gx#stx-null? _%$%tl6094861026%_)
                                  (_%__match9976199762%_
                                   _%$%e6094361009%_
                                   _%$%hd6094461013%_
                                   _%$%tl6094561016%_
                                   _%$%e6094661019%_
                                   _%$%hd6094761023%_
                                   _%$%tl6094861026%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g6094060961%_)))))
                          (let () (declare (not safe)) (_%$%g6094060961%_)))))
                  (let () (declare (not safe)) (_%$%g6094060961%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx61290%_)
        (let* ((_%__stx9977899779%_ _%stx61290%_)
               (_%$%g6129461323%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9977899779%_))))
          (let ((_%__kont9978199782%_
                 (lambda (_%$%g6129661415%_ _%$%g6129761417%_)
                   (let* ((_%$%g6143161438%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx61290%_
                            _%$%g6129761417%_))
                          (_%$%E6143361444%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%$%g6143161438%_
                                    '([var . parts]))
                             (void)))
                          (_%$%K6143461674%_
                           (lambda (_%parts61448%_ _%var61450%_)
                             (let ((_%$e61452%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var61450%_))))
                               (if _%$e61452%_
                                   (let _%loop61459%_ ((_%parts61462%_
                                                        _%parts61448%_)
                                                       (_%type61464%_
                                                        (##direct-structure-ref
                                                         _%$e61452%_
                                                         '2
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%object61465%_
                                                        _%var61450%_)
                                                       (_%checked-mutator?61466%_
                                                        (##direct-structure-ref
                                                         _%$e61452%_
                                                         '3
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%nil-check?61467%_
                                                        '#f))
                                     (let* ((_%$%parts6146861475%_
                                             _%parts61462%_)
                                            (_%$%E6147061481%_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _%$%parts6146861475%_
                                                      '([part . rest]))
                                               (void)))
                                            (_%$%K6147161656%_
                                             (lambda (_%rest61485%_
                                                      _%part61487%_)
                                               (if (and (not _%nil-check?61467%_)
                                                        (let ((__tmp105431
                                                               (symbol->string
                                                                _%part61487%_)))
                                                          (declare (not safe))
                                                          (##string-prefix?
                                                           '"?"
                                                           __tmp105431)))
                                                   (let ((_%str61491%_
                                                          (symbol->string
                                                           _%part61487%_)))
                                                     (_%loop61459%_
                                                      (cons (let ((__tmp105432
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (substring
                            _%str61491%_
                            '1
                            (let ()
                              (declare (not safe))
                              (##string-length _%str61491%_)))))
                      (declare (not safe))
                      (##string->symbol __tmp105432))
                    _%rest61485%_)
              _%type61464%_
              _%object61465%_
              _%checked-mutator?61466%_
              '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (class-instance?
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          _%type61464%_))
                                                       (if (null? _%rest61485%_)
                                                           (let* ((_%$%g6149861513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g6149961509%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g6149961509%_)))
                          (_%$%g6149761570%_
                           (lambda (_%$%g6149961517%_)
                             (if (gx#stx-pair? _%$%g6149961517%_)
                                 (let ((_%$%e6150261520%_
                                        (gx#syntax-e _%$%g6149961517%_)))
                                   (let ((_%$%hd6150361524%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e6150261520%_)))
                                         (_%$%tl6150461527%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e6150261520%_))))
                                     (if (gx#stx-pair? _%$%tl6150461527%_)
                                         (let ((_%$%e6150561530%_
                                                (gx#syntax-e
                                                 _%$%tl6150461527%_)))
                                           (let ((_%$%hd6150661534%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e6150561530%_)))
                                                 (_%$%tl6150761537%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e6150561530%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl6150761537%_)
                                                 (if _%nil-check?61467%_
                                                     (cons _%$%hd6150661534%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'check-nil!)
                               (cons _%$%hd6150361524%_ '()))
                         (cons _%$%g6129661415%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%hd6150661534%_
                                                           (cons _%$%hd6150361524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g6129661415%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g6149861513%_
                                                  _%$%g6149961517%_))))
                                         (_%$%g6149861513%_
                                          _%$%g6149961517%_))))
                                 (_%$%g6149861513%_ _%$%g6149961517%_)))))
                     (_%$%g6149761570%_
                      (list _%object61465%_
                            (|gerbil/core/contract~Using[1]#get-slot-mutator|
                             _%stx61290%_
                             _%type61464%_
                             _%part61487%_
                             (if _%checked-mutator?61466%_
                                 (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                  _%type61464%_
                                  _%part61487%_)
                                 '#f)))))
                   (let ((_%$e61574%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type61464%_
                           _%part61487%_)))
                     (if _%$e61574%_
                         (let* ((_%next-type61581%_
                                 (let ()
                                   (declare (not safe))
                                   (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                    _%stx61290%_
                                    _%$e61574%_)))
                                (_%$%g6158461599%_
                                 (lambda (_%$%g6158561595%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g6158561595%_)))
                                (_%$%g6158361646%_
                                 (lambda (_%$%g6158561603%_)
                                   (if (gx#stx-pair? _%$%g6158561603%_)
                                       (let ((_%$%e6158861606%_
                                              (gx#syntax-e _%$%g6158561603%_)))
                                         (let ((_%$%hd6158961610%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e6158861606%_)))
                                               (_%$%tl6159061613%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e6158861606%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl6159061613%_)
                                               (let ((_%$%e6159161616%_
                                                      (gx#syntax-e
                                                       _%$%tl6159061613%_)))
                                                 (let ((_%$%hd6159261620%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e6159161616%_)))
                                                       (_%$%tl6159361623%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e6159161616%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl6159361623%_)
                                                       (_%loop61459%_
                                                        _%rest61485%_
                                                        _%next-type61581%_
                                                        (cons _%$%hd6159261620%_
                                                              (cons _%$%hd6158961610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                 _%type61464%_
                 _%part61487%_)
                '#f)
               (_%$%g6158461599%_ _%$%g6158561603%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g6158461599%_
                                                _%$%g6158561603%_))))
                                       (_%$%g6158461599%_
                                        _%$%g6158561603%_)))))
                           (_%$%g6158361646%_
                            (list (if _%nil-check?61467%_
                                      (list 'check-nil! _%object61465%_)
                                      _%object61465%_)
                                  (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                   _%stx61290%_
                                   _%type61464%_
                                   _%part61487%_))))
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted setter; unknown type for slot"
                          _%stx61290%_
                          _%$%g6129761417%_
                          _%part61487%_))))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/contract~InterfaceInfo#interface-info::t
                      _%type61464%_))
                   (gx#raise-syntax-error
                    '#f
                    '"illegal dotted setter; interface has no slots"
                    _%stx61290%_
                    _%$%g6129761417%_)
                   (gx#raise-syntax-error
                    '#f
                    '"unexpected type"
                    _%stx61290%_
                    _%type61464%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%$%parts6146861475%_)
                                           (let ((_%$%hd6147261660%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%parts6146861475%_)))
                                                 (_%$%tl6147361663%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%parts6146861475%_))))
                                             (let* ((_%part61666%_
                                                     _%$%hd6147261660%_)
                                                    (_%rest61669%_
                                                     _%$%tl6147361663%_))
                                               (_%$%K6147161656%_
                                                _%rest61669%_
                                                _%part61666%_)))
                                           (_%$%E6147061481%_))))
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx61290%_)))))))
                     (if (pair? _%$%g6143161438%_)
                         (let ((_%$%hd6143561678%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%g6143161438%_)))
                               (_%$%tl6143661681%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%g6143161438%_))))
                           (let* ((_%var61684%_ _%$%hd6143561678%_)
                                  (_%parts61687%_ _%$%tl6143661681%_))
                             (_%$%K6143461674%_ _%parts61687%_ _%var61684%_)))
                         (_%$%E6143361444%_)))))
                (_%__kont9978399784%_
                 (lambda (_%$%g6130761360%_ _%$%g6130861362%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx61290%_)))))
            (let ((_%__match9980599806%_
                   (lambda (_%$%e6129861385%_
                            _%$%hd6129961389%_
                            _%$%tl6130061392%_
                            _%$%e6130161395%_
                            _%$%hd6130261399%_
                            _%$%tl6130361402%_
                            _%$%e6130461405%_
                            _%$%hd6130561409%_
                            _%$%tl6130661412%_)
                     (let ((_%$%g6129661415%_ _%$%hd6130561409%_)
                           (_%$%g6129761417%_ _%$%hd6130261399%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%$%g6129761417%_)
                           (_%__kont9978199782%_
                            _%$%g6129661415%_
                            _%$%g6129761417%_)
                           (_%__kont9978399784%_
                            _%$%hd6130561409%_
                            _%$%hd6130261399%_))))))
              (if (gx#stx-pair? _%__stx9977899779%_)
                  (let ((_%$%e6129861385%_ (gx#syntax-e _%__stx9977899779%_)))
                    (let ((_%$%tl6130061392%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e6129861385%_)))
                          (_%$%hd6129961389%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e6129861385%_))))
                      (if (gx#stx-pair? _%$%tl6130061392%_)
                          (let ((_%$%e6130161395%_
                                 (gx#syntax-e _%$%tl6130061392%_)))
                            (let ((_%$%tl6130361402%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e6130161395%_)))
                                  (_%$%hd6130261399%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e6130161395%_))))
                              (if (gx#stx-pair? _%$%tl6130361402%_)
                                  (let ((_%$%e6130461405%_
                                         (gx#syntax-e _%$%tl6130361402%_)))
                                    (let ((_%$%tl6130661412%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e6130461405%_)))
                                          (_%$%hd6130561409%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e6130461405%_))))
                                      (if (gx#stx-null? _%$%tl6130661412%_)
                                          (_%__match9980599806%_
                                           _%$%e6129861385%_
                                           _%$%hd6129961389%_
                                           _%$%tl6130061392%_
                                           _%$%e6130161395%_
                                           _%$%hd6130261399%_
                                           _%$%tl6130361402%_
                                           _%$%e6130461405%_
                                           _%$%hd6130561409%_
                                           _%$%tl6130661412%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g6129461323%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g6129461323%_)))))
                          (let () (declare (not safe)) (_%$%g6129461323%_)))))
                  (let () (declare (not safe)) (_%$%g6129461323%_))))))))))
