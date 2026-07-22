(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g179772_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg178710%_)
       ($%arg178623 . _%$%arg178623178694%_)
       ($%arg178622 . _%$%arg178622178680%_)
       (id . _%id178647%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179773_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179772_|)))
  (define |[1]#_g179775_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179776_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179775_|)))
  (define |[1]#_g179777_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg178830%_)
       ($%arg178743 . _%$%arg178743178800%_)
       (id . _%id178767%_)
       ($%arg178744 . _%$%arg178744178814%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179778_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179777_|)))
  (define |[1]#_g179780_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179781_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179780_|)))
  (define |[1]#_g179782_|
    (gx#core-deserialize-mark
     '(0
       ($%arg178863 . _%$%arg178863178920%_)
       (arg . _%arg178950%_)
       ($%arg178864 . _%$%arg178864178934%_)
       (id . _%id178887%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179783_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179782_|)))
  (define |[1]#_g179785_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179786_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179785_|)))
  (define |[1]#_g179787_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg179070%_)
       ($%arg178983 . _%$%arg178983179040%_)
       (id . _%id179007%_)
       ($%arg178984 . _%$%arg178984179054%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179788_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179787_|)))
  (define |[1]#_g179790_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179791_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179790_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx178604%_)
        (let* ((_%__stx179663179664%_ _%$stx178604%_)
               (_%$%g178609178630%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179663179664%_))))
          (let ((_%__kont179666179667%_
                 (lambda (_%$%g178611178696%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179773_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp179774
                                                  (lambda (_%$%g178711178714%_
                                                           _%$%g178712178717%_)
                                                    (cons _%$%g178711178714%_
                                                          _%$%g178712178717%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179774
                                              '()
                                              _%$%g178611178696%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179776_|
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
                (_%__kont179670179671%_
                 (lambda (_%$%g178624178637%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%$%g178608178649%_
                    (lambda ()
                      (let ((_%$%g178624178637%_ _%__stx179663179664%_))
                        (if (gx#identifier? _%$%g178624178637%_)
                            (_%__kont179670179671%_ _%$%g178624178637%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g178609178630%_))))))
                   (_%__match179686179687%_
                    (lambda (_%$%e178612178656%_
                             _%$%hd178613178660%_
                             _%$%tl178614178663%_
                             _%__splice179668179669%_
                             _%$%target178615178666%_
                             _%$%tl178617178669%_)
                      (letrec ((_%$%loop178618178672%_
                                (lambda (_%$%hd178616178676%_
                                         _%$%arg178622178679%_)
                                  (if (gx#stx-pair? _%$%hd178616178676%_)
                                      (let ((_%$%e178619178682%_
                                             (gx#syntax-e
                                              _%$%hd178616178676%_)))
                                        (let ((_%$%lp-tl178621178689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e178619178682%_)))
                                              (_%$%lp-hd178620178686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e178619178682%_))))
                                          (_%$%loop178618178672%_
                                           _%$%lp-tl178621178689%_
                                           (cons _%$%lp-hd178620178686%_
                                                 _%$%arg178622178679%_))))
                                      (let ((_%$%arg178623178692%_
                                             (reverse _%$%arg178622178679%_)))
                                        (_%__kont179666179667%_
                                         _%$%arg178623178692%_))))))
                        (_%$%loop178618178672%_
                         _%$%target178615178666%_
                         '())))))
              (if (gx#stx-pair? _%__stx179663179664%_)
                  (let ((_%$%e178612178656%_
                         (gx#syntax-e _%__stx179663179664%_)))
                    (let ((_%$%tl178614178663%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e178612178656%_)))
                          (_%$%hd178613178660%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e178612178656%_))))
                      (if (gx#stx-pair/null? _%$%tl178614178663%_)
                          (let ((_%__splice179668179669%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl178614178663%_
                                  '0)))
                            (let ((_%$%tl178617178669%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179668179669%_
                                      '1)))
                                  (_%$%target178615178666%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179668179669%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl178617178669%_)
                                  (_%__match179686179687%_
                                   _%$%e178612178656%_
                                   _%$%hd178613178660%_
                                   _%$%tl178614178663%_
                                   _%__splice179668179669%_
                                   _%$%target178615178666%_
                                   _%$%tl178617178669%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g178608178649%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g178608178649%_)))))
                  (let () (declare (not safe)) (_%$%g178608178649%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx178725%_)
        (let* ((_%__stx179689179690%_ _%$stx178725%_)
               (_%$%g178730178751%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179689179690%_))))
          (let ((_%__kont179692179693%_
                 (lambda (_%$%g178732178816%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179778_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp179779
                                                  (lambda (_%$%g178831178834%_
                                                           _%$%g178832178837%_)
                                                    (cons _%$%g178831178834%_
                                                          _%$%g178832178837%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179779
                                              '()
                                              _%$%g178732178816%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179781_|
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
                (_%__kont179696179697%_
                 (lambda (_%$%g178745178758%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%$%g178729178769%_
                    (lambda ()
                      (let ((_%$%g178745178758%_ _%__stx179689179690%_))
                        (if (gx#identifier? _%$%g178745178758%_)
                            (_%__kont179696179697%_ _%$%g178745178758%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g178730178751%_))))))
                   (_%__match179712179713%_
                    (lambda (_%$%e178733178776%_
                             _%$%hd178734178780%_
                             _%$%tl178735178783%_
                             _%__splice179694179695%_
                             _%$%target178736178786%_
                             _%$%tl178738178789%_)
                      (letrec ((_%$%loop178739178792%_
                                (lambda (_%$%hd178737178796%_
                                         _%$%arg178743178799%_)
                                  (if (gx#stx-pair? _%$%hd178737178796%_)
                                      (let ((_%$%e178740178802%_
                                             (gx#syntax-e
                                              _%$%hd178737178796%_)))
                                        (let ((_%$%lp-tl178742178809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e178740178802%_)))
                                              (_%$%lp-hd178741178806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e178740178802%_))))
                                          (_%$%loop178739178792%_
                                           _%$%lp-tl178742178809%_
                                           (cons _%$%lp-hd178741178806%_
                                                 _%$%arg178743178799%_))))
                                      (let ((_%$%arg178744178812%_
                                             (reverse _%$%arg178743178799%_)))
                                        (_%__kont179692179693%_
                                         _%$%arg178744178812%_))))))
                        (_%$%loop178739178792%_
                         _%$%target178736178786%_
                         '())))))
              (if (gx#stx-pair? _%__stx179689179690%_)
                  (let ((_%$%e178733178776%_
                         (gx#syntax-e _%__stx179689179690%_)))
                    (let ((_%$%tl178735178783%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e178733178776%_)))
                          (_%$%hd178734178780%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e178733178776%_))))
                      (if (gx#stx-pair/null? _%$%tl178735178783%_)
                          (let ((_%__splice179694179695%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl178735178783%_
                                  '0)))
                            (let ((_%$%tl178738178789%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179694179695%_
                                      '1)))
                                  (_%$%target178736178786%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179694179695%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl178738178789%_)
                                  (_%__match179712179713%_
                                   _%$%e178733178776%_
                                   _%$%hd178734178780%_
                                   _%$%tl178735178783%_
                                   _%__splice179694179695%_
                                   _%$%target178736178786%_
                                   _%$%tl178738178789%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g178729178769%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g178729178769%_)))))
                  (let () (declare (not safe)) (_%$%g178729178769%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx178845%_)
        (let* ((_%__stx179715179716%_ _%$stx178845%_)
               (_%$%g178850178871%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179715179716%_))))
          (let ((_%__kont179718179719%_
                 (lambda (_%$%g178852178936%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179783_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp179784
                                                  (lambda (_%$%g178951178954%_
                                                           _%$%g178952178957%_)
                                                    (cons _%$%g178951178954%_
                                                          _%$%g178952178957%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179784
                                              '()
                                              _%$%g178852178936%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179786_|
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
                (_%__kont179722179723%_
                 (lambda (_%$%g178865178878%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%$%g178849178889%_
                    (lambda ()
                      (let ((_%$%g178865178878%_ _%__stx179715179716%_))
                        (if (gx#identifier? _%$%g178865178878%_)
                            (_%__kont179722179723%_ _%$%g178865178878%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g178850178871%_))))))
                   (_%__match179738179739%_
                    (lambda (_%$%e178853178896%_
                             _%$%hd178854178900%_
                             _%$%tl178855178903%_
                             _%__splice179720179721%_
                             _%$%target178856178906%_
                             _%$%tl178858178909%_)
                      (letrec ((_%$%loop178859178912%_
                                (lambda (_%$%hd178857178916%_
                                         _%$%arg178863178919%_)
                                  (if (gx#stx-pair? _%$%hd178857178916%_)
                                      (let ((_%$%e178860178922%_
                                             (gx#syntax-e
                                              _%$%hd178857178916%_)))
                                        (let ((_%$%lp-tl178862178929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e178860178922%_)))
                                              (_%$%lp-hd178861178926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e178860178922%_))))
                                          (_%$%loop178859178912%_
                                           _%$%lp-tl178862178929%_
                                           (cons _%$%lp-hd178861178926%_
                                                 _%$%arg178863178919%_))))
                                      (let ((_%$%arg178864178932%_
                                             (reverse _%$%arg178863178919%_)))
                                        (_%__kont179718179719%_
                                         _%$%arg178864178932%_))))))
                        (_%$%loop178859178912%_
                         _%$%target178856178906%_
                         '())))))
              (if (gx#stx-pair? _%__stx179715179716%_)
                  (let ((_%$%e178853178896%_
                         (gx#syntax-e _%__stx179715179716%_)))
                    (let ((_%$%tl178855178903%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e178853178896%_)))
                          (_%$%hd178854178900%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e178853178896%_))))
                      (if (gx#stx-pair/null? _%$%tl178855178903%_)
                          (let ((_%__splice179720179721%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl178855178903%_
                                  '0)))
                            (let ((_%$%tl178858178909%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179720179721%_
                                      '1)))
                                  (_%$%target178856178906%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179720179721%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl178858178909%_)
                                  (_%__match179738179739%_
                                   _%$%e178853178896%_
                                   _%$%hd178854178900%_
                                   _%$%tl178855178903%_
                                   _%__splice179720179721%_
                                   _%$%target178856178906%_
                                   _%$%tl178858178909%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g178849178889%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g178849178889%_)))))
                  (let () (declare (not safe)) (_%$%g178849178889%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx178965%_)
        (let* ((_%__stx179741179742%_ _%$stx178965%_)
               (_%$%g178970178991%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179741179742%_))))
          (let ((_%__kont179744179745%_
                 (lambda (_%$%g178972179056%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179788_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp179789
                                                  (lambda (_%$%g179071179074%_
                                                           _%$%g179072179077%_)
                                                    (cons _%$%g179071179074%_
                                                          _%$%g179072179077%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179789
                                              '()
                                              _%$%g178972179056%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179791_|
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
                (_%__kont179748179749%_
                 (lambda (_%$%g178985178998%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%$%g178969179009%_
                    (lambda ()
                      (let ((_%$%g178985178998%_ _%__stx179741179742%_))
                        (if (gx#identifier? _%$%g178985178998%_)
                            (_%__kont179748179749%_ _%$%g178985178998%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g178970178991%_))))))
                   (_%__match179764179765%_
                    (lambda (_%$%e178973179016%_
                             _%$%hd178974179020%_
                             _%$%tl178975179023%_
                             _%__splice179746179747%_
                             _%$%target178976179026%_
                             _%$%tl178978179029%_)
                      (letrec ((_%$%loop178979179032%_
                                (lambda (_%$%hd178977179036%_
                                         _%$%arg178983179039%_)
                                  (if (gx#stx-pair? _%$%hd178977179036%_)
                                      (let ((_%$%e178980179042%_
                                             (gx#syntax-e
                                              _%$%hd178977179036%_)))
                                        (let ((_%$%lp-tl178982179049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e178980179042%_)))
                                              (_%$%lp-hd178981179046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e178980179042%_))))
                                          (_%$%loop178979179032%_
                                           _%$%lp-tl178982179049%_
                                           (cons _%$%lp-hd178981179046%_
                                                 _%$%arg178983179039%_))))
                                      (let ((_%$%arg178984179052%_
                                             (reverse _%$%arg178983179039%_)))
                                        (_%__kont179744179745%_
                                         _%$%arg178984179052%_))))))
                        (_%$%loop178979179032%_
                         _%$%target178976179026%_
                         '())))))
              (if (gx#stx-pair? _%__stx179741179742%_)
                  (let ((_%$%e178973179016%_
                         (gx#syntax-e _%__stx179741179742%_)))
                    (let ((_%$%tl178975179023%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e178973179016%_)))
                          (_%$%hd178974179020%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e178973179016%_))))
                      (if (gx#stx-pair/null? _%$%tl178975179023%_)
                          (let ((_%__splice179746179747%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl178975179023%_
                                  '0)))
                            (let ((_%$%tl178978179029%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179746179747%_
                                      '1)))
                                  (_%$%target178976179026%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179746179747%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl178978179029%_)
                                  (_%__match179764179765%_
                                   _%$%e178973179016%_
                                   _%$%hd178974179020%_
                                   _%$%tl178975179023%_
                                   _%__splice179746179747%_
                                   _%$%target178976179026%_
                                   _%$%tl178978179029%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g178969179009%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g178969179009%_)))))
                  (let () (declare (not safe)) (_%$%g178969179009%_))))))))))
