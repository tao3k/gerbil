(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g127073_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg126264%_)
       ($%arg126176 . _%$%arg126176126234%_)
       (id . _%id126201%_)
       ($%arg126177 . _%$%arg126177126248%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g127074_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g127073_|)))
  (define |[1]#_g127075_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value126931%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g127076_|
    (##structure
     gx#syntax-quote::t
     '_%new-value126931%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g127075_|)))
  (define |[1]#_g127078_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g127079_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g127078_|)))
  (define |[1]#_g127080_|
    (gx#core-deserialize-mark
     '(0
       ($%arg126297 . _%$%arg126297126354%_)
       (arg . _%arg126384%_)
       ($%arg126298 . _%$%arg126298126368%_)
       (id . _%id126321%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g127081_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g127080_|)))
  (define |[1]#_g127083_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g127084_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g127083_|)))
  (define |[1]#_g127085_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg126504%_)
       ($%arg126418 . _%$%arg126418126488%_)
       (id . _%id126441%_)
       ($%arg126417 . _%$%arg126417126474%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g127086_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g127085_|)))
  (define |[1]#_g127088_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g127089_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g127088_|)))
  (define |[1]#_g127090_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg126624%_)
       (id . _%id126561%_)
       ($%arg126537 . _%$%arg126537126594%_)
       ($%arg126538 . _%$%arg126538126608%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g127091_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g127090_|)))
  (define |[1]#_g127092_|
    (gx#core-deserialize-mark
     '(0 (new-value . _%new-value126681%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g127093_|
    (##structure
     gx#syntax-quote::t
     '_%new-value126681%_
     #f
     (gx#current-expander-context)
     (list |[1]#_g127092_|)))
  (define |[1]#_g127095_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g127096_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g127095_|)))
  (begin
    (define |[:0:]#@build-manifest-set!|
      (lambda (_%$stx126158%_)
        (let* ((_%__stx126959126960%_ _%$stx126158%_)
               (_%$%g126163126184%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx126959126960%_))))
          (let ((_%__kont126962126963%_
                 (lambda (_%$%g126165126250%_)
                   (cons (gx#datum->syntax
                          |[1]#_g127074_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g127076_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp127077
                                                  (lambda (_%$%g126265126268%_
                                                           _%$%g126266126271%_)
                                                    (cons _%$%g126265126268%_
                                                          _%$%g126266126271%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp127077
                                              '()
                                              _%$%g126165126250%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g127079_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g127076_|
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
                            |[1]#_g127076_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont126966126967%_
                 (lambda (_%$%g126178126191%_)
                   (gx#datum->syntax '#f 'build-manifest-set!))))
            (let* ((_%$%g126162126203%_
                    (lambda ()
                      (let ((_%$%g126178126191%_ _%__stx126959126960%_))
                        (if (gx#identifier? _%$%g126178126191%_)
                            (_%__kont126966126967%_ _%$%g126178126191%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g126163126184%_))))))
                   (_%__match126982126983%_
                    (lambda (_%$%e126166126210%_
                             _%$%hd126167126214%_
                             _%$%tl126168126217%_
                             _%__splice126964126965%_
                             _%$%target126169126220%_
                             _%$%tl126171126223%_)
                      (letrec ((_%$%loop126172126226%_
                                (lambda (_%$%hd126170126230%_
                                         _%$%arg126176126233%_)
                                  (if (gx#stx-pair? _%$%hd126170126230%_)
                                      (let ((_%$%e126173126236%_
                                             (gx#syntax-e
                                              _%$%hd126170126230%_)))
                                        (let ((_%$%lp-tl126175126243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e126173126236%_)))
                                              (_%$%lp-hd126174126240%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e126173126236%_))))
                                          (_%$%loop126172126226%_
                                           _%$%lp-tl126175126243%_
                                           (cons _%$%lp-hd126174126240%_
                                                 _%$%arg126176126233%_))))
                                      (let ((_%$%arg126177126246%_
                                             (reverse _%$%arg126176126233%_)))
                                        (_%__kont126962126963%_
                                         _%$%arg126177126246%_))))))
                        (_%$%loop126172126226%_
                         _%$%target126169126220%_
                         '())))))
              (if (gx#stx-pair? _%__stx126959126960%_)
                  (let ((_%$%e126166126210%_
                         (gx#syntax-e _%__stx126959126960%_)))
                    (let ((_%$%tl126168126217%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e126166126210%_)))
                          (_%$%hd126167126214%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e126166126210%_))))
                      (if (gx#stx-pair/null? _%$%tl126168126217%_)
                          (let ((_%__splice126964126965%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl126168126217%_
                                  '0)))
                            (let ((_%$%tl126171126223%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice126964126965%_
                                      '1)))
                                  (_%$%target126169126220%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice126964126965%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl126171126223%_)
                                  (_%__match126982126983%_
                                   _%$%e126166126210%_
                                   _%$%hd126167126214%_
                                   _%$%tl126168126217%_
                                   _%__splice126964126965%_
                                   _%$%target126169126220%_
                                   _%$%tl126171126223%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g126162126203%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g126162126203%_)))))
                  (let () (declare (not safe)) (_%$%g126162126203%_))))))))
    (define |[:0:]#@display-build-manifest|
      (lambda (_%$stx126279%_)
        (let* ((_%__stx126985126986%_ _%$stx126279%_)
               (_%$%g126284126305%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx126985126986%_))))
          (let ((_%__kont126988126989%_
                 (lambda (_%$%g126286126370%_)
                   (cons (gx#datum->syntax
                          |[1]#_g127081_|
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
                                     (cons (let ((__tmp127082
                                                  (lambda (_%$%g126385126388%_
                                                           _%$%g126386126391%_)
                                                    (cons _%$%g126385126388%_
                                                          _%$%g126386126391%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp127082
                                              '()
                                              _%$%g126286126370%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g127084_|
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
                (_%__kont126992126993%_
                 (lambda (_%$%g126299126312%_)
                   (gx#datum->syntax '#f 'display-build-manifest))))
            (let* ((_%$%g126283126323%_
                    (lambda ()
                      (let ((_%$%g126299126312%_ _%__stx126985126986%_))
                        (if (gx#identifier? _%$%g126299126312%_)
                            (_%__kont126992126993%_ _%$%g126299126312%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g126284126305%_))))))
                   (_%__match127008127009%_
                    (lambda (_%$%e126287126330%_
                             _%$%hd126288126334%_
                             _%$%tl126289126337%_
                             _%__splice126990126991%_
                             _%$%target126290126340%_
                             _%$%tl126292126343%_)
                      (letrec ((_%$%loop126293126346%_
                                (lambda (_%$%hd126291126350%_
                                         _%$%arg126297126353%_)
                                  (if (gx#stx-pair? _%$%hd126291126350%_)
                                      (let ((_%$%e126294126356%_
                                             (gx#syntax-e
                                              _%$%hd126291126350%_)))
                                        (let ((_%$%lp-tl126296126363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e126294126356%_)))
                                              (_%$%lp-hd126295126360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e126294126356%_))))
                                          (_%$%loop126293126346%_
                                           _%$%lp-tl126296126363%_
                                           (cons _%$%lp-hd126295126360%_
                                                 _%$%arg126297126353%_))))
                                      (let ((_%$%arg126298126366%_
                                             (reverse _%$%arg126297126353%_)))
                                        (_%__kont126988126989%_
                                         _%$%arg126298126366%_))))))
                        (_%$%loop126293126346%_
                         _%$%target126290126340%_
                         '())))))
              (if (gx#stx-pair? _%__stx126985126986%_)
                  (let ((_%$%e126287126330%_
                         (gx#syntax-e _%__stx126985126986%_)))
                    (let ((_%$%tl126289126337%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e126287126330%_)))
                          (_%$%hd126288126334%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e126287126330%_))))
                      (if (gx#stx-pair/null? _%$%tl126289126337%_)
                          (let ((_%__splice126990126991%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl126289126337%_
                                  '0)))
                            (let ((_%$%tl126292126343%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice126990126991%_
                                      '1)))
                                  (_%$%target126290126340%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice126990126991%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl126292126343%_)
                                  (_%__match127008127009%_
                                   _%$%e126287126330%_
                                   _%$%hd126288126334%_
                                   _%$%tl126289126337%_
                                   _%__splice126990126991%_
                                   _%$%target126290126340%_
                                   _%$%tl126292126343%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g126283126323%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g126283126323%_)))))
                  (let () (declare (not safe)) (_%$%g126283126323%_))))))))
    (define |[:0:]#@build-manifest-string|
      (lambda (_%$stx126399%_)
        (let* ((_%__stx127011127012%_ _%$stx126399%_)
               (_%$%g126404126425%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx127011127012%_))))
          (let ((_%__kont127014127015%_
                 (lambda (_%$%g126406126490%_)
                   (cons (gx#datum->syntax
                          |[1]#_g127086_|
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
                                     (cons (let ((__tmp127087
                                                  (lambda (_%$%g126505126508%_
                                                           _%$%g126506126511%_)
                                                    (cons _%$%g126505126508%_
                                                          _%$%g126506126511%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp127087
                                              '()
                                              _%$%g126406126490%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g127089_|
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
                (_%__kont127018127019%_
                 (lambda (_%$%g126419126432%_)
                   (gx#datum->syntax '#f 'build-manifest-string))))
            (let* ((_%$%g126403126443%_
                    (lambda ()
                      (let ((_%$%g126419126432%_ _%__stx127011127012%_))
                        (if (gx#identifier? _%$%g126419126432%_)
                            (_%__kont127018127019%_ _%$%g126419126432%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g126404126425%_))))))
                   (_%__match127034127035%_
                    (lambda (_%$%e126407126450%_
                             _%$%hd126408126454%_
                             _%$%tl126409126457%_
                             _%__splice127016127017%_
                             _%$%target126410126460%_
                             _%$%tl126412126463%_)
                      (letrec ((_%$%loop126413126466%_
                                (lambda (_%$%hd126411126470%_
                                         _%$%arg126417126473%_)
                                  (if (gx#stx-pair? _%$%hd126411126470%_)
                                      (let ((_%$%e126414126476%_
                                             (gx#syntax-e
                                              _%$%hd126411126470%_)))
                                        (let ((_%$%lp-tl126416126483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e126414126476%_)))
                                              (_%$%lp-hd126415126480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e126414126476%_))))
                                          (_%$%loop126413126466%_
                                           _%$%lp-tl126416126483%_
                                           (cons _%$%lp-hd126415126480%_
                                                 _%$%arg126417126473%_))))
                                      (let ((_%$%arg126418126486%_
                                             (reverse _%$%arg126417126473%_)))
                                        (_%__kont127014127015%_
                                         _%$%arg126418126486%_))))))
                        (_%$%loop126413126466%_
                         _%$%target126410126460%_
                         '())))))
              (if (gx#stx-pair? _%__stx127011127012%_)
                  (let ((_%$%e126407126450%_
                         (gx#syntax-e _%__stx127011127012%_)))
                    (let ((_%$%tl126409126457%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e126407126450%_)))
                          (_%$%hd126408126454%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e126407126450%_))))
                      (if (gx#stx-pair/null? _%$%tl126409126457%_)
                          (let ((_%__splice127016127017%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl126409126457%_
                                  '0)))
                            (let ((_%$%tl126412126463%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice127016127017%_
                                      '1)))
                                  (_%$%target126410126460%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice127016127017%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl126412126463%_)
                                  (_%__match127034127035%_
                                   _%$%e126407126450%_
                                   _%$%hd126408126454%_
                                   _%$%tl126409126457%_
                                   _%__splice127016127017%_
                                   _%$%target126410126460%_
                                   _%$%tl126412126463%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g126403126443%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g126403126443%_)))))
                  (let () (declare (not safe)) (_%$%g126403126443%_))))))))
    (define |[:0:]#@gerbil-greeting-set!|
      (lambda (_%$stx126519%_)
        (let* ((_%__stx127037127038%_ _%$stx126519%_)
               (_%$%g126524126545%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx127037127038%_))))
          (let ((_%__kont127040127041%_
                 (lambda (_%$%g126526126610%_)
                   (cons (gx#datum->syntax
                          |[1]#_g127091_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax
                                            |[1]#_g127093_|
                                            'new-value
                                            '#f
                                            '#f)
                                           '())
                                     (cons (let ((__tmp127094
                                                  (lambda (_%$%g126625126628%_
                                                           _%$%g126626126631%_)
                                                    (cons _%$%g126625126628%_
                                                          _%$%g126626126631%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp127094
                                              '()
                                              _%$%g126526126610%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g127096_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              |[1]#_g127093_|
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
                            |[1]#_g127093_|
                            'new-value
                            '#f
                            '#f)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont127044127045%_
                 (lambda (_%$%g126539126552%_)
                   (gx#datum->syntax '#f 'gerbil-greeting-set!))))
            (let* ((_%$%g126523126563%_
                    (lambda ()
                      (let ((_%$%g126539126552%_ _%__stx127037127038%_))
                        (if (gx#identifier? _%$%g126539126552%_)
                            (_%__kont127044127045%_ _%$%g126539126552%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g126524126545%_))))))
                   (_%__match127060127061%_
                    (lambda (_%$%e126527126570%_
                             _%$%hd126528126574%_
                             _%$%tl126529126577%_
                             _%__splice127042127043%_
                             _%$%target126530126580%_
                             _%$%tl126532126583%_)
                      (letrec ((_%$%loop126533126586%_
                                (lambda (_%$%hd126531126590%_
                                         _%$%arg126537126593%_)
                                  (if (gx#stx-pair? _%$%hd126531126590%_)
                                      (let ((_%$%e126534126596%_
                                             (gx#syntax-e
                                              _%$%hd126531126590%_)))
                                        (let ((_%$%lp-tl126536126603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e126534126596%_)))
                                              (_%$%lp-hd126535126600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e126534126596%_))))
                                          (_%$%loop126533126586%_
                                           _%$%lp-tl126536126603%_
                                           (cons _%$%lp-hd126535126600%_
                                                 _%$%arg126537126593%_))))
                                      (let ((_%$%arg126538126606%_
                                             (reverse _%$%arg126537126593%_)))
                                        (_%__kont127040127041%_
                                         _%$%arg126538126606%_))))))
                        (_%$%loop126533126586%_
                         _%$%target126530126580%_
                         '())))))
              (if (gx#stx-pair? _%__stx127037127038%_)
                  (let ((_%$%e126527126570%_
                         (gx#syntax-e _%__stx127037127038%_)))
                    (let ((_%$%tl126529126577%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e126527126570%_)))
                          (_%$%hd126528126574%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e126527126570%_))))
                      (if (gx#stx-pair/null? _%$%tl126529126577%_)
                          (let ((_%__splice127042127043%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl126529126577%_
                                  '0)))
                            (let ((_%$%tl126532126583%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice127042127043%_
                                      '1)))
                                  (_%$%target126530126580%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice127042127043%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl126532126583%_)
                                  (_%__match127060127061%_
                                   _%$%e126527126570%_
                                   _%$%hd126528126574%_
                                   _%$%tl126529126577%_
                                   _%__splice127042127043%_
                                   _%$%target126530126580%_
                                   _%$%tl126532126583%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g126523126563%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g126523126563%_)))))
                  (let () (declare (not safe)) (_%$%g126523126563%_))))))))))
