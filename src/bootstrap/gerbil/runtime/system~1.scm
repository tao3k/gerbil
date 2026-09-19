(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g129262_|
    (gx#core-deserialize-mark
     '(0
       ($%arg128365 . _%$%arg128365128423%_)
       ($%arg128366 . _%$%arg128366128437%_)
       (arg . _%arg128453%_)
       (id . _%id128390%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g129263_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g129262_|)))
  (define |[1]#_g129264_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value129120%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g129265_|
    (##structure
     gx#syntax-quote::t
     '_%new-value129120%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g129264_|)))
  (define |[1]#_g129267_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g129268_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g129267_|)))
  (define |[1]#_g129269_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg128573%_)
       ($%arg128486 . _%$%arg128486128543%_)
       ($%arg128487 . _%$%arg128487128557%_)
       (id . _%id128510%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g129270_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g129269_|)))
  (define |[1]#_g129272_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g129273_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g129272_|)))
  (define |[1]#_g129274_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg128693%_)
       ($%arg128607 . _%$%arg128607128677%_)
       ($%arg128606 . _%$%arg128606128663%_)
       (id . _%id128630%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g129275_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g129274_|)))
  (define |[1]#_g129277_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g129278_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g129277_|)))
  (define |[1]#_g129279_|
    (gx#core-deserialize-mark
     '(0
       ($%arg128727 . _%$%arg128727128797%_)
       (arg . _%arg128813%_)
       ($%arg128726 . _%$%arg128726128783%_)
       (id . _%id128750%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g129280_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g129279_|)))
  (define |[1]#_g129281_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value128870%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g129282_|
    (##structure
     gx#syntax-quote::t
     '_%new-value128870%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g129281_|)))
  (define |[1]#_g129284_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g129285_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g129284_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx128347%_)
        (let* ((_%__stx129148129149%_ _%$stx128347%_)
               (_%$%g128352128373%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx129148129149%_))))
          (let ((_%__kont129151129152%_
                 (lambda (_%$%g128354128439%_)
                   (cons (gx#datum->syntax
                          |[1]#_g129263_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g129265_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp129266
                                                  (lambda (_%$%g128454128457%_
                                                           _%$%g128455128460%_)
                                                    (cons _%$%g128454128457%_
                                                          _%$%g128455128460%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp129266
                                              '()
                                              _%$%g128354128439%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g129268_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g129265_|
                                                              'new-value
                                                              '#f
                                                              '#f)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__build-manifest-set!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |[1]#_g129265_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont129155129156%_
                 (lambda (_%$%g128367128380%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%$%g128351128392%_
                    (lambda ()
                      (let ((_%$%g128367128380%_ _%__stx129148129149%_))
                        (if (gx#identifier? _%$%g128367128380%_)
                            (_%__kont129155129156%_ _%$%g128367128380%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g128352128373%_))))))
                   (_%__match129171129172%_
                    (lambda (_%$%e128355128399%_
                             _%$%hd128356128403%_
                             _%$%tl128357128406%_
                             _%__splice129153129154%_
                             _%$%target128358128409%_
                             _%$%tl128360128412%_)
                      (letrec ((_%$%loop128361128415%_
                                (lambda (_%$%hd128359128419%_
                                         _%$%arg128365128422%_)
                                  (if (gx#stx-pair? _%$%hd128359128419%_)
                                      (let ((_%$%e128362128425%_
                                             (gx#syntax-e
                                              _%$%hd128359128419%_)))
                                        (let ((_%$%lp-tl128364128432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e128362128425%_)))
                                              (_%$%lp-hd128363128429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e128362128425%_))))
                                          (_%$%loop128361128415%_
                                           _%$%lp-tl128364128432%_
                                           (cons _%$%lp-hd128363128429%_
                                                 _%$%arg128365128422%_))))
                                      (let ((_%$%arg128366128435%_
                                             (reverse _%$%arg128365128422%_)))
                                        (_%__kont129151129152%_
                                         _%$%arg128366128435%_))))))
                        (_%$%loop128361128415%_
                         _%$%target128358128409%_
                         '())))))
              (if (gx#stx-pair? _%__stx129148129149%_)
                  (let ((_%$%e128355128399%_
                         (gx#syntax-e _%__stx129148129149%_)))
                    (let ((_%$%tl128357128406%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e128355128399%_)))
                          (_%$%hd128356128403%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e128355128399%_))))
                      (if (gx#stx-pair/null? _%$%tl128357128406%_)
                          (let ((_%__splice129153129154%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl128357128406%_
                                  '0)))
                            (let ((_%$%tl128360128412%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129153129154%_
                                      '1)))
                                  (_%$%target128358128409%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129153129154%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl128360128412%_)
                                  (_%__match129171129172%_
                                   _%$%e128355128399%_
                                   _%$%hd128356128403%_
                                   _%$%tl128357128406%_
                                   _%__splice129153129154%_
                                   _%$%target128358128409%_
                                   _%$%tl128360128412%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g128351128392%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g128351128392%_)))))
                  (let () (declare (not safe)) (_%$%g128351128392%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx128468%_)
        (let* ((_%__stx129174129175%_ _%$stx128468%_)
               (_%$%g128473128494%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx129174129175%_))))
          (let ((_%__kont129177129178%_
                 (lambda (_%$%g128475128559%_)
                   (cons (gx#datum->syntax
                          |[1]#_g129270_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'manifest)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '__build-manifest)
                                                       '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'port)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'current-output-port)
                           '())
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (let ((__tmp129271
                                                  (lambda (_%$%g128574128577%_
                                                           _%$%g128575128580%_)
                                                    (cons _%$%g128574128577%_
                                                          _%$%g128575128580%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp129271
                                              '()
                                              _%$%g128475128559%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g129273_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               (cons (cons (gx#datum->syntax '#f 'port)
                           (cons (gx#datum->syntax '#f ':)
                                 (cons (gx#datum->syntax '#f ':port) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__display-build-manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'manifest)
                           (cons (gx#datum->syntax '#f 'port) '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont129181129182%_
                 (lambda (_%$%g128488128501%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%$%g128472128512%_
                    (lambda ()
                      (let ((_%$%g128488128501%_ _%__stx129174129175%_))
                        (if (gx#identifier? _%$%g128488128501%_)
                            (_%__kont129181129182%_ _%$%g128488128501%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g128473128494%_))))))
                   (_%__match129197129198%_
                    (lambda (_%$%e128476128519%_
                             _%$%hd128477128523%_
                             _%$%tl128478128526%_
                             _%__splice129179129180%_
                             _%$%target128479128529%_
                             _%$%tl128481128532%_)
                      (letrec ((_%$%loop128482128535%_
                                (lambda (_%$%hd128480128539%_
                                         _%$%arg128486128542%_)
                                  (if (gx#stx-pair? _%$%hd128480128539%_)
                                      (let ((_%$%e128483128545%_
                                             (gx#syntax-e
                                              _%$%hd128480128539%_)))
                                        (let ((_%$%lp-tl128485128552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e128483128545%_)))
                                              (_%$%lp-hd128484128549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e128483128545%_))))
                                          (_%$%loop128482128535%_
                                           _%$%lp-tl128485128552%_
                                           (cons _%$%lp-hd128484128549%_
                                                 _%$%arg128486128542%_))))
                                      (let ((_%$%arg128487128555%_
                                             (reverse _%$%arg128486128542%_)))
                                        (_%__kont129177129178%_
                                         _%$%arg128487128555%_))))))
                        (_%$%loop128482128535%_
                         _%$%target128479128529%_
                         '())))))
              (if (gx#stx-pair? _%__stx129174129175%_)
                  (let ((_%$%e128476128519%_
                         (gx#syntax-e _%__stx129174129175%_)))
                    (let ((_%$%tl128478128526%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e128476128519%_)))
                          (_%$%hd128477128523%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e128476128519%_))))
                      (if (gx#stx-pair/null? _%$%tl128478128526%_)
                          (let ((_%__splice129179129180%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl128478128526%_
                                  '0)))
                            (let ((_%$%tl128481128532%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129179129180%_
                                      '1)))
                                  (_%$%target128479128529%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129179129180%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl128481128532%_)
                                  (_%__match129197129198%_
                                   _%$%e128476128519%_
                                   _%$%hd128477128523%_
                                   _%$%tl128478128526%_
                                   _%__splice129179129180%_
                                   _%$%target128479128529%_
                                   _%$%tl128481128532%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g128472128512%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g128472128512%_)))))
                  (let () (declare (not safe)) (_%$%g128472128512%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx128588%_)
        (let* ((_%__stx129200129201%_ _%$stx128588%_)
               (_%$%g128593128614%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx129200129201%_))))
          (let ((_%__kont129203129204%_
                 (lambda (_%$%g128595128679%_)
                   (cons (gx#datum->syntax
                          |[1]#_g129275_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'manifest)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '__build-manifest)
                                                       '()))
                                           '())
                                     (cons (let ((__tmp129276
                                                  (lambda (_%$%g128694128697%_
                                                           _%$%g128695128700%_)
                                                    (cons _%$%g128694128697%_
                                                          _%$%g128695128700%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp129276
                                              '()
                                              _%$%g128595128679%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g129278_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'manifest)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':list) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__build-manifest-string)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'manifest)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont129207129208%_
                 (lambda (_%$%g128608128621%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%$%g128592128632%_
                    (lambda ()
                      (let ((_%$%g128608128621%_ _%__stx129200129201%_))
                        (if (gx#identifier? _%$%g128608128621%_)
                            (_%__kont129207129208%_ _%$%g128608128621%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g128593128614%_))))))
                   (_%__match129223129224%_
                    (lambda (_%$%e128596128639%_
                             _%$%hd128597128643%_
                             _%$%tl128598128646%_
                             _%__splice129205129206%_
                             _%$%target128599128649%_
                             _%$%tl128601128652%_)
                      (letrec ((_%$%loop128602128655%_
                                (lambda (_%$%hd128600128659%_
                                         _%$%arg128606128662%_)
                                  (if (gx#stx-pair? _%$%hd128600128659%_)
                                      (let ((_%$%e128603128665%_
                                             (gx#syntax-e
                                              _%$%hd128600128659%_)))
                                        (let ((_%$%lp-tl128605128672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e128603128665%_)))
                                              (_%$%lp-hd128604128669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e128603128665%_))))
                                          (_%$%loop128602128655%_
                                           _%$%lp-tl128605128672%_
                                           (cons _%$%lp-hd128604128669%_
                                                 _%$%arg128606128662%_))))
                                      (let ((_%$%arg128607128675%_
                                             (reverse _%$%arg128606128662%_)))
                                        (_%__kont129203129204%_
                                         _%$%arg128607128675%_))))))
                        (_%$%loop128602128655%_
                         _%$%target128599128649%_
                         '())))))
              (if (gx#stx-pair? _%__stx129200129201%_)
                  (let ((_%$%e128596128639%_
                         (gx#syntax-e _%__stx129200129201%_)))
                    (let ((_%$%tl128598128646%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e128596128639%_)))
                          (_%$%hd128597128643%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e128596128639%_))))
                      (if (gx#stx-pair/null? _%$%tl128598128646%_)
                          (let ((_%__splice129205129206%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl128598128646%_
                                  '0)))
                            (let ((_%$%tl128601128652%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129205129206%_
                                      '1)))
                                  (_%$%target128599128649%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129205129206%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl128601128652%_)
                                  (_%__match129223129224%_
                                   _%$%e128596128639%_
                                   _%$%hd128597128643%_
                                   _%$%tl128598128646%_
                                   _%__splice129205129206%_
                                   _%$%target128599128649%_
                                   _%$%tl128601128652%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g128592128632%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g128592128632%_)))))
                  (let () (declare (not safe)) (_%$%g128592128632%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx128708%_)
        (let* ((_%__stx129226129227%_ _%$stx128708%_)
               (_%$%g128713128734%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx129226129227%_))))
          (let ((_%__kont129229129230%_
                 (lambda (_%$%g128715128799%_)
                   (cons (gx#datum->syntax
                          |[1]#_g129280_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g129282_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp129283
                                                  (lambda (_%$%g128814128817%_
                                                           _%$%g128815128820%_)
                                                    (cons _%$%g128814128817%_
                                                          _%$%g128815128820%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp129283
                                              '()
                                              _%$%g128715128799%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g129285_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g129282_|
                                                              'new-value
                                                              '#f
                                                              '#f)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':string) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__gerbil-greeting-set!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |[1]#_g129282_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont129233129234%_
                 (lambda (_%$%g128728128741%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%$%g128712128752%_
                    (lambda ()
                      (let ((_%$%g128728128741%_ _%__stx129226129227%_))
                        (if (gx#identifier? _%$%g128728128741%_)
                            (_%__kont129233129234%_ _%$%g128728128741%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g128713128734%_))))))
                   (_%__match129249129250%_
                    (lambda (_%$%e128716128759%_
                             _%$%hd128717128763%_
                             _%$%tl128718128766%_
                             _%__splice129231129232%_
                             _%$%target128719128769%_
                             _%$%tl128721128772%_)
                      (letrec ((_%$%loop128722128775%_
                                (lambda (_%$%hd128720128779%_
                                         _%$%arg128726128782%_)
                                  (if (gx#stx-pair? _%$%hd128720128779%_)
                                      (let ((_%$%e128723128785%_
                                             (gx#syntax-e
                                              _%$%hd128720128779%_)))
                                        (let ((_%$%lp-tl128725128792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e128723128785%_)))
                                              (_%$%lp-hd128724128789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e128723128785%_))))
                                          (_%$%loop128722128775%_
                                           _%$%lp-tl128725128792%_
                                           (cons _%$%lp-hd128724128789%_
                                                 _%$%arg128726128782%_))))
                                      (let ((_%$%arg128727128795%_
                                             (reverse _%$%arg128726128782%_)))
                                        (_%__kont129229129230%_
                                         _%$%arg128727128795%_))))))
                        (_%$%loop128722128775%_
                         _%$%target128719128769%_
                         '())))))
              (if (gx#stx-pair? _%__stx129226129227%_)
                  (let ((_%$%e128716128759%_
                         (gx#syntax-e _%__stx129226129227%_)))
                    (let ((_%$%tl128718128766%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e128716128759%_)))
                          (_%$%hd128717128763%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e128716128759%_))))
                      (if (gx#stx-pair/null? _%$%tl128718128766%_)
                          (let ((_%__splice129231129232%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl128718128766%_
                                  '0)))
                            (let ((_%$%tl128721128772%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129231129232%_
                                      '1)))
                                  (_%$%target128719128769%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129231129232%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl128721128772%_)
                                  (_%__match129249129250%_
                                   _%$%e128716128759%_
                                   _%$%hd128717128763%_
                                   _%$%tl128718128766%_
                                   _%__splice129231129232%_
                                   _%$%target128719128769%_
                                   _%$%tl128721128772%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g128712128752%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g128712128752%_)))))
                  (let () (declare (not safe)) (_%$%g128712128752%_))))))))))
