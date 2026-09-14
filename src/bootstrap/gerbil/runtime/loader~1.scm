(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g182006_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id180881%_)
       ($%arg180857 . _%$%arg180857180928%_)
       ($%arg180856 . _%$%arg180856180914%_)
       (arg . _%arg180944%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g182007_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g182006_|)))
  (define |[1]#_g182009_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g182010_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g182009_|)))
  (define |[1]#_g182011_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id181001%_)
       ($%arg180977 . _%$%arg180977181034%_)
       ($%arg180978 . _%$%arg180978181048%_)
       (arg . _%arg181064%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g182012_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g182011_|)))
  (define |[1]#_g182014_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g182015_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g182014_|)))
  (define |[1]#_g182016_|
    (gx#core-deserialize-mark
     '(0
       ($%arg181098 . _%$%arg181098181168%_)
       ($%arg181097 . _%$%arg181097181154%_)
       (id . _%id181121%_)
       (arg . _%arg181184%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g182017_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g182016_|)))
  (define |[1]#_g182019_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g182020_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g182019_|)))
  (define |[1]#_g182021_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id181241%_)
       ($%arg181217 . _%$%arg181217181274%_)
       ($%arg181218 . _%$%arg181218181288%_)
       (arg . _%arg181304%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g182022_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g182021_|)))
  (define |[1]#_g182024_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g182025_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g182024_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx180838%_)
        (let* ((_%__stx181897181898%_ _%$stx180838%_)
               (_%$%g180843180864%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx181897181898%_))))
          (let ((_%__kont181900181901%_
                 (lambda (_%$%g180845180930%_)
                   (cons (gx#datum->syntax
                          |[1]#_g182007_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp182008
                                                  (lambda (_%$%g180945180948%_
                                                           _%$%g180946180951%_)
                                                    (cons _%$%g180945180948%_
                                                          _%$%g180946180951%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp182008
                                              '()
                                              _%$%g180845180930%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g182010_|
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
                (_%__kont181904181905%_
                 (lambda (_%$%g180858180871%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%$%g180842180883%_
                    (lambda ()
                      (let ((_%$%g180858180871%_ _%__stx181897181898%_))
                        (if (gx#identifier? _%$%g180858180871%_)
                            (_%__kont181904181905%_ _%$%g180858180871%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g180843180864%_))))))
                   (_%__match181920181921%_
                    (lambda (_%$%e180846180890%_
                             _%$%hd180847180894%_
                             _%$%tl180848180897%_
                             _%__splice181902181903%_
                             _%$%target180849180900%_
                             _%$%tl180851180903%_)
                      (letrec ((_%$%loop180852180906%_
                                (lambda (_%$%hd180850180910%_
                                         _%$%arg180856180913%_)
                                  (if (gx#stx-pair? _%$%hd180850180910%_)
                                      (let ((_%$%e180853180916%_
                                             (gx#syntax-e
                                              _%$%hd180850180910%_)))
                                        (let ((_%$%lp-tl180855180923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e180853180916%_)))
                                              (_%$%lp-hd180854180920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e180853180916%_))))
                                          (_%$%loop180852180906%_
                                           _%$%lp-tl180855180923%_
                                           (cons _%$%lp-hd180854180920%_
                                                 _%$%arg180856180913%_))))
                                      (let ((_%$%arg180857180926%_
                                             (reverse _%$%arg180856180913%_)))
                                        (_%__kont181900181901%_
                                         _%$%arg180857180926%_))))))
                        (_%$%loop180852180906%_
                         _%$%target180849180900%_
                         '())))))
              (if (gx#stx-pair? _%__stx181897181898%_)
                  (let ((_%$%e180846180890%_
                         (gx#syntax-e _%__stx181897181898%_)))
                    (let ((_%$%tl180848180897%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e180846180890%_)))
                          (_%$%hd180847180894%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e180846180890%_))))
                      (if (gx#stx-pair/null? _%$%tl180848180897%_)
                          (let ((_%__splice181902181903%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl180848180897%_
                                  '0)))
                            (let ((_%$%tl180851180903%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice181902181903%_
                                      '1)))
                                  (_%$%target180849180900%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice181902181903%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl180851180903%_)
                                  (_%__match181920181921%_
                                   _%$%e180846180890%_
                                   _%$%hd180847180894%_
                                   _%$%tl180848180897%_
                                   _%__splice181902181903%_
                                   _%$%target180849180900%_
                                   _%$%tl180851180903%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g180842180883%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g180842180883%_)))))
                  (let () (declare (not safe)) (_%$%g180842180883%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx180959%_)
        (let* ((_%__stx181923181924%_ _%$stx180959%_)
               (_%$%g180964180985%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx181923181924%_))))
          (let ((_%__kont181926181927%_
                 (lambda (_%$%g180966181050%_)
                   (cons (gx#datum->syntax
                          |[1]#_g182012_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp182013
                                                  (lambda (_%$%g181065181068%_
                                                           _%$%g181066181071%_)
                                                    (cons _%$%g181065181068%_
                                                          _%$%g181066181071%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp182013
                                              '()
                                              _%$%g180966181050%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g182015_|
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
                (_%__kont181930181931%_
                 (lambda (_%$%g180979180992%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%$%g180963181003%_
                    (lambda ()
                      (let ((_%$%g180979180992%_ _%__stx181923181924%_))
                        (if (gx#identifier? _%$%g180979180992%_)
                            (_%__kont181930181931%_ _%$%g180979180992%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g180964180985%_))))))
                   (_%__match181946181947%_
                    (lambda (_%$%e180967181010%_
                             _%$%hd180968181014%_
                             _%$%tl180969181017%_
                             _%__splice181928181929%_
                             _%$%target180970181020%_
                             _%$%tl180972181023%_)
                      (letrec ((_%$%loop180973181026%_
                                (lambda (_%$%hd180971181030%_
                                         _%$%arg180977181033%_)
                                  (if (gx#stx-pair? _%$%hd180971181030%_)
                                      (let ((_%$%e180974181036%_
                                             (gx#syntax-e
                                              _%$%hd180971181030%_)))
                                        (let ((_%$%lp-tl180976181043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e180974181036%_)))
                                              (_%$%lp-hd180975181040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e180974181036%_))))
                                          (_%$%loop180973181026%_
                                           _%$%lp-tl180976181043%_
                                           (cons _%$%lp-hd180975181040%_
                                                 _%$%arg180977181033%_))))
                                      (let ((_%$%arg180978181046%_
                                             (reverse _%$%arg180977181033%_)))
                                        (_%__kont181926181927%_
                                         _%$%arg180978181046%_))))))
                        (_%$%loop180973181026%_
                         _%$%target180970181020%_
                         '())))))
              (if (gx#stx-pair? _%__stx181923181924%_)
                  (let ((_%$%e180967181010%_
                         (gx#syntax-e _%__stx181923181924%_)))
                    (let ((_%$%tl180969181017%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e180967181010%_)))
                          (_%$%hd180968181014%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e180967181010%_))))
                      (if (gx#stx-pair/null? _%$%tl180969181017%_)
                          (let ((_%__splice181928181929%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl180969181017%_
                                  '0)))
                            (let ((_%$%tl180972181023%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice181928181929%_
                                      '1)))
                                  (_%$%target180970181020%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice181928181929%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl180972181023%_)
                                  (_%__match181946181947%_
                                   _%$%e180967181010%_
                                   _%$%hd180968181014%_
                                   _%$%tl180969181017%_
                                   _%__splice181928181929%_
                                   _%$%target180970181020%_
                                   _%$%tl180972181023%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g180963181003%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g180963181003%_)))))
                  (let () (declare (not safe)) (_%$%g180963181003%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx181079%_)
        (let* ((_%__stx181949181950%_ _%$stx181079%_)
               (_%$%g181084181105%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx181949181950%_))))
          (let ((_%__kont181952181953%_
                 (lambda (_%$%g181086181170%_)
                   (cons (gx#datum->syntax
                          |[1]#_g182017_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp182018
                                                  (lambda (_%$%g181185181188%_
                                                           _%$%g181186181191%_)
                                                    (cons _%$%g181185181188%_
                                                          _%$%g181186181191%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp182018
                                              '()
                                              _%$%g181086181170%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g182020_|
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
                (_%__kont181956181957%_
                 (lambda (_%$%g181099181112%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%$%g181083181123%_
                    (lambda ()
                      (let ((_%$%g181099181112%_ _%__stx181949181950%_))
                        (if (gx#identifier? _%$%g181099181112%_)
                            (_%__kont181956181957%_ _%$%g181099181112%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g181084181105%_))))))
                   (_%__match181972181973%_
                    (lambda (_%$%e181087181130%_
                             _%$%hd181088181134%_
                             _%$%tl181089181137%_
                             _%__splice181954181955%_
                             _%$%target181090181140%_
                             _%$%tl181092181143%_)
                      (letrec ((_%$%loop181093181146%_
                                (lambda (_%$%hd181091181150%_
                                         _%$%arg181097181153%_)
                                  (if (gx#stx-pair? _%$%hd181091181150%_)
                                      (let ((_%$%e181094181156%_
                                             (gx#syntax-e
                                              _%$%hd181091181150%_)))
                                        (let ((_%$%lp-tl181096181163%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e181094181156%_)))
                                              (_%$%lp-hd181095181160%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e181094181156%_))))
                                          (_%$%loop181093181146%_
                                           _%$%lp-tl181096181163%_
                                           (cons _%$%lp-hd181095181160%_
                                                 _%$%arg181097181153%_))))
                                      (let ((_%$%arg181098181166%_
                                             (reverse _%$%arg181097181153%_)))
                                        (_%__kont181952181953%_
                                         _%$%arg181098181166%_))))))
                        (_%$%loop181093181146%_
                         _%$%target181090181140%_
                         '())))))
              (if (gx#stx-pair? _%__stx181949181950%_)
                  (let ((_%$%e181087181130%_
                         (gx#syntax-e _%__stx181949181950%_)))
                    (let ((_%$%tl181089181137%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e181087181130%_)))
                          (_%$%hd181088181134%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e181087181130%_))))
                      (if (gx#stx-pair/null? _%$%tl181089181137%_)
                          (let ((_%__splice181954181955%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl181089181137%_
                                  '0)))
                            (let ((_%$%tl181092181143%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice181954181955%_
                                      '1)))
                                  (_%$%target181090181140%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice181954181955%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl181092181143%_)
                                  (_%__match181972181973%_
                                   _%$%e181087181130%_
                                   _%$%hd181088181134%_
                                   _%$%tl181089181137%_
                                   _%__splice181954181955%_
                                   _%$%target181090181140%_
                                   _%$%tl181092181143%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g181083181123%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g181083181123%_)))))
                  (let () (declare (not safe)) (_%$%g181083181123%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx181199%_)
        (let* ((_%__stx181975181976%_ _%$stx181199%_)
               (_%$%g181204181225%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx181975181976%_))))
          (let ((_%__kont181978181979%_
                 (lambda (_%$%g181206181290%_)
                   (cons (gx#datum->syntax
                          |[1]#_g182022_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp182023
                                                  (lambda (_%$%g181305181308%_
                                                           _%$%g181306181311%_)
                                                    (cons _%$%g181305181308%_
                                                          _%$%g181306181311%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp182023
                                              '()
                                              _%$%g181206181290%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g182025_|
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
                (_%__kont181982181983%_
                 (lambda (_%$%g181219181232%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%$%g181203181243%_
                    (lambda ()
                      (let ((_%$%g181219181232%_ _%__stx181975181976%_))
                        (if (gx#identifier? _%$%g181219181232%_)
                            (_%__kont181982181983%_ _%$%g181219181232%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g181204181225%_))))))
                   (_%__match181998181999%_
                    (lambda (_%$%e181207181250%_
                             _%$%hd181208181254%_
                             _%$%tl181209181257%_
                             _%__splice181980181981%_
                             _%$%target181210181260%_
                             _%$%tl181212181263%_)
                      (letrec ((_%$%loop181213181266%_
                                (lambda (_%$%hd181211181270%_
                                         _%$%arg181217181273%_)
                                  (if (gx#stx-pair? _%$%hd181211181270%_)
                                      (let ((_%$%e181214181276%_
                                             (gx#syntax-e
                                              _%$%hd181211181270%_)))
                                        (let ((_%$%lp-tl181216181283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e181214181276%_)))
                                              (_%$%lp-hd181215181280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e181214181276%_))))
                                          (_%$%loop181213181266%_
                                           _%$%lp-tl181216181283%_
                                           (cons _%$%lp-hd181215181280%_
                                                 _%$%arg181217181273%_))))
                                      (let ((_%$%arg181218181286%_
                                             (reverse _%$%arg181217181273%_)))
                                        (_%__kont181978181979%_
                                         _%$%arg181218181286%_))))))
                        (_%$%loop181213181266%_
                         _%$%target181210181260%_
                         '())))))
              (if (gx#stx-pair? _%__stx181975181976%_)
                  (let ((_%$%e181207181250%_
                         (gx#syntax-e _%__stx181975181976%_)))
                    (let ((_%$%tl181209181257%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e181207181250%_)))
                          (_%$%hd181208181254%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e181207181250%_))))
                      (if (gx#stx-pair/null? _%$%tl181209181257%_)
                          (let ((_%__splice181980181981%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl181209181257%_
                                  '0)))
                            (let ((_%$%tl181212181263%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice181980181981%_
                                      '1)))
                                  (_%$%target181210181260%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice181980181981%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl181212181263%_)
                                  (_%__match181998181999%_
                                   _%$%e181207181250%_
                                   _%$%hd181208181254%_
                                   _%$%tl181209181257%_
                                   _%__splice181980181981%_
                                   _%$%target181210181260%_
                                   _%$%tl181212181263%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g181203181243%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g181203181243%_)))))
                  (let () (declare (not safe)) (_%$%g181203181243%_))))))))))
