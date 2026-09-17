(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g129100_|
    (gx#core-deserialize-mark
     '(0
       ($%arg128203 . _%$%arg128203128261%_)
       ($%arg128204 . _%$%arg128204128275%_)
       (id . _%id128228%_)
       (arg . _%arg128291%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g129101_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g129100_|)))
  (define |[1]#_g129102_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value128958%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g129103_|
    (##structure
     gx#syntax-quote::t
     '_%new-value128958%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g129102_|)))
  (define |[1]#_g129105_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g129106_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g129105_|)))
  (define |[1]#_g129107_|
    (gx#core-deserialize-mark
     '(0
       ($%arg128324 . _%$%arg128324128381%_)
       (id . _%id128348%_)
       (arg . _%arg128411%_)
       ($%arg128325 . _%$%arg128325128395%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g129108_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g129107_|)))
  (define |[1]#_g129110_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g129111_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g129110_|)))
  (define |[1]#_g129112_|
    (gx#core-deserialize-mark
     '(0
       ($%arg128444 . _%$%arg128444128501%_)
       ($%arg128445 . _%$%arg128445128515%_)
       (id . _%id128468%_)
       (arg . _%arg128531%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g129113_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g129112_|)))
  (define |[1]#_g129115_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g129116_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g129115_|)))
  (define |[1]#_g129117_|
    (gx#core-deserialize-mark
     '(0
       ($%arg128565 . _%$%arg128565128635%_)
       (id . _%id128588%_)
       ($%arg128564 . _%$%arg128564128621%_)
       (arg . _%arg128651%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g129118_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g129117_|)))
  (define |[1]#_g129119_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value128708%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g129120_|
    (##structure
     gx#syntax-quote::t
     '_%new-value128708%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g129119_|)))
  (define |[1]#_g129122_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g129123_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g129122_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx128185%_)
        (let* ((_%__stx128986128987%_ _%$stx128185%_)
               (_%$%g128190128211%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx128986128987%_))))
          (let ((_%__kont128989128990%_
                 (lambda (_%$%g128192128277%_)
                   (cons (gx#datum->syntax
                          |[1]#_g129101_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g129103_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp129104
                                                  (lambda (_%$%g128292128295%_
                                                           _%$%g128293128298%_)
                                                    (cons _%$%g128292128295%_
                                                          _%$%g128293128298%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp129104
                                              '()
                                              _%$%g128192128277%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g129106_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g129103_|
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
                            |[1]#_g129103_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont128993128994%_
                 (lambda (_%$%g128205128218%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%$%g128189128230%_
                    (lambda ()
                      (let ((_%$%g128205128218%_ _%__stx128986128987%_))
                        (if (gx#identifier? _%$%g128205128218%_)
                            (_%__kont128993128994%_ _%$%g128205128218%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g128190128211%_))))))
                   (_%__match129009129010%_
                    (lambda (_%$%e128193128237%_
                             _%$%hd128194128241%_
                             _%$%tl128195128244%_
                             _%__splice128991128992%_
                             _%$%target128196128247%_
                             _%$%tl128198128250%_)
                      (letrec ((_%$%loop128199128253%_
                                (lambda (_%$%hd128197128257%_
                                         _%$%arg128203128260%_)
                                  (if (gx#stx-pair? _%$%hd128197128257%_)
                                      (let ((_%$%e128200128263%_
                                             (gx#syntax-e
                                              _%$%hd128197128257%_)))
                                        (let ((_%$%lp-tl128202128270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e128200128263%_)))
                                              (_%$%lp-hd128201128267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e128200128263%_))))
                                          (_%$%loop128199128253%_
                                           _%$%lp-tl128202128270%_
                                           (cons _%$%lp-hd128201128267%_
                                                 _%$%arg128203128260%_))))
                                      (let ((_%$%arg128204128273%_
                                             (reverse _%$%arg128203128260%_)))
                                        (_%__kont128989128990%_
                                         _%$%arg128204128273%_))))))
                        (_%$%loop128199128253%_
                         _%$%target128196128247%_
                         '())))))
              (if (gx#stx-pair? _%__stx128986128987%_)
                  (let ((_%$%e128193128237%_
                         (gx#syntax-e _%__stx128986128987%_)))
                    (let ((_%$%tl128195128244%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e128193128237%_)))
                          (_%$%hd128194128241%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e128193128237%_))))
                      (if (gx#stx-pair/null? _%$%tl128195128244%_)
                          (let ((_%__splice128991128992%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl128195128244%_
                                  '0)))
                            (let ((_%$%tl128198128250%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128991128992%_
                                      '1)))
                                  (_%$%target128196128247%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128991128992%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl128198128250%_)
                                  (_%__match129009129010%_
                                   _%$%e128193128237%_
                                   _%$%hd128194128241%_
                                   _%$%tl128195128244%_
                                   _%__splice128991128992%_
                                   _%$%target128196128247%_
                                   _%$%tl128198128250%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g128189128230%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g128189128230%_)))))
                  (let () (declare (not safe)) (_%$%g128189128230%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx128306%_)
        (let* ((_%__stx129012129013%_ _%$stx128306%_)
               (_%$%g128311128332%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx129012129013%_))))
          (let ((_%__kont129015129016%_
                 (lambda (_%$%g128313128397%_)
                   (cons (gx#datum->syntax
                          |[1]#_g129108_|
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
                                     (cons (let ((__tmp129109
                                                  (lambda (_%$%g128412128415%_
                                                           _%$%g128413128418%_)
                                                    (cons _%$%g128412128415%_
                                                          _%$%g128413128418%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp129109
                                              '()
                                              _%$%g128313128397%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g129111_|
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
                (_%__kont129019129020%_
                 (lambda (_%$%g128326128339%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%$%g128310128350%_
                    (lambda ()
                      (let ((_%$%g128326128339%_ _%__stx129012129013%_))
                        (if (gx#identifier? _%$%g128326128339%_)
                            (_%__kont129019129020%_ _%$%g128326128339%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g128311128332%_))))))
                   (_%__match129035129036%_
                    (lambda (_%$%e128314128357%_
                             _%$%hd128315128361%_
                             _%$%tl128316128364%_
                             _%__splice129017129018%_
                             _%$%target128317128367%_
                             _%$%tl128319128370%_)
                      (letrec ((_%$%loop128320128373%_
                                (lambda (_%$%hd128318128377%_
                                         _%$%arg128324128380%_)
                                  (if (gx#stx-pair? _%$%hd128318128377%_)
                                      (let ((_%$%e128321128383%_
                                             (gx#syntax-e
                                              _%$%hd128318128377%_)))
                                        (let ((_%$%lp-tl128323128390%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e128321128383%_)))
                                              (_%$%lp-hd128322128387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e128321128383%_))))
                                          (_%$%loop128320128373%_
                                           _%$%lp-tl128323128390%_
                                           (cons _%$%lp-hd128322128387%_
                                                 _%$%arg128324128380%_))))
                                      (let ((_%$%arg128325128393%_
                                             (reverse _%$%arg128324128380%_)))
                                        (_%__kont129015129016%_
                                         _%$%arg128325128393%_))))))
                        (_%$%loop128320128373%_
                         _%$%target128317128367%_
                         '())))))
              (if (gx#stx-pair? _%__stx129012129013%_)
                  (let ((_%$%e128314128357%_
                         (gx#syntax-e _%__stx129012129013%_)))
                    (let ((_%$%tl128316128364%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e128314128357%_)))
                          (_%$%hd128315128361%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e128314128357%_))))
                      (if (gx#stx-pair/null? _%$%tl128316128364%_)
                          (let ((_%__splice129017129018%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl128316128364%_
                                  '0)))
                            (let ((_%$%tl128319128370%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129017129018%_
                                      '1)))
                                  (_%$%target128317128367%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129017129018%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl128319128370%_)
                                  (_%__match129035129036%_
                                   _%$%e128314128357%_
                                   _%$%hd128315128361%_
                                   _%$%tl128316128364%_
                                   _%__splice129017129018%_
                                   _%$%target128317128367%_
                                   _%$%tl128319128370%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g128310128350%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g128310128350%_)))))
                  (let () (declare (not safe)) (_%$%g128310128350%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx128426%_)
        (let* ((_%__stx129038129039%_ _%$stx128426%_)
               (_%$%g128431128452%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx129038129039%_))))
          (let ((_%__kont129041129042%_
                 (lambda (_%$%g128433128517%_)
                   (cons (gx#datum->syntax
                          |[1]#_g129113_|
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
                                     (cons (let ((__tmp129114
                                                  (lambda (_%$%g128532128535%_
                                                           _%$%g128533128538%_)
                                                    (cons _%$%g128532128535%_
                                                          _%$%g128533128538%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp129114
                                              '()
                                              _%$%g128433128517%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g129116_|
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
                (_%__kont129045129046%_
                 (lambda (_%$%g128446128459%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%$%g128430128470%_
                    (lambda ()
                      (let ((_%$%g128446128459%_ _%__stx129038129039%_))
                        (if (gx#identifier? _%$%g128446128459%_)
                            (_%__kont129045129046%_ _%$%g128446128459%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g128431128452%_))))))
                   (_%__match129061129062%_
                    (lambda (_%$%e128434128477%_
                             _%$%hd128435128481%_
                             _%$%tl128436128484%_
                             _%__splice129043129044%_
                             _%$%target128437128487%_
                             _%$%tl128439128490%_)
                      (letrec ((_%$%loop128440128493%_
                                (lambda (_%$%hd128438128497%_
                                         _%$%arg128444128500%_)
                                  (if (gx#stx-pair? _%$%hd128438128497%_)
                                      (let ((_%$%e128441128503%_
                                             (gx#syntax-e
                                              _%$%hd128438128497%_)))
                                        (let ((_%$%lp-tl128443128510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e128441128503%_)))
                                              (_%$%lp-hd128442128507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e128441128503%_))))
                                          (_%$%loop128440128493%_
                                           _%$%lp-tl128443128510%_
                                           (cons _%$%lp-hd128442128507%_
                                                 _%$%arg128444128500%_))))
                                      (let ((_%$%arg128445128513%_
                                             (reverse _%$%arg128444128500%_)))
                                        (_%__kont129041129042%_
                                         _%$%arg128445128513%_))))))
                        (_%$%loop128440128493%_
                         _%$%target128437128487%_
                         '())))))
              (if (gx#stx-pair? _%__stx129038129039%_)
                  (let ((_%$%e128434128477%_
                         (gx#syntax-e _%__stx129038129039%_)))
                    (let ((_%$%tl128436128484%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e128434128477%_)))
                          (_%$%hd128435128481%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e128434128477%_))))
                      (if (gx#stx-pair/null? _%$%tl128436128484%_)
                          (let ((_%__splice129043129044%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl128436128484%_
                                  '0)))
                            (let ((_%$%tl128439128490%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129043129044%_
                                      '1)))
                                  (_%$%target128437128487%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129043129044%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl128439128490%_)
                                  (_%__match129061129062%_
                                   _%$%e128434128477%_
                                   _%$%hd128435128481%_
                                   _%$%tl128436128484%_
                                   _%__splice129043129044%_
                                   _%$%target128437128487%_
                                   _%$%tl128439128490%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g128430128470%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g128430128470%_)))))
                  (let () (declare (not safe)) (_%$%g128430128470%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx128546%_)
        (let* ((_%__stx129064129065%_ _%$stx128546%_)
               (_%$%g128551128572%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx129064129065%_))))
          (let ((_%__kont129067129068%_
                 (lambda (_%$%g128553128637%_)
                   (cons (gx#datum->syntax
                          |[1]#_g129118_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g129120_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp129121
                                                  (lambda (_%$%g128652128655%_
                                                           _%$%g128653128658%_)
                                                    (cons _%$%g128652128655%_
                                                          _%$%g128653128658%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp129121
                                              '()
                                              _%$%g128553128637%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g129123_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g129120_|
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
                            |[1]#_g129120_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont129071129072%_
                 (lambda (_%$%g128566128579%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%$%g128550128590%_
                    (lambda ()
                      (let ((_%$%g128566128579%_ _%__stx129064129065%_))
                        (if (gx#identifier? _%$%g128566128579%_)
                            (_%__kont129071129072%_ _%$%g128566128579%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g128551128572%_))))))
                   (_%__match129087129088%_
                    (lambda (_%$%e128554128597%_
                             _%$%hd128555128601%_
                             _%$%tl128556128604%_
                             _%__splice129069129070%_
                             _%$%target128557128607%_
                             _%$%tl128559128610%_)
                      (letrec ((_%$%loop128560128613%_
                                (lambda (_%$%hd128558128617%_
                                         _%$%arg128564128620%_)
                                  (if (gx#stx-pair? _%$%hd128558128617%_)
                                      (let ((_%$%e128561128623%_
                                             (gx#syntax-e
                                              _%$%hd128558128617%_)))
                                        (let ((_%$%lp-tl128563128630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e128561128623%_)))
                                              (_%$%lp-hd128562128627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e128561128623%_))))
                                          (_%$%loop128560128613%_
                                           _%$%lp-tl128563128630%_
                                           (cons _%$%lp-hd128562128627%_
                                                 _%$%arg128564128620%_))))
                                      (let ((_%$%arg128565128633%_
                                             (reverse _%$%arg128564128620%_)))
                                        (_%__kont129067129068%_
                                         _%$%arg128565128633%_))))))
                        (_%$%loop128560128613%_
                         _%$%target128557128607%_
                         '())))))
              (if (gx#stx-pair? _%__stx129064129065%_)
                  (let ((_%$%e128554128597%_
                         (gx#syntax-e _%__stx129064129065%_)))
                    (let ((_%$%tl128556128604%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e128554128597%_)))
                          (_%$%hd128555128601%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e128554128597%_))))
                      (if (gx#stx-pair/null? _%$%tl128556128604%_)
                          (let ((_%__splice129069129070%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl128556128604%_
                                  '0)))
                            (let ((_%$%tl128559128610%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129069129070%_
                                      '1)))
                                  (_%$%target128557128607%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice129069129070%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl128559128610%_)
                                  (_%__match129087129088%_
                                   _%$%e128554128597%_
                                   _%$%hd128555128601%_
                                   _%$%tl128556128604%_
                                   _%__splice129069129070%_
                                   _%$%target128557128607%_
                                   _%$%tl128559128610%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g128550128590%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g128550128590%_)))))
                  (let () (declare (not safe)) (_%$%g128550128590%_))))))))))
