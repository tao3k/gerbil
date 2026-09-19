(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g182168_|
    (gx#core-deserialize-mark
     '(0
       ($%arg181018 . _%$%arg181018181076%_)
       (arg . _%arg181106%_)
       ($%arg181019 . _%$%arg181019181090%_)
       (id . _%id181043%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g182169_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g182168_|)))
  (define |[1]#_g182171_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g182172_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g182171_|)))
  (define |[1]#_g182173_|
    (gx#core-deserialize-mark
     '(0
       ($%arg181139 . _%$%arg181139181196%_)
       (arg . _%arg181226%_)
       ($%arg181140 . _%$%arg181140181210%_)
       (id . _%id181163%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g182174_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g182173_|)))
  (define |[1]#_g182176_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g182177_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g182176_|)))
  (define |[1]#_g182178_|
    (gx#core-deserialize-mark
     '(0
       ($%arg181259 . _%$%arg181259181316%_)
       (arg . _%arg181346%_)
       ($%arg181260 . _%$%arg181260181330%_)
       (id . _%id181283%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g182179_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g182178_|)))
  (define |[1]#_g182181_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g182182_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g182181_|)))
  (define |[1]#_g182183_|
    (gx#core-deserialize-mark
     '(0
       (arg . _%arg181466%_)
       ($%arg181379 . _%$%arg181379181436%_)
       ($%arg181380 . _%$%arg181380181450%_)
       (id . _%id181403%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g182184_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g182183_|)))
  (define |[1]#_g182186_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g182187_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g182186_|)))
  (begin
    (define |[:0:]#@set-load-path!|
      (lambda (_%$stx181000%_)
        (let* ((_%__stx182059182060%_ _%$stx181000%_)
               (_%$%g181005181026%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx182059182060%_))))
          (let ((_%__kont182062182063%_
                 (lambda (_%$%g181007181092%_)
                   (cons (gx#datum->syntax
                          |[1]#_g182169_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'paths) '())
                                     (cons (let ((__tmp182170
                                                  (lambda (_%$%g181107181110%_
                                                           _%$%g181108181113%_)
                                                    (cons _%$%g181107181110%_
                                                          _%$%g181108181113%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp182170
                                              '()
                                              _%$%g181007181092%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g182172_|
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
                (_%__kont182066182067%_
                 (lambda (_%$%g181020181033%_)
                   (gx#datum->syntax '#f 'set-load-path!))))
            (let* ((_%$%g181004181045%_
                    (lambda ()
                      (let ((_%$%g181020181033%_ _%__stx182059182060%_))
                        (if (gx#identifier? _%$%g181020181033%_)
                            (_%__kont182066182067%_ _%$%g181020181033%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g181005181026%_))))))
                   (_%__match182082182083%_
                    (lambda (_%$%e181008181052%_
                             _%$%hd181009181056%_
                             _%$%tl181010181059%_
                             _%__splice182064182065%_
                             _%$%target181011181062%_
                             _%$%tl181013181065%_)
                      (letrec ((_%$%loop181014181068%_
                                (lambda (_%$%hd181012181072%_
                                         _%$%arg181018181075%_)
                                  (if (gx#stx-pair? _%$%hd181012181072%_)
                                      (let ((_%$%e181015181078%_
                                             (gx#syntax-e
                                              _%$%hd181012181072%_)))
                                        (let ((_%$%lp-tl181017181085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e181015181078%_)))
                                              (_%$%lp-hd181016181082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e181015181078%_))))
                                          (_%$%loop181014181068%_
                                           _%$%lp-tl181017181085%_
                                           (cons _%$%lp-hd181016181082%_
                                                 _%$%arg181018181075%_))))
                                      (let ((_%$%arg181019181088%_
                                             (reverse _%$%arg181018181075%_)))
                                        (_%__kont182062182063%_
                                         _%$%arg181019181088%_))))))
                        (_%$%loop181014181068%_
                         _%$%target181011181062%_
                         '())))))
              (if (gx#stx-pair? _%__stx182059182060%_)
                  (let ((_%$%e181008181052%_
                         (gx#syntax-e _%__stx182059182060%_)))
                    (let ((_%$%tl181010181059%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e181008181052%_)))
                          (_%$%hd181009181056%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e181008181052%_))))
                      (if (gx#stx-pair/null? _%$%tl181010181059%_)
                          (let ((_%__splice182064182065%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl181010181059%_
                                  '0)))
                            (let ((_%$%tl181013181065%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice182064182065%_
                                      '1)))
                                  (_%$%target181011181062%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice182064182065%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl181013181065%_)
                                  (_%__match182082182083%_
                                   _%$%e181008181052%_
                                   _%$%hd181009181056%_
                                   _%$%tl181010181059%_
                                   _%__splice182064182065%_
                                   _%$%target181011181062%_
                                   _%$%tl181013181065%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g181004181045%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g181004181045%_)))))
                  (let () (declare (not safe)) (_%$%g181004181045%_))))))))
    (define |[:0:]#@load-module|
      (lambda (_%$stx181121%_)
        (let* ((_%__stx182085182086%_ _%$stx181121%_)
               (_%$%g181126181147%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx182085182086%_))))
          (let ((_%__kont182088182089%_
                 (lambda (_%$%g181128181212%_)
                   (cons (gx#datum->syntax
                          |[1]#_g182174_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp182175
                                                  (lambda (_%$%g181227181230%_
                                                           _%$%g181228181233%_)
                                                    (cons _%$%g181227181230%_
                                                          _%$%g181228181233%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp182175
                                              '()
                                              _%$%g181128181212%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g182177_|
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
                (_%__kont182092182093%_
                 (lambda (_%$%g181141181154%_)
                   (gx#datum->syntax '#f 'load-module))))
            (let* ((_%$%g181125181165%_
                    (lambda ()
                      (let ((_%$%g181141181154%_ _%__stx182085182086%_))
                        (if (gx#identifier? _%$%g181141181154%_)
                            (_%__kont182092182093%_ _%$%g181141181154%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g181126181147%_))))))
                   (_%__match182108182109%_
                    (lambda (_%$%e181129181172%_
                             _%$%hd181130181176%_
                             _%$%tl181131181179%_
                             _%__splice182090182091%_
                             _%$%target181132181182%_
                             _%$%tl181134181185%_)
                      (letrec ((_%$%loop181135181188%_
                                (lambda (_%$%hd181133181192%_
                                         _%$%arg181139181195%_)
                                  (if (gx#stx-pair? _%$%hd181133181192%_)
                                      (let ((_%$%e181136181198%_
                                             (gx#syntax-e
                                              _%$%hd181133181192%_)))
                                        (let ((_%$%lp-tl181138181205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e181136181198%_)))
                                              (_%$%lp-hd181137181202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e181136181198%_))))
                                          (_%$%loop181135181188%_
                                           _%$%lp-tl181138181205%_
                                           (cons _%$%lp-hd181137181202%_
                                                 _%$%arg181139181195%_))))
                                      (let ((_%$%arg181140181208%_
                                             (reverse _%$%arg181139181195%_)))
                                        (_%__kont182088182089%_
                                         _%$%arg181140181208%_))))))
                        (_%$%loop181135181188%_
                         _%$%target181132181182%_
                         '())))))
              (if (gx#stx-pair? _%__stx182085182086%_)
                  (let ((_%$%e181129181172%_
                         (gx#syntax-e _%__stx182085182086%_)))
                    (let ((_%$%tl181131181179%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e181129181172%_)))
                          (_%$%hd181130181176%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e181129181172%_))))
                      (if (gx#stx-pair/null? _%$%tl181131181179%_)
                          (let ((_%__splice182090182091%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl181131181179%_
                                  '0)))
                            (let ((_%$%tl181134181185%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice182090182091%_
                                      '1)))
                                  (_%$%target181132181182%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice182090182091%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl181134181185%_)
                                  (_%__match182108182109%_
                                   _%$%e181129181172%_
                                   _%$%hd181130181176%_
                                   _%$%tl181131181179%_
                                   _%__splice182090182091%_
                                   _%$%target181132181182%_
                                   _%$%tl181134181185%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g181125181165%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g181125181165%_)))))
                  (let () (declare (not safe)) (_%$%g181125181165%_))))))))
    (define |[:0:]#@reload-module!|
      (lambda (_%$stx181241%_)
        (let* ((_%__stx182111182112%_ _%$stx181241%_)
               (_%$%g181246181267%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx182111182112%_))))
          (let ((_%__kont182114182115%_
                 (lambda (_%$%g181248181332%_)
                   (cons (gx#datum->syntax
                          |[1]#_g182179_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp182180
                                                  (lambda (_%$%g181347181350%_
                                                           _%$%g181348181353%_)
                                                    (cons _%$%g181347181350%_
                                                          _%$%g181348181353%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp182180
                                              '()
                                              _%$%g181248181332%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g182182_|
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
                (_%__kont182118182119%_
                 (lambda (_%$%g181261181274%_)
                   (gx#datum->syntax '#f 'reload-module!))))
            (let* ((_%$%g181245181285%_
                    (lambda ()
                      (let ((_%$%g181261181274%_ _%__stx182111182112%_))
                        (if (gx#identifier? _%$%g181261181274%_)
                            (_%__kont182118182119%_ _%$%g181261181274%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g181246181267%_))))))
                   (_%__match182134182135%_
                    (lambda (_%$%e181249181292%_
                             _%$%hd181250181296%_
                             _%$%tl181251181299%_
                             _%__splice182116182117%_
                             _%$%target181252181302%_
                             _%$%tl181254181305%_)
                      (letrec ((_%$%loop181255181308%_
                                (lambda (_%$%hd181253181312%_
                                         _%$%arg181259181315%_)
                                  (if (gx#stx-pair? _%$%hd181253181312%_)
                                      (let ((_%$%e181256181318%_
                                             (gx#syntax-e
                                              _%$%hd181253181312%_)))
                                        (let ((_%$%lp-tl181258181325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e181256181318%_)))
                                              (_%$%lp-hd181257181322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e181256181318%_))))
                                          (_%$%loop181255181308%_
                                           _%$%lp-tl181258181325%_
                                           (cons _%$%lp-hd181257181322%_
                                                 _%$%arg181259181315%_))))
                                      (let ((_%$%arg181260181328%_
                                             (reverse _%$%arg181259181315%_)))
                                        (_%__kont182114182115%_
                                         _%$%arg181260181328%_))))))
                        (_%$%loop181255181308%_
                         _%$%target181252181302%_
                         '())))))
              (if (gx#stx-pair? _%__stx182111182112%_)
                  (let ((_%$%e181249181292%_
                         (gx#syntax-e _%__stx182111182112%_)))
                    (let ((_%$%tl181251181299%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e181249181292%_)))
                          (_%$%hd181250181296%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e181249181292%_))))
                      (if (gx#stx-pair/null? _%$%tl181251181299%_)
                          (let ((_%__splice182116182117%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl181251181299%_
                                  '0)))
                            (let ((_%$%tl181254181305%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice182116182117%_
                                      '1)))
                                  (_%$%target181252181302%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice182116182117%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl181254181305%_)
                                  (_%__match182134182135%_
                                   _%$%e181249181292%_
                                   _%$%hd181250181296%_
                                   _%$%tl181251181299%_
                                   _%__splice182116182117%_
                                   _%$%target181252181302%_
                                   _%$%tl181254181305%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g181245181285%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g181245181285%_)))))
                  (let () (declare (not safe)) (_%$%g181245181285%_))))))))
    (define |[:0:]#@module-load-order|
      (lambda (_%$stx181361%_)
        (let* ((_%__stx182137182138%_ _%$stx181361%_)
               (_%$%g181366181387%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx182137182138%_))))
          (let ((_%__kont182140182141%_
                 (lambda (_%$%g181368181452%_)
                   (cons (gx#datum->syntax
                          |[1]#_g182184_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'modpath) '())
                                     (cons (let ((__tmp182185
                                                  (lambda (_%$%g181467181470%_
                                                           _%$%g181468181473%_)
                                                    (cons _%$%g181467181470%_
                                                          _%$%g181468181473%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp182185
                                              '()
                                              _%$%g181368181452%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g182187_|
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
                (_%__kont182144182145%_
                 (lambda (_%$%g181381181394%_)
                   (gx#datum->syntax '#f 'module-load-order))))
            (let* ((_%$%g181365181405%_
                    (lambda ()
                      (let ((_%$%g181381181394%_ _%__stx182137182138%_))
                        (if (gx#identifier? _%$%g181381181394%_)
                            (_%__kont182144182145%_ _%$%g181381181394%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g181366181387%_))))))
                   (_%__match182160182161%_
                    (lambda (_%$%e181369181412%_
                             _%$%hd181370181416%_
                             _%$%tl181371181419%_
                             _%__splice182142182143%_
                             _%$%target181372181422%_
                             _%$%tl181374181425%_)
                      (letrec ((_%$%loop181375181428%_
                                (lambda (_%$%hd181373181432%_
                                         _%$%arg181379181435%_)
                                  (if (gx#stx-pair? _%$%hd181373181432%_)
                                      (let ((_%$%e181376181438%_
                                             (gx#syntax-e
                                              _%$%hd181373181432%_)))
                                        (let ((_%$%lp-tl181378181445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e181376181438%_)))
                                              (_%$%lp-hd181377181442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e181376181438%_))))
                                          (_%$%loop181375181428%_
                                           _%$%lp-tl181378181445%_
                                           (cons _%$%lp-hd181377181442%_
                                                 _%$%arg181379181435%_))))
                                      (let ((_%$%arg181380181448%_
                                             (reverse _%$%arg181379181435%_)))
                                        (_%__kont182140182141%_
                                         _%$%arg181380181448%_))))))
                        (_%$%loop181375181428%_
                         _%$%target181372181422%_
                         '())))))
              (if (gx#stx-pair? _%__stx182137182138%_)
                  (let ((_%$%e181369181412%_
                         (gx#syntax-e _%__stx182137182138%_)))
                    (let ((_%$%tl181371181419%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e181369181412%_)))
                          (_%$%hd181370181416%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e181369181412%_))))
                      (if (gx#stx-pair/null? _%$%tl181371181419%_)
                          (let ((_%__splice182142182143%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl181371181419%_
                                  '0)))
                            (let ((_%$%tl181374181425%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice182142182143%_
                                      '1)))
                                  (_%$%target181372181422%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice182142182143%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl181374181425%_)
                                  (_%__match182160182161%_
                                   _%$%e181369181412%_
                                   _%$%hd181370181416%_
                                   _%$%tl181371181419%_
                                   _%__splice182142182143%_
                                   _%$%target181372181422%_
                                   _%$%tl181374181425%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g181365181405%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g181365181405%_)))))
                  (let () (declare (not safe)) (_%$%g181365181405%_))))))))))
