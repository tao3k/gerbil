(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g179976_|
    (gx#core-deserialize-mark
     '(0
       ($%arg178826 . _%$%arg178826178884%_)
       (arg . _%arg178914%_)
       (id . _%id178851%_)
       ($%arg178827 . _%$%arg178827178898%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179977_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179976_|)))
  (define |[1]#_g179979_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179980_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179979_|)))
  (define |[1]#_g179981_|
    (gx#core-deserialize-mark
     '(0
       ($%arg178947 . _%$%arg178947179004%_)
       (arg . _%arg179034%_)
       (id . _%id178971%_)
       ($%arg178948 . _%$%arg178948179018%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179982_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179981_|)))
  (define |[1]#_g179984_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179985_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179984_|)))
  (define |[1]#_g179986_|
    (gx#core-deserialize-mark
     '(0
       ($%arg179068 . _%$%arg179068179138%_)
       (arg . _%arg179154%_)
       (id . _%id179091%_)
       ($%arg179067 . _%$%arg179067179124%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179987_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179986_|)))
  (define |[1]#_g179989_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179990_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179989_|)))
  (define |[1]#_g179991_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg179274%_)
       ($%arg179188 . _%$%arg179188179258%_)
       (id . _%id179211%_)
       ($%arg179187 . _%$%arg179187179244%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g179992_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g179991_|)))
  (define |[1]#_g179994_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g179995_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g179994_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx178808%_)
        (let* ((_%__stx179867179868%_ _%$stx178808%_)
               (_%$%g178813178834%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179867179868%_))))
          (let ((_%__kont179870179871%_
                 (lambda (_%$%g178815178900%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179977_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp179978
                                                  (lambda (_%$%g178915178918%_
                                                           _%$%g178916178921%_)
                                                    (cons _%$%g178915178918%_
                                                          _%$%g178916178921%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179978
                                              '()
                                              _%$%g178815178900%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179980_|
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
                (_%__kont179874179875%_
                 (lambda (_%$%g178828178841%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%$%g178812178853%_
                    (lambda ()
                      (let ((_%$%g178828178841%_ _%__stx179867179868%_))
                        (if (gx#identifier? _%$%g178828178841%_)
                            (_%__kont179874179875%_ _%$%g178828178841%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g178813178834%_))))))
                   (_%__match179890179891%_
                    (lambda (_%$%e178816178860%_
                             _%$%hd178817178864%_
                             _%$%tl178818178867%_
                             _%__splice179872179873%_
                             _%$%target178819178870%_
                             _%$%tl178821178873%_)
                      (letrec ((_%$%loop178822178876%_
                                (lambda (_%$%hd178820178880%_
                                         _%$%arg178826178883%_)
                                  (if (gx#stx-pair? _%$%hd178820178880%_)
                                      (let ((_%$%e178823178886%_
                                             (gx#syntax-e
                                              _%$%hd178820178880%_)))
                                        (let ((_%$%lp-tl178825178893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e178823178886%_)))
                                              (_%$%lp-hd178824178890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e178823178886%_))))
                                          (_%$%loop178822178876%_
                                           _%$%lp-tl178825178893%_
                                           (cons _%$%lp-hd178824178890%_
                                                 _%$%arg178826178883%_))))
                                      (let ((_%$%arg178827178896%_
                                             (reverse _%$%arg178826178883%_)))
                                        (_%__kont179870179871%_
                                         _%$%arg178827178896%_))))))
                        (_%$%loop178822178876%_
                         _%$%target178819178870%_
                         '())))))
              (if (gx#stx-pair? _%__stx179867179868%_)
                  (let ((_%$%e178816178860%_
                         (gx#syntax-e _%__stx179867179868%_)))
                    (let ((_%$%tl178818178867%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e178816178860%_)))
                          (_%$%hd178817178864%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e178816178860%_))))
                      (if (gx#stx-pair/null? _%$%tl178818178867%_)
                          (let ((_%__splice179872179873%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl178818178867%_
                                  '0)))
                            (let ((_%$%tl178821178873%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179872179873%_
                                      '1)))
                                  (_%$%target178819178870%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179872179873%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl178821178873%_)
                                  (_%__match179890179891%_
                                   _%$%e178816178860%_
                                   _%$%hd178817178864%_
                                   _%$%tl178818178867%_
                                   _%__splice179872179873%_
                                   _%$%target178819178870%_
                                   _%$%tl178821178873%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g178812178853%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g178812178853%_)))))
                  (let () (declare (not safe)) (_%$%g178812178853%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx178929%_)
        (let* ((_%__stx179893179894%_ _%$stx178929%_)
               (_%$%g178934178955%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179893179894%_))))
          (let ((_%__kont179896179897%_
                 (lambda (_%$%g178936179020%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179982_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp179983
                                                  (lambda (_%$%g179035179038%_
                                                           _%$%g179036179041%_)
                                                    (cons _%$%g179035179038%_
                                                          _%$%g179036179041%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179983
                                              '()
                                              _%$%g178936179020%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179985_|
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
                (_%__kont179900179901%_
                 (lambda (_%$%g178949178962%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%$%g178933178973%_
                    (lambda ()
                      (let ((_%$%g178949178962%_ _%__stx179893179894%_))
                        (if (gx#identifier? _%$%g178949178962%_)
                            (_%__kont179900179901%_ _%$%g178949178962%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g178934178955%_))))))
                   (_%__match179916179917%_
                    (lambda (_%$%e178937178980%_
                             _%$%hd178938178984%_
                             _%$%tl178939178987%_
                             _%__splice179898179899%_
                             _%$%target178940178990%_
                             _%$%tl178942178993%_)
                      (letrec ((_%$%loop178943178996%_
                                (lambda (_%$%hd178941179000%_
                                         _%$%arg178947179003%_)
                                  (if (gx#stx-pair? _%$%hd178941179000%_)
                                      (let ((_%$%e178944179006%_
                                             (gx#syntax-e
                                              _%$%hd178941179000%_)))
                                        (let ((_%$%lp-tl178946179013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e178944179006%_)))
                                              (_%$%lp-hd178945179010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e178944179006%_))))
                                          (_%$%loop178943178996%_
                                           _%$%lp-tl178946179013%_
                                           (cons _%$%lp-hd178945179010%_
                                                 _%$%arg178947179003%_))))
                                      (let ((_%$%arg178948179016%_
                                             (reverse _%$%arg178947179003%_)))
                                        (_%__kont179896179897%_
                                         _%$%arg178948179016%_))))))
                        (_%$%loop178943178996%_
                         _%$%target178940178990%_
                         '())))))
              (if (gx#stx-pair? _%__stx179893179894%_)
                  (let ((_%$%e178937178980%_
                         (gx#syntax-e _%__stx179893179894%_)))
                    (let ((_%$%tl178939178987%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e178937178980%_)))
                          (_%$%hd178938178984%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e178937178980%_))))
                      (if (gx#stx-pair/null? _%$%tl178939178987%_)
                          (let ((_%__splice179898179899%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl178939178987%_
                                  '0)))
                            (let ((_%$%tl178942178993%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179898179899%_
                                      '1)))
                                  (_%$%target178940178990%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179898179899%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl178942178993%_)
                                  (_%__match179916179917%_
                                   _%$%e178937178980%_
                                   _%$%hd178938178984%_
                                   _%$%tl178939178987%_
                                   _%__splice179898179899%_
                                   _%$%target178940178990%_
                                   _%$%tl178942178993%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g178933178973%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g178933178973%_)))))
                  (let () (declare (not safe)) (_%$%g178933178973%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx179049%_)
        (let* ((_%__stx179919179920%_ _%$stx179049%_)
               (_%$%g179054179075%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179919179920%_))))
          (let ((_%__kont179922179923%_
                 (lambda (_%$%g179056179140%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179987_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp179988
                                                  (lambda (_%$%g179155179158%_
                                                           _%$%g179156179161%_)
                                                    (cons _%$%g179155179158%_
                                                          _%$%g179156179161%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179988
                                              '()
                                              _%$%g179056179140%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179990_|
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
                (_%__kont179926179927%_
                 (lambda (_%$%g179069179082%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%$%g179053179093%_
                    (lambda ()
                      (let ((_%$%g179069179082%_ _%__stx179919179920%_))
                        (if (gx#identifier? _%$%g179069179082%_)
                            (_%__kont179926179927%_ _%$%g179069179082%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g179054179075%_))))))
                   (_%__match179942179943%_
                    (lambda (_%$%e179057179100%_
                             _%$%hd179058179104%_
                             _%$%tl179059179107%_
                             _%__splice179924179925%_
                             _%$%target179060179110%_
                             _%$%tl179062179113%_)
                      (letrec ((_%$%loop179063179116%_
                                (lambda (_%$%hd179061179120%_
                                         _%$%arg179067179123%_)
                                  (if (gx#stx-pair? _%$%hd179061179120%_)
                                      (let ((_%$%e179064179126%_
                                             (gx#syntax-e
                                              _%$%hd179061179120%_)))
                                        (let ((_%$%lp-tl179066179133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e179064179126%_)))
                                              (_%$%lp-hd179065179130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e179064179126%_))))
                                          (_%$%loop179063179116%_
                                           _%$%lp-tl179066179133%_
                                           (cons _%$%lp-hd179065179130%_
                                                 _%$%arg179067179123%_))))
                                      (let ((_%$%arg179068179136%_
                                             (reverse _%$%arg179067179123%_)))
                                        (_%__kont179922179923%_
                                         _%$%arg179068179136%_))))))
                        (_%$%loop179063179116%_
                         _%$%target179060179110%_
                         '())))))
              (if (gx#stx-pair? _%__stx179919179920%_)
                  (let ((_%$%e179057179100%_
                         (gx#syntax-e _%__stx179919179920%_)))
                    (let ((_%$%tl179059179107%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e179057179100%_)))
                          (_%$%hd179058179104%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e179057179100%_))))
                      (if (gx#stx-pair/null? _%$%tl179059179107%_)
                          (let ((_%__splice179924179925%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl179059179107%_
                                  '0)))
                            (let ((_%$%tl179062179113%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179924179925%_
                                      '1)))
                                  (_%$%target179060179110%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179924179925%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl179062179113%_)
                                  (_%__match179942179943%_
                                   _%$%e179057179100%_
                                   _%$%hd179058179104%_
                                   _%$%tl179059179107%_
                                   _%__splice179924179925%_
                                   _%$%target179060179110%_
                                   _%$%tl179062179113%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g179053179093%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g179053179093%_)))))
                  (let () (declare (not safe)) (_%$%g179053179093%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx179169%_)
        (let* ((_%__stx179945179946%_ _%$stx179169%_)
               (_%$%g179174179195%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx179945179946%_))))
          (let ((_%__kont179948179949%_
                 (lambda (_%$%g179176179260%_)
                   (cons (gx#datum->syntax
                          |[1]#_g179992_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp179993
                                                  (lambda (_%$%g179275179278%_
                                                           _%$%g179276179281%_)
                                                    (cons _%$%g179275179278%_
                                                          _%$%g179276179281%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp179993
                                              '()
                                              _%$%g179176179260%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g179995_|
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
                (_%__kont179952179953%_
                 (lambda (_%$%g179189179202%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%$%g179173179213%_
                    (lambda ()
                      (let ((_%$%g179189179202%_ _%__stx179945179946%_))
                        (if (gx#identifier? _%$%g179189179202%_)
                            (_%__kont179952179953%_ _%$%g179189179202%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g179174179195%_))))))
                   (_%__match179968179969%_
                    (lambda (_%$%e179177179220%_
                             _%$%hd179178179224%_
                             _%$%tl179179179227%_
                             _%__splice179950179951%_
                             _%$%target179180179230%_
                             _%$%tl179182179233%_)
                      (letrec ((_%$%loop179183179236%_
                                (lambda (_%$%hd179181179240%_
                                         _%$%arg179187179243%_)
                                  (if (gx#stx-pair? _%$%hd179181179240%_)
                                      (let ((_%$%e179184179246%_
                                             (gx#syntax-e
                                              _%$%hd179181179240%_)))
                                        (let ((_%$%lp-tl179186179253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e179184179246%_)))
                                              (_%$%lp-hd179185179250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e179184179246%_))))
                                          (_%$%loop179183179236%_
                                           _%$%lp-tl179186179253%_
                                           (cons _%$%lp-hd179185179250%_
                                                 _%$%arg179187179243%_))))
                                      (let ((_%$%arg179188179256%_
                                             (reverse _%$%arg179187179243%_)))
                                        (_%__kont179948179949%_
                                         _%$%arg179188179256%_))))))
                        (_%$%loop179183179236%_
                         _%$%target179180179230%_
                         '())))))
              (if (gx#stx-pair? _%__stx179945179946%_)
                  (let ((_%$%e179177179220%_
                         (gx#syntax-e _%__stx179945179946%_)))
                    (let ((_%$%tl179179179227%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e179177179220%_)))
                          (_%$%hd179178179224%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e179177179220%_))))
                      (if (gx#stx-pair/null? _%$%tl179179179227%_)
                          (let ((_%__splice179950179951%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl179179179227%_
                                  '0)))
                            (let ((_%$%tl179182179233%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179950179951%_
                                      '1)))
                                  (_%$%target179180179230%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice179950179951%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl179182179233%_)
                                  (_%__match179968179969%_
                                   _%$%e179177179220%_
                                   _%$%hd179178179224%_
                                   _%$%tl179179179227%_
                                   _%__splice179950179951%_
                                   _%$%target179180179230%_
                                   _%$%tl179182179233%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g179173179213%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g179173179213%_)))))
                  (let () (declare (not safe)) (_%$%g179173179213%_))))))))))
