(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g179993_|
    (gx#core-deserialize-mark
     '(0
       ($%arg178843 . _%$%arg178843178901%_)
       (arg . _%arg178931%_)
       (id . _%id178868%_)
       ($%arg178844 . _%$%arg178844178915%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179994_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179993_|)))
  (define |[1]#_g179996_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179997_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179996_|)))
  (define |[1]#_g179998_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg179051%_)
       (id . _%id178988%_)
       ($%arg178965 . _%$%arg178965179035%_)
       ($%arg178964 . _%$%arg178964179021%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179999_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179998_|)))
  (define |[1]#_g180001_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g180002_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g180001_|)))
  (define |[1]#_g180003_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg179171%_)
       (id . _%id179108%_)
       ($%arg179085 . _%$%arg179085179155%_)
       ($%arg179084 . _%$%arg179084179141%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g180004_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g180003_|)))
  (define |[1]#_g180006_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g180007_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g180006_|)))
  (define |[1]#_g180008_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg179291%_)
       (id . _%id179228%_)
       ($%arg179204 . _%$%arg179204179261%_)
       ($%arg179205 . _%$%arg179205179275%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g180009_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g180008_|)))
  (define |[1]#_g180011_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g180012_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g180011_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx178825%_)
        (let* ((_%__stx179884179885%_ _%$stx178825%_)
               (_%$%g178830178851%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179884179885%_))))
          (let ((_%__kont179887179888%_
                 (lambda (_%$%g178832178917%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179994_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp179995
                                                  (lambda (_%$%g178932178935%_
                                                           _%$%g178933178938%_)
                                                    (cons _%$%g178932178935%_
                                                          _%$%g178933178938%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179995
                                              '()
                                              _%$%g178832178917%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179997_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'paths)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__set-load-path!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'paths)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont179891179892%_
                 (lambda (_%$%g178845178858%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%$%g178829178870%_
                    (lambda ()
                      (let ((_%$%g178845178858%_ _%__stx179884179885%_))
                        (if (gx#identifier? _%$%g178845178858%_)
                            (_%__kont179891179892%_ _%$%g178845178858%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g178830178851%_))))))
                   (_%__match179907179908%_
                    (lambda (_%$%e178833178877%_
                             _%$%hd178834178881%_
                             _%$%tl178835178884%_
                             _%__splice179889179890%_
                             _%$%target178836178887%_
                             _%$%tl178838178890%_)
                      (letrec ((_%$%loop178839178893%_
                                (lambda (_%$%hd178837178897%_
                                         _%$%arg178843178900%_)
                                  (if (gx#stx-pair? _%$%hd178837178897%_)
                                      (let ((_%$%e178840178903%_
                                             (gx#syntax-e
                                              _%$%hd178837178897%_)))
                                        (let ((_%$%lp-tl178842178910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e178840178903%_)))
                                              (_%$%lp-hd178841178907%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e178840178903%_))))
                                          (_%$%loop178839178893%_
                                           _%$%lp-tl178842178910%_
                                           (cons _%$%lp-hd178841178907%_
                                                 _%$%arg178843178900%_))))
                                      (let ((_%$%arg178844178913%_
                                             (reverse _%$%arg178843178900%_)))
                                        (_%__kont179887179888%_
                                         _%$%arg178844178913%_))))))
                        (_%$%loop178839178893%_
                         _%$%target178836178887%_
                         '())))))
              (if (gx#stx-pair? _%__stx179884179885%_)
                  (let ((_%$%e178833178877%_
                         (gx#syntax-e _%__stx179884179885%_)))
                    (let ((_%$%tl178835178884%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e178833178877%_)))
                          (_%$%hd178834178881%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e178833178877%_))))
                      (if (gx#stx-pair/null? _%$%tl178835178884%_)
                          (let ((_%__splice179889179890%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl178835178884%_
                                  '0)))
                            (let ((_%$%tl178838178890%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179889179890%_
                                      '1)))
                                  (_%$%target178836178887%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179889179890%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl178838178890%_)
                                  (_%__match179907179908%_
                                   _%$%e178833178877%_
                                   _%$%hd178834178881%_
                                   _%$%tl178835178884%_
                                   _%__splice179889179890%_
                                   _%$%target178836178887%_
                                   _%$%tl178838178890%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g178829178870%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g178829178870%_)))))
                  (let () (declare (not safe)) (_%$%g178829178870%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx178946%_)
        (let* ((_%__stx179910179911%_ _%$stx178946%_)
               (_%$%g178951178972%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179910179911%_))))
          (let ((_%__kont179913179914%_
                 (lambda (_%$%g178953179037%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179999_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp180000
                                                  (lambda (_%$%g179052179055%_
                                                           _%$%g179053179058%_)
                                                    (cons _%$%g179052179055%_
                                                          _%$%g179053179058%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp180000
                                              '()
                                              _%$%g178953179037%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g180002_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'modpath)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__load-module)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'modpath)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont179917179918%_
                 (lambda (_%$%g178966178979%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%$%g178950178990%_
                    (lambda ()
                      (let ((_%$%g178966178979%_ _%__stx179910179911%_))
                        (if (gx#identifier? _%$%g178966178979%_)
                            (_%__kont179917179918%_ _%$%g178966178979%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g178951178972%_))))))
                   (_%__match179933179934%_
                    (lambda (_%$%e178954178997%_
                             _%$%hd178955179001%_
                             _%$%tl178956179004%_
                             _%__splice179915179916%_
                             _%$%target178957179007%_
                             _%$%tl178959179010%_)
                      (letrec ((_%$%loop178960179013%_
                                (lambda (_%$%hd178958179017%_
                                         _%$%arg178964179020%_)
                                  (if (gx#stx-pair? _%$%hd178958179017%_)
                                      (let ((_%$%e178961179023%_
                                             (gx#syntax-e
                                              _%$%hd178958179017%_)))
                                        (let ((_%$%lp-tl178963179030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e178961179023%_)))
                                              (_%$%lp-hd178962179027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e178961179023%_))))
                                          (_%$%loop178960179013%_
                                           _%$%lp-tl178963179030%_
                                           (cons _%$%lp-hd178962179027%_
                                                 _%$%arg178964179020%_))))
                                      (let ((_%$%arg178965179033%_
                                             (reverse _%$%arg178964179020%_)))
                                        (_%__kont179913179914%_
                                         _%$%arg178965179033%_))))))
                        (_%$%loop178960179013%_
                         _%$%target178957179007%_
                         '())))))
              (if (gx#stx-pair? _%__stx179910179911%_)
                  (let ((_%$%e178954178997%_
                         (gx#syntax-e _%__stx179910179911%_)))
                    (let ((_%$%tl178956179004%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e178954178997%_)))
                          (_%$%hd178955179001%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e178954178997%_))))
                      (if (gx#stx-pair/null? _%$%tl178956179004%_)
                          (let ((_%__splice179915179916%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl178956179004%_
                                  '0)))
                            (let ((_%$%tl178959179010%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179915179916%_
                                      '1)))
                                  (_%$%target178957179007%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179915179916%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl178959179010%_)
                                  (_%__match179933179934%_
                                   _%$%e178954178997%_
                                   _%$%hd178955179001%_
                                   _%$%tl178956179004%_
                                   _%__splice179915179916%_
                                   _%$%target178957179007%_
                                   _%$%tl178959179010%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g178950178990%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g178950178990%_)))))
                  (let () (declare (not safe)) (_%$%g178950178990%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx179066%_)
        (let* ((_%__stx179936179937%_ _%$stx179066%_)
               (_%$%g179071179092%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179936179937%_))))
          (let ((_%__kont179939179940%_
                 (lambda (_%$%g179073179157%_)
                   (cons (gx#datum->syntax
                          |[1]#_g180004_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp180005
                                                  (lambda (_%$%g179172179175%_
                                                           _%$%g179173179178%_)
                                                    (cons _%$%g179172179175%_
                                                          _%$%g179173179178%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp180005
                                              '()
                                              _%$%g179073179157%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g180007_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'modpath)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__reload-module!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'modpath)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont179943179944%_
                 (lambda (_%$%g179086179099%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%$%g179070179110%_
                    (lambda ()
                      (let ((_%$%g179086179099%_ _%__stx179936179937%_))
                        (if (gx#identifier? _%$%g179086179099%_)
                            (_%__kont179943179944%_ _%$%g179086179099%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g179071179092%_))))))
                   (_%__match179959179960%_
                    (lambda (_%$%e179074179117%_
                             _%$%hd179075179121%_
                             _%$%tl179076179124%_
                             _%__splice179941179942%_
                             _%$%target179077179127%_
                             _%$%tl179079179130%_)
                      (letrec ((_%$%loop179080179133%_
                                (lambda (_%$%hd179078179137%_
                                         _%$%arg179084179140%_)
                                  (if (gx#stx-pair? _%$%hd179078179137%_)
                                      (let ((_%$%e179081179143%_
                                             (gx#syntax-e
                                              _%$%hd179078179137%_)))
                                        (let ((_%$%lp-tl179083179150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e179081179143%_)))
                                              (_%$%lp-hd179082179147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e179081179143%_))))
                                          (_%$%loop179080179133%_
                                           _%$%lp-tl179083179150%_
                                           (cons _%$%lp-hd179082179147%_
                                                 _%$%arg179084179140%_))))
                                      (let ((_%$%arg179085179153%_
                                             (reverse _%$%arg179084179140%_)))
                                        (_%__kont179939179940%_
                                         _%$%arg179085179153%_))))))
                        (_%$%loop179080179133%_
                         _%$%target179077179127%_
                         '())))))
              (if (gx#stx-pair? _%__stx179936179937%_)
                  (let ((_%$%e179074179117%_
                         (gx#syntax-e _%__stx179936179937%_)))
                    (let ((_%$%tl179076179124%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e179074179117%_)))
                          (_%$%hd179075179121%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e179074179117%_))))
                      (if (gx#stx-pair/null? _%$%tl179076179124%_)
                          (let ((_%__splice179941179942%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl179076179124%_
                                  '0)))
                            (let ((_%$%tl179079179130%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179941179942%_
                                      '1)))
                                  (_%$%target179077179127%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179941179942%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl179079179130%_)
                                  (_%__match179959179960%_
                                   _%$%e179074179117%_
                                   _%$%hd179075179121%_
                                   _%$%tl179076179124%_
                                   _%__splice179941179942%_
                                   _%$%target179077179127%_
                                   _%$%tl179079179130%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g179070179110%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g179070179110%_)))))
                  (let () (declare (not safe)) (_%$%g179070179110%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx179186%_)
        (let* ((_%__stx179962179963%_ _%$stx179186%_)
               (_%$%g179191179212%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179962179963%_))))
          (let ((_%__kont179965179966%_
                 (lambda (_%$%g179193179277%_)
                   (cons (gx#datum->syntax
                          |[1]#_g180009_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp180010
                                                  (lambda (_%$%g179292179295%_
                                                           _%$%g179293179298%_)
                                                    (cons _%$%g179292179295%_
                                                          _%$%g179293179298%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp180010
                                              '()
                                              _%$%g179193179277%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g180012_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'modpath)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__module-load-order)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'modpath)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont179969179970%_
                 (lambda (_%$%g179206179219%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%$%g179190179230%_
                    (lambda ()
                      (let ((_%$%g179206179219%_ _%__stx179962179963%_))
                        (if (gx#identifier? _%$%g179206179219%_)
                            (_%__kont179969179970%_ _%$%g179206179219%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g179191179212%_))))))
                   (_%__match179985179986%_
                    (lambda (_%$%e179194179237%_
                             _%$%hd179195179241%_
                             _%$%tl179196179244%_
                             _%__splice179967179968%_
                             _%$%target179197179247%_
                             _%$%tl179199179250%_)
                      (letrec ((_%$%loop179200179253%_
                                (lambda (_%$%hd179198179257%_
                                         _%$%arg179204179260%_)
                                  (if (gx#stx-pair? _%$%hd179198179257%_)
                                      (let ((_%$%e179201179263%_
                                             (gx#syntax-e
                                              _%$%hd179198179257%_)))
                                        (let ((_%$%lp-tl179203179270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e179201179263%_)))
                                              (_%$%lp-hd179202179267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e179201179263%_))))
                                          (_%$%loop179200179253%_
                                           _%$%lp-tl179203179270%_
                                           (cons _%$%lp-hd179202179267%_
                                                 _%$%arg179204179260%_))))
                                      (let ((_%$%arg179205179273%_
                                             (reverse _%$%arg179204179260%_)))
                                        (_%__kont179965179966%_
                                         _%$%arg179205179273%_))))))
                        (_%$%loop179200179253%_
                         _%$%target179197179247%_
                         '())))))
              (if (gx#stx-pair? _%__stx179962179963%_)
                  (let ((_%$%e179194179237%_
                         (gx#syntax-e _%__stx179962179963%_)))
                    (let ((_%$%tl179196179244%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e179194179237%_)))
                          (_%$%hd179195179241%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e179194179237%_))))
                      (if (gx#stx-pair/null? _%$%tl179196179244%_)
                          (let ((_%__splice179967179968%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl179196179244%_
                                  '0)))
                            (let ((_%$%tl179199179250%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179967179968%_
                                      '1)))
                                  (_%$%target179197179247%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179967179968%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl179199179250%_)
                                  (_%__match179985179986%_
                                   _%$%e179194179237%_
                                   _%$%hd179195179241%_
                                   _%$%tl179196179244%_
                                   _%__splice179967179968%_
                                   _%$%target179197179247%_
                                   _%$%tl179199179250%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g179190179230%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g179190179230%_)))))
                  (let () (declare (not safe)) (_%$%g179190179230%_))))))))))
