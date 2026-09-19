(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g282839_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282846_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282848_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282850_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282852_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282854_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282866_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282868_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282870_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282872_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282874_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx276297%_)
        (let* ((_%$%g276301276319%_
                (lambda (_%$%g276302276315%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276302276315%_))))
               (_%$%g276300276374%_
                (lambda (_%$%g276302276323%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276302276323%_))
                      (let ((_%$%e276305276326%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276302276323%_))))
                        (let ((_%$%hd276306276330%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276305276326%_)))
                              (_%$%tl276307276333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276305276326%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276307276333%_))
                              (let ((_%$%e276308276336%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276307276333%_))))
                                (let ((_%$%hd276309276340%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276308276336%_)))
                                      (_%$%tl276310276343%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276308276336%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl276310276343%_))
                                      (let ((_%$%e276311276346%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl276310276343%_))))
                                        (let ((_%$%hd276312276350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276311276346%_)))
                                              (_%$%tl276313276353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276311276346%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl276313276353%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd276309276340%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-type!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd276309276340%_ '()))
                      (cons _%$%hd276312276350%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g276301276319%_
                                                   _%$%g276302276323%_))
                                              (_%$%g276301276319%_
                                               _%$%g276302276323%_))))
                                      (_%$%g276301276319%_
                                       _%$%g276302276323%_))))
                              (_%$%g276301276319%_ _%$%g276302276323%_))))
                      (_%$%g276301276319%_ _%$%g276302276323%_)))))
          (_%$%g276300276374%_ _%$stx276297%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx276378%_)
        (let* ((_%$%g276382276400%_
                (lambda (_%$%g276383276396%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276383276396%_))))
               (_%$%g276381276455%_
                (lambda (_%$%g276383276404%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276383276404%_))
                      (let ((_%$%e276386276407%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276383276404%_))))
                        (let ((_%$%hd276387276411%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276386276407%_)))
                              (_%$%tl276388276414%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276386276407%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276388276414%_))
                              (let ((_%$%e276389276417%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276388276414%_))))
                                (let ((_%$%hd276390276421%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276389276417%_)))
                                      (_%$%tl276391276424%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276389276417%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl276391276424%_))
                                      (let ((_%$%e276392276427%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl276391276424%_))))
                                        (let ((_%$%hd276393276431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276392276427%_)))
                                              (_%$%tl276394276434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276392276427%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl276394276434%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd276390276421%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-class!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd276390276421%_ '()))
                      (cons _%$%hd276393276431%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g276382276400%_
                                                   _%$%g276383276404%_))
                                              (_%$%g276382276400%_
                                               _%$%g276383276404%_))))
                                      (_%$%g276382276400%_
                                       _%$%g276383276404%_))))
                              (_%$%g276382276400%_ _%$%g276383276404%_))))
                      (_%$%g276382276400%_ _%$%g276383276404%_)))))
          (_%$%g276381276455%_ _%$stx276378%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx276459%_)
        (let* ((_%$%g276463276492%_
                (lambda (_%$%g276464276488%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276464276488%_))))
               (_%$%g276462276588%_
                (lambda (_%$%g276464276496%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276464276496%_))
                      (let ((_%$%e276467276499%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276464276496%_))))
                        (let ((_%$%hd276468276503%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276467276499%_)))
                              (_%$%tl276469276506%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276467276499%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl276469276506%_))
                              (let ((_g282817_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl276469276506%_
                                        '0))))
                                (begin
                                  (let ((_g282818_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g282817_)
                                               (##values-length _g282817_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g282818_ 2)))
                                        (error "Context expects 2 values"
                                               _g282818_)))
                                  (let ((_%$%target276470276509%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282817_ 0)))
                                        (_%$%tl276472276512%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282817_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl276472276512%_))
                                        (letrec ((_%$%loop276473276515%_
                                                  (lambda (_%$%hd276471276519%_
                                                           _%$%type276477276522%_
                                                           _%$%symbol276478276523%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd276471276519%_))
                                                        (let ((_%$%e276474276525%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd276471276519%_))))
                  (let ((_%$%lp-hd276475276529%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e276474276525%_)))
                        (_%$%lp-tl276476276532%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e276474276525%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd276475276529%_))
                        (let ((_%$%e276481276535%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd276475276529%_))))
                          (let ((_%$%hd276482276539%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e276481276535%_)))
                                (_%$%tl276483276542%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e276481276535%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl276483276542%_))
                                (let ((_%$%e276484276545%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl276483276542%_))))
                                  (let ((_%$%hd276485276549%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e276484276545%_)))
                                        (_%$%tl276486276552%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e276484276545%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl276486276552%_))
                                        (_%$%loop276473276515%_
                                         _%$%lp-tl276476276532%_
                                         (cons _%$%hd276485276549%_
                                               _%$%type276477276522%_)
                                         (cons _%$%hd276482276539%_
                                               _%$%symbol276478276523%_))
                                        (_%$%g276463276492%_
                                         _%$%g276464276496%_))))
                                (_%$%g276463276492%_ _%$%g276464276496%_))))
                        (_%$%g276463276492%_ _%$%g276464276496%_))))
                (let ((_%$%type276479276555%_ (reverse _%$%type276477276522%_))
                      (_%$%symbol276480276557%_
                       (reverse _%$%symbol276478276523%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%type276479276555%_
                             _%$%symbol276480276557%_))
                          (let ((__tmp282819
                                 (lambda (_%$%g276576276580%_
                                          _%$%g276577276583%_
                                          _%$%g276578276585%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%$%g276577276583%_
                                                     (cons _%$%g276576276580%_
                                                           '())))
                                         _%$%g276578276585%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp282819
                             '()
                             _%$%type276479276555%_
                             _%$%symbol276480276557%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop276473276515%_
                                           _%$%target276470276509%_
                                           '()
                                           '()))
                                        (_%$%g276463276492%_
                                         _%$%g276464276496%_)))))
                              (_%$%g276463276492%_ _%$%g276464276496%_))))
                      (_%$%g276463276492%_ _%$%g276464276496%_)))))
          (_%$%g276462276588%_ _%$stx276459%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx276593%_)
        (let* ((_%__stx282128282129%_ _%$stx276593%_)
               (_%$%g276598276640%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx282128282129%_)))))
          (let ((_%__kont282131282132%_
                 (lambda (_%$%g276600276768%_
                          _%$%g276601276770%_
                          _%$%g276602276771%_
                          _%$%g276603276772%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g276603276772%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g276602276771%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%g276601276770%_
                                                       '()))
                                           (cons _%$%g276600276768%_ '())))))))
                (_%__kont282133282134%_
                 (lambda (_%$%g276619276687%_
                          _%$%g276620276689%_
                          _%$%g276621276690%_
                          _%$%g276622276691%_)
                   (cons _%$%g276622276691%_
                         (cons _%$%g276621276690%_
                               (cons _%$%g276620276689%_
                                     (cons _%$%g276619276687%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match282167282168%_
                   (lambda (_%$%e276604276718%_
                            _%$%hd276605276722%_
                            _%$%tl276606276725%_
                            _%$%e276607276728%_
                            _%$%hd276608276732%_
                            _%$%tl276609276735%_
                            _%$%e276610276738%_
                            _%$%hd276611276742%_
                            _%$%tl276612276745%_
                            _%$%e276613276748%_
                            _%$%hd276614276752%_
                            _%$%tl276615276755%_
                            _%$%e276616276758%_
                            _%$%hd276617276762%_
                            _%$%tl276618276765%_)
                     (let ((_%$%g276600276768%_ _%$%hd276617276762%_)
                           (_%$%g276601276770%_ _%$%hd276614276752%_)
                           (_%$%g276602276771%_ _%$%hd276611276742%_)
                           (_%$%g276603276772%_ _%$%hd276608276732%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g276603276772%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g276602276771%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g276601276770%_)))
                           (_%__kont282131282132%_
                            _%$%g276600276768%_
                            _%$%g276601276770%_
                            _%$%g276602276771%_
                            _%$%g276603276772%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g276598276640%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx282128282129%_))
                  (let ((_%$%e276604276718%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx282128282129%_))))
                    (let ((_%$%tl276606276725%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e276604276718%_)))
                          (_%$%hd276605276722%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e276604276718%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl276606276725%_))
                          (let ((_%$%e276607276728%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl276606276725%_))))
                            (let ((_%$%tl276609276735%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e276607276728%_)))
                                  (_%$%hd276608276732%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e276607276728%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl276609276735%_))
                                  (let ((_%$%e276610276738%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl276609276735%_))))
                                    (let ((_%$%tl276612276745%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e276610276738%_)))
                                          (_%$%hd276611276742%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e276610276738%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl276612276745%_))
                                          (let ((_%$%e276613276748%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl276612276745%_))))
                                            (let ((_%$%tl276615276755%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e276613276748%_)))
                                                  (_%$%hd276614276752%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e276613276748%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl276615276755%_))
                                                  (let ((_%$%e276616276758%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl276615276755%_))))
                                                    (let ((_%$%tl276618276765%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e276616276758%_)))
                                                          (_%$%hd276617276762%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e276616276758%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl276618276765%_))
                                                          (_%__match282167282168%_
                                                           _%$%e276604276718%_
                                                           _%$%hd276605276722%_
                                                           _%$%tl276606276725%_
                                                           _%$%e276607276728%_
                                                           _%$%hd276608276732%_
                                                           _%$%tl276609276735%_
                                                           _%$%e276610276738%_
                                                           _%$%hd276611276742%_
                                                           _%$%tl276612276745%_
                                                           _%$%e276613276748%_
                                                           _%$%hd276614276752%_
                                                           _%$%tl276615276755%_
                                                           _%$%e276616276758%_
                                                           _%$%hd276617276762%_
                                                           _%$%tl276618276765%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g276598276640%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl276615276755%_))
                                                      (_%__kont282133282134%_
                                                       _%$%hd276614276752%_
                                                       _%$%hd276611276742%_
                                                       _%$%hd276608276732%_
                                                       _%$%hd276605276722%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g276598276640%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g276598276640%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g276598276640%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g276598276640%_)))))
                  (let () (declare (not safe)) (_%$%g276598276640%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx276797%_)
        (let* ((_%$%g276801276836%_
                (lambda (_%$%g276802276832%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276802276832%_))))
               (_%$%g276800276949%_
                (lambda (_%$%g276802276840%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276802276840%_))
                      (let ((_%$%e276806276843%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276802276840%_))))
                        (let ((_%$%hd276807276847%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276806276843%_)))
                              (_%$%tl276808276850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276806276843%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl276808276850%_))
                              (let ((_g282820_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl276808276850%_
                                        '0))))
                                (begin
                                  (let ((_g282821_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g282820_)
                                               (##values-length _g282820_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g282821_ 2)))
                                        (error "Context expects 2 values"
                                               _g282821_)))
                                  (let ((_%$%target276809276853%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282820_ 0)))
                                        (_%$%tl276811276856%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282820_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl276811276856%_))
                                        (letrec ((_%$%loop276812276859%_
                                                  (lambda (_%$%hd276810276863%_
                                                           _%$%symbol276816276866%_
                                                           _%$%method276817276867%_
                                                           _%$%type-t276818276868%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd276810276863%_))
                                                        (let ((_%$%e276813276870%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd276810276863%_))))
                  (let ((_%$%lp-hd276814276874%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e276813276870%_)))
                        (_%$%lp-tl276815276877%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e276813276870%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd276814276874%_))
                        (let ((_%$%e276822276880%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd276814276874%_))))
                          (let ((_%$%hd276823276884%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e276822276880%_)))
                                (_%$%tl276824276887%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e276822276880%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl276824276887%_))
                                (let ((_%$%e276825276890%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl276824276887%_))))
                                  (let ((_%$%hd276826276894%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e276825276890%_)))
                                        (_%$%tl276827276897%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e276825276890%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl276827276897%_))
                                        (let ((_%$%e276828276900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl276827276897%_))))
                                          (let ((_%$%hd276829276904%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e276828276900%_)))
                                                (_%$%tl276830276907%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e276828276900%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl276830276907%_))
                                                (_%$%loop276812276859%_
                                                 _%$%lp-tl276815276877%_
                                                 (cons _%$%hd276829276904%_
                                                       _%$%symbol276816276866%_)
                                                 (cons _%$%hd276826276894%_
                                                       _%$%method276817276867%_)
                                                 (cons _%$%hd276823276884%_
                                                       _%$%type-t276818276868%_))
                                                (_%$%g276801276836%_
                                                 _%$%g276802276840%_))))
                                        (_%$%g276801276836%_
                                         _%$%g276802276840%_))))
                                (_%$%g276801276836%_ _%$%g276802276840%_))))
                        (_%$%g276801276836%_ _%$%g276802276840%_))))
                (let ((_%$%symbol276819276910%_
                       (reverse _%$%symbol276816276866%_))
                      (_%$%method276820276912%_
                       (reverse _%$%method276817276867%_))
                      (_%$%type-t276821276913%_
                       (reverse _%$%type-t276818276868%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%symbol276819276910%_
                             _%$%method276820276912%_
                             _%$%type-t276821276913%_))
                          (let ((__tmp282822
                                 (lambda (_%$%g276934276939%_
                                          _%$%g276935276942%_
                                          _%$%g276936276944%_
                                          _%$%g276937276946%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-method))
                                               (cons _%$%g276936276944%_
                                                     (cons _%$%g276935276942%_
                                                           (cons _%$%g276934276939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%$%g276937276946%_))))
                            (declare (not safe))
                            (__foldr*
                             __tmp282822
                             '()
                             _%$%symbol276819276910%_
                             _%$%method276820276912%_
                             _%$%type-t276821276913%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop276812276859%_
                                           _%$%target276809276853%_
                                           '()
                                           '()
                                           '()))
                                        (_%$%g276801276836%_
                                         _%$%g276802276840%_)))))
                              (_%$%g276801276836%_ _%$%g276802276840%_))))
                      (_%$%g276801276836%_ _%$%g276802276840%_)))))
          (_%$%g276800276949%_ _%$stx276797%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx276954%_)
        (let* ((_%$%g276958276991%_
                (lambda (_%$%g276959276987%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276959276987%_))))
               (_%$%g276957277101%_
                (lambda (_%$%g276959276995%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276959276995%_))
                      (let ((_%$%e276963276998%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276959276995%_))))
                        (let ((_%$%hd276964277002%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276963276998%_)))
                              (_%$%tl276965277005%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276963276998%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276965277005%_))
                              (let ((_%$%e276966277008%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276965277005%_))))
                                (let ((_%$%hd276967277012%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276966277008%_)))
                                      (_%$%tl276968277015%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276966277008%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl276968277015%_))
                                      (let ((_g282823_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl276968277015%_
                                                '0))))
                                        (begin
                                          (let ((_g282824_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g282823_)
                                                       (##values-length
                                                        _g282823_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g282824_ 2)))
                                                (error "Context expects 2 values"
                                                       _g282824_)))
                                          (let ((_%$%target276969277018%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g282823_ 0)))
                                                (_%$%tl276971277021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g282823_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl276971277021%_))
                                                (letrec ((_%$%loop276972277024%_
                                                          (lambda (_%$%hd276970277028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%symbol276976277031%_
                           _%$%method276977277032%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd276970277028%_))
                        (let ((_%$%e276973277034%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd276970277028%_))))
                          (let ((_%$%lp-hd276974277038%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e276973277034%_)))
                                (_%$%lp-tl276975277041%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e276973277034%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd276974277038%_))
                                (let ((_%$%e276980277044%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e
                                          _%$%lp-hd276974277038%_))))
                                  (let ((_%$%hd276981277048%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e276980277044%_)))
                                        (_%$%tl276982277051%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e276980277044%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl276982277051%_))
                                        (let ((_%$%e276983277054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl276982277051%_))))
                                          (let ((_%$%hd276984277058%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e276983277054%_)))
                                                (_%$%tl276985277061%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e276983277054%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl276985277061%_))
                                                (_%$%loop276972277024%_
                                                 _%$%lp-tl276975277041%_
                                                 (cons _%$%hd276984277058%_
                                                       _%$%symbol276976277031%_)
                                                 (cons _%$%hd276981277048%_
                                                       _%$%method276977277032%_))
                                                (_%$%g276958276991%_
                                                 _%$%g276959276995%_))))
                                        (_%$%g276958276991%_
                                         _%$%g276959276995%_))))
                                (_%$%g276958276991%_ _%$%g276959276995%_))))
                        (let ((_%$%symbol276978277064%_
                               (reverse _%$%symbol276976277031%_))
                              (_%$%method276979277066%_
                               (reverse _%$%method276977277032%_)))
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'begin))
                                (begin
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-check-splice-targets
                                     _%$%symbol276978277064%_
                                     _%$%method276979277066%_))
                                  (let ((__tmp282825
                                         (lambda (_%$%g277089277093%_
                                                  _%$%g277090277096%_
                                                  _%$%g277091277098%_)
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method))
                                                       (cons _%$%hd276967277012%_
                                                             (cons _%$%g277090277096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g277089277093%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%g277091277098%_))))
                                    (declare (not safe))
                                    (foldr__1
                                     __tmp282825
                                     '()
                                     _%$%symbol276978277064%_
                                     _%$%method276979277066%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop276972277024%_
                                                   _%$%target276969277018%_
                                                   '()
                                                   '()))
                                                (_%$%g276958276991%_
                                                 _%$%g276959276995%_)))))
                                      (_%$%g276958276991%_
                                       _%$%g276959276995%_))))
                              (_%$%g276958276991%_ _%$%g276959276995%_))))
                      (_%$%g276958276991%_ _%$%g276959276995%_)))))
          (_%$%g276957277101%_ _%$stx276954%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx277106%_)
        (let* ((_%$%g277110277124%_
                (lambda (_%$%g277111277120%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277111277120%_))))
               (_%$%g277109277165%_
                (lambda (_%$%g277111277128%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277111277128%_))
                      (let ((_%$%e277113277131%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277111277128%_))))
                        (let ((_%$%hd277114277135%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277113277131%_)))
                              (_%$%tl277115277138%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277113277131%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277115277138%_))
                              (let ((_%$%e277116277141%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277115277138%_))))
                                (let ((_%$%hd277117277145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277116277141%_)))
                                      (_%$%tl277118277148%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277116277141%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl277118277148%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!alias))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd277117277145%_
                                                              '()))
                                                  '()))
                                      (_%$%g277110277124%_
                                       _%$%g277111277128%_))))
                              (_%$%g277110277124%_ _%$%g277111277128%_))))
                      (_%$%g277110277124%_ _%$%g277111277128%_)))))
          (_%$%g277109277165%_ _%$stx277106%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx277169%_)
        (let* ((_%$%g277173277227%_
                (lambda (_%$%g277174277223%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277174277223%_))))
               (_%$%g277172277408%_
                (lambda (_%$%g277174277231%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277174277231%_))
                      (let ((_%$%e277186277234%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277174277231%_))))
                        (let ((_%$%hd277187277238%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277186277234%_)))
                              (_%$%tl277188277241%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277186277234%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277188277241%_))
                              (let ((_%$%e277189277244%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277188277241%_))))
                                (let ((_%$%hd277190277248%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277189277244%_)))
                                      (_%$%tl277191277251%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277189277244%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl277191277251%_))
                                      (let ((_%$%e277192277254%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl277191277251%_))))
                                        (let ((_%$%hd277193277258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e277192277254%_)))
                                              (_%$%tl277194277261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e277192277254%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl277194277261%_))
                                              (let ((_%$%e277195277264%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl277194277261%_))))
                                                (let ((_%$%hd277196277268%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e277195277264%_)))
                                                      (_%$%tl277197277271%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e277195277264%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl277197277271%_))
                                                      (let ((_%$%e277198277274%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl277197277271%_))))
                (let ((_%$%hd277199277278%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e277198277274%_)))
                      (_%$%tl277200277281%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e277198277274%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl277200277281%_))
                      (let ((_%$%e277201277284%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl277200277281%_))))
                        (let ((_%$%hd277202277288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277201277284%_)))
                              (_%$%tl277203277291%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277201277284%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277203277291%_))
                              (let ((_%$%e277204277294%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277203277291%_))))
                                (let ((_%$%hd277205277298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277204277294%_)))
                                      (_%$%tl277206277301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277204277294%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl277206277301%_))
                                      (let ((_%$%e277207277304%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl277206277301%_))))
                                        (let ((_%$%hd277208277308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e277207277304%_)))
                                              (_%$%tl277209277311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e277207277304%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl277209277311%_))
                                              (let ((_%$%e277210277314%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl277209277311%_))))
                                                (let ((_%$%hd277211277318%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e277210277314%_)))
                                                      (_%$%tl277212277321%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e277210277314%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl277212277321%_))
                                                      (let ((_%$%e277213277324%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl277212277321%_))))
                (let ((_%$%hd277214277328%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e277213277324%_)))
                      (_%$%tl277215277331%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e277213277324%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl277215277331%_))
                      (let ((_%$%e277216277334%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl277215277331%_))))
                        (let ((_%$%hd277217277338%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277216277334%_)))
                              (_%$%tl277218277341%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277216277334%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277218277341%_))
                              (let ((_%$%e277219277344%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277218277341%_))))
                                (let ((_%$%hd277220277348%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277219277344%_)))
                                      (_%$%tl277221277351%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277219277344%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl277221277351%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!class))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd277190277248%_
                                                              '()))
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'quote))
                      (cons _%$%hd277193277258%_ '()))
                (cons (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd277196277268%_ '()))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%$%hd277199277278%_ '()))
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote))
                                        (cons _%$%hd277202277288%_ '()))
                                  (cons (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote))
                                              (cons _%$%hd277205277298%_ '()))
                                        (cons _%$%hd277208277308%_
                                              (cons _%$%hd277211277318%_
                                                    (cons _%$%hd277214277328%_
                                                          (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd277217277338%_ '()))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd277220277348%_ '()))
                              '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g277173277227%_
                                       _%$%g277174277231%_))))
                              (_%$%g277173277227%_ _%$%g277174277231%_))))
                      (_%$%g277173277227%_ _%$%g277174277231%_))))
              (_%$%g277173277227%_ _%$%g277174277231%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g277173277227%_
                                               _%$%g277174277231%_))))
                                      (_%$%g277173277227%_
                                       _%$%g277174277231%_))))
                              (_%$%g277173277227%_ _%$%g277174277231%_))))
                      (_%$%g277173277227%_ _%$%g277174277231%_))))
              (_%$%g277173277227%_ _%$%g277174277231%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g277173277227%_
                                               _%$%g277174277231%_))))
                                      (_%$%g277173277227%_
                                       _%$%g277174277231%_))))
                              (_%$%g277173277227%_ _%$%g277174277231%_))))
                      (_%$%g277173277227%_ _%$%g277174277231%_)))))
          (_%$%g277172277408%_ _%$stx277169%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx277412%_)
        (let* ((_%$%g277416277430%_
                (lambda (_%$%g277417277426%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277417277426%_))))
               (_%$%g277415277471%_
                (lambda (_%$%g277417277434%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277417277434%_))
                      (let ((_%$%e277419277437%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277417277434%_))))
                        (let ((_%$%hd277420277441%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277419277437%_)))
                              (_%$%tl277421277444%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277419277437%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277421277444%_))
                              (let ((_%$%e277422277447%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277421277444%_))))
                                (let ((_%$%hd277423277451%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277422277447%_)))
                                      (_%$%tl277424277454%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277422277447%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl277424277454%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!predicate))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd277423277451%_
                                                              '()))
                                                  '()))
                                      (_%$%g277416277430%_
                                       _%$%g277417277434%_))))
                              (_%$%g277416277430%_ _%$%g277417277434%_))))
                      (_%$%g277416277430%_ _%$%g277417277434%_)))))
          (_%$%g277415277471%_ _%$stx277412%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx277475%_)
        (let* ((_%$%g277479277493%_
                (lambda (_%$%g277480277489%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277480277489%_))))
               (_%$%g277478277534%_
                (lambda (_%$%g277480277497%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277480277497%_))
                      (let ((_%$%e277482277500%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277480277497%_))))
                        (let ((_%$%hd277483277504%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277482277500%_)))
                              (_%$%tl277484277507%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277482277500%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277484277507%_))
                              (let ((_%$%e277485277510%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277484277507%_))))
                                (let ((_%$%hd277486277514%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277485277510%_)))
                                      (_%$%tl277487277517%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277485277510%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl277487277517%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!constructor))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd277486277514%_
                                                              '()))
                                                  '()))
                                      (_%$%g277479277493%_
                                       _%$%g277480277497%_))))
                              (_%$%g277479277493%_ _%$%g277480277497%_))))
                      (_%$%g277479277493%_ _%$%g277480277497%_)))))
          (_%$%g277478277534%_ _%$stx277475%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx277538%_)
        (let* ((_%$%g277542277564%_
                (lambda (_%$%g277543277560%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277543277560%_))))
               (_%$%g277541277633%_
                (lambda (_%$%g277543277568%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277543277568%_))
                      (let ((_%$%e277547277571%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277543277568%_))))
                        (let ((_%$%hd277548277575%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277547277571%_)))
                              (_%$%tl277549277578%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277547277571%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277549277578%_))
                              (let ((_%$%e277550277581%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277549277578%_))))
                                (let ((_%$%hd277551277585%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277550277581%_)))
                                      (_%$%tl277552277588%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277550277581%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl277552277588%_))
                                      (let ((_%$%e277553277591%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl277552277588%_))))
                                        (let ((_%$%hd277554277595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e277553277591%_)))
                                              (_%$%tl277555277598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e277553277591%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl277555277598%_))
                                              (let ((_%$%e277556277601%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl277555277598%_))))
                                                (let ((_%$%hd277557277605%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e277556277601%_)))
                                                      (_%$%tl277558277608%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e277556277601%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl277558277608%_))
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!accessor))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd277551277585%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd277554277595%_ '()))
                                (cons _%$%hd277557277605%_ '()))))
              (_%$%g277542277564%_ _%$%g277543277568%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g277542277564%_
                                               _%$%g277543277568%_))))
                                      (_%$%g277542277564%_
                                       _%$%g277543277568%_))))
                              (_%$%g277542277564%_ _%$%g277543277568%_))))
                      (_%$%g277542277564%_ _%$%g277543277568%_)))))
          (_%$%g277541277633%_ _%$stx277538%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx277637%_)
        (let* ((_%$%g277641277663%_
                (lambda (_%$%g277642277659%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277642277659%_))))
               (_%$%g277640277732%_
                (lambda (_%$%g277642277667%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277642277667%_))
                      (let ((_%$%e277646277670%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277642277667%_))))
                        (let ((_%$%hd277647277674%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277646277670%_)))
                              (_%$%tl277648277677%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277646277670%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277648277677%_))
                              (let ((_%$%e277649277680%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277648277677%_))))
                                (let ((_%$%hd277650277684%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277649277680%_)))
                                      (_%$%tl277651277687%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277649277680%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl277651277687%_))
                                      (let ((_%$%e277652277690%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl277651277687%_))))
                                        (let ((_%$%hd277653277694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e277652277690%_)))
                                              (_%$%tl277654277697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e277652277690%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl277654277697%_))
                                              (let ((_%$%e277655277700%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl277654277697%_))))
                                                (let ((_%$%hd277656277704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e277655277700%_)))
                                                      (_%$%tl277657277707%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e277655277700%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl277657277707%_))
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!mutator))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd277650277684%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd277653277694%_ '()))
                                (cons _%$%hd277656277704%_ '()))))
              (_%$%g277641277663%_ _%$%g277642277667%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g277641277663%_
                                               _%$%g277642277667%_))))
                                      (_%$%g277641277663%_
                                       _%$%g277642277667%_))))
                              (_%$%g277641277663%_ _%$%g277642277667%_))))
                      (_%$%g277641277663%_ _%$%g277642277667%_)))))
          (_%$%g277640277732%_ _%$stx277637%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx277736%_)
        (let* ((_%$%g277740277754%_
                (lambda (_%$%g277741277750%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277741277750%_))))
               (_%$%g277739277795%_
                (lambda (_%$%g277741277758%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277741277758%_))
                      (let ((_%$%e277743277761%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277741277758%_))))
                        (let ((_%$%hd277744277765%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277743277761%_)))
                              (_%$%tl277745277768%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277743277761%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277745277768%_))
                              (let ((_%$%e277746277771%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277745277768%_))))
                                (let ((_%$%hd277747277775%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277746277771%_)))
                                      (_%$%tl277748277778%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277746277771%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl277748277778%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!primitive-predicate))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd277747277775%_
                                                              '()))
                                                  '()))
                                      (_%$%g277740277754%_
                                       _%$%g277741277758%_))))
                              (_%$%g277740277754%_ _%$%g277741277758%_))))
                      (_%$%g277740277754%_ _%$%g277741277758%_)))))
          (_%$%g277739277795%_ _%$stx277736%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx277799%_)
        (let* ((_%$%g277803277821%_
                (lambda (_%$%g277804277817%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277804277817%_))))
               (_%$%g277802277876%_
                (lambda (_%$%g277804277825%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277804277825%_))
                      (let ((_%$%e277807277828%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277804277825%_))))
                        (let ((_%$%hd277808277832%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277807277828%_)))
                              (_%$%tl277809277835%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277807277828%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277809277835%_))
                              (let ((_%$%e277810277838%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277809277835%_))))
                                (let ((_%$%hd277811277842%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277810277838%_)))
                                      (_%$%tl277812277845%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277810277838%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl277812277845%_))
                                      (let ((_%$%e277813277848%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl277812277845%_))))
                                        (let ((_%$%hd277814277852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e277813277848%_)))
                                              (_%$%tl277815277855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e277813277848%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl277815277855%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!interface))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd277811277842%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd277814277852%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g277803277821%_
                                               _%$%g277804277825%_))))
                                      (_%$%g277803277821%_
                                       _%$%g277804277825%_))))
                              (_%$%g277803277821%_ _%$%g277804277825%_))))
                      (_%$%g277803277821%_ _%$%g277804277825%_)))))
          (_%$%g277802277876%_ _%$stx277799%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx277880%_)
        (let* ((_%__stx282196282197%_ _%$stx277880%_)
               (_%$%g277887277948%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx282196282197%_)))))
          (let ((_%__kont282199282200%_
                 (lambda (_%$%g277889278186%_ _%$%g277890278188%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g277890278188%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g277889278186%_ '()))
                                     '())))))
                (_%__kont282201282202%_
                 (lambda (_%$%g277900278125%_
                          _%$%g277901278127%_
                          _%$%g277902278128%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g277902278128%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g277901278127%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%$%g277900278125%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont282203282204%_
                 (lambda (_%$%g277919278049%_ _%$%g277920278051%_)
                   (cons _%$%g277920278051%_
                         (cons _%$%g277919278049%_ (cons '#f '())))))
                (_%__kont282205282206%_
                 (lambda (_%$%g277927277999%_
                          _%$%g277928278001%_
                          _%$%g277929278002%_)
                   (cons _%$%g277929278002%_
                         (cons _%$%g277928278001%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%$%g277927277999%_
                                                 '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx282196282197%_))
                (let ((_%$%e277891278156%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx282196282197%_))))
                  (let ((_%$%tl277893278163%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e277891278156%_)))
                        (_%$%hd277892278160%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e277891278156%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl277893278163%_))
                        (let ((_%$%e277894278166%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl277893278163%_))))
                          (let ((_%$%tl277896278173%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e277894278166%_)))
                                (_%$%hd277895278170%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e277894278166%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl277896278173%_))
                                (let ((_%$%e277897278176%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl277896278173%_))))
                                  (let ((_%$%tl277899278183%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e277897278176%_)))
                                        (_%$%hd277898278180%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e277897278176%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl277899278183%_))
                                        (_%__kont282199282200%_
                                         _%$%hd277898278180%_
                                         _%$%hd277895278170%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl277899278183%_))
                                            (let ((_%$%e277912278101%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl277899278183%_))))
                                              (let ((_%$%tl277914278108%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e277912278101%_)))
                                                    (_%$%hd277913278105%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e277912278101%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd277913278105%_))
                                                    (let ((_%$%e277915278111%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd277913278105%_))))
                                                      (if (equal? _%$%e277915278111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl277914278108%_))
                      (let ((_%$%e277916278115%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl277914278108%_))))
                        (let ((_%$%tl277918278122%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277916278115%_)))
                              (_%$%hd277917278119%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277916278115%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl277918278122%_))
                              (_%__kont282201282202%_
                               _%$%hd277917278119%_
                               _%$%hd277898278180%_
                               _%$%hd277895278170%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%$%hd277898278180%_))
                                  (let ((_%$%e277939277985%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd277898278180%_))))
                                    (declare (not safe))
                                    (_%$%g277887277948%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g277887277948%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd277898278180%_))
                          (let ((_%$%e277939277985%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd277898278180%_))))
                            (if (equal? _%$%e277939277985%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl277914278108%_))
                                    (_%__kont282205282206%_
                                     _%$%hd277913278105%_
                                     _%$%hd277895278170%_
                                     _%$%hd277892278160%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g277887277948%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g277887277948%_))))
                          (let () (declare (not safe)) (_%$%g277887277948%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd277898278180%_))
                      (let ((_%$%e277939277985%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd277898278180%_))))
                        (if (equal? _%$%e277939277985%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl277914278108%_))
                                (_%__kont282205282206%_
                                 _%$%hd277913278105%_
                                 _%$%hd277895278170%_
                                 _%$%hd277892278160%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g277887277948%_)))
                            (let ()
                              (declare (not safe))
                              (_%$%g277887277948%_))))
                      (let () (declare (not safe)) (_%$%g277887277948%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%$%hd277898278180%_))
                                                        (let ((_%$%e277939277985%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd277898278180%_))))
                  (if (equal? _%$%e277939277985%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl277914278108%_))
                          (_%__kont282205282206%_
                           _%$%hd277913278105%_
                           _%$%hd277895278170%_
                           _%$%hd277892278160%_)
                          (let () (declare (not safe)) (_%$%g277887277948%_)))
                      (let () (declare (not safe)) (_%$%g277887277948%_))))
                (let () (declare (not safe)) (_%$%g277887277948%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%$%hd277898278180%_))
                                                (let ((_%$%e277939277985%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd277898278180%_))))
                                                  (declare (not safe))
                                                  (_%$%g277887277948%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g277887277948%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl277896278173%_))
                                    (_%__kont282203282204%_
                                     _%$%hd277895278170%_
                                     _%$%hd277892278160%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g277887277948%_))))))
                        (let () (declare (not safe)) (_%$%g277887277948%_)))))
                (let () (declare (not safe)) (_%$%g277887277948%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx278207%_)
        (let* ((_%$%g278211278240%_
                (lambda (_%$%g278212278236%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278212278236%_))))
               (_%$%g278210278345%_
                (lambda (_%$%g278212278244%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278212278244%_))
                      (let ((_%$%e278214278247%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278212278244%_))))
                        (let ((_%$%hd278215278251%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278214278247%_)))
                              (_%$%tl278216278254%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278214278247%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl278216278254%_))
                              (let ((_g282826_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl278216278254%_
                                        '0))))
                                (begin
                                  (let ((_g282827_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g282826_)
                                               (##values-length _g282826_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g282827_ 2)))
                                        (error "Context expects 2 values"
                                               _g282827_)))
                                  (let ((_%$%target278217278257%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282826_ 0)))
                                        (_%$%tl278219278260%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282826_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl278219278260%_))
                                        (letrec ((_%$%loop278220278263%_
                                                  (lambda (_%$%hd278218278267%_
                                                           _%$%clause278224278270%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd278218278267%_))
                                                        (let ((_%$%e278221278272%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd278218278267%_))))
                  (let ((_%$%lp-hd278222278276%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e278221278272%_)))
                        (_%$%lp-tl278223278279%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e278221278272%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%lp-hd278222278276%_))
                        (let ((_g282828_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%$%lp-hd278222278276%_
                                  '0))))
                          (begin
                            (let ((_g282829_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g282828_)
                                         (##values-length _g282828_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g282829_ 2)))
                                  (error "Context expects 2 values"
                                         _g282829_)))
                            (let ((_%$%target278226278282%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g282828_ 0)))
                                  (_%$%tl278228278285%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g282828_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl278228278285%_))
                                  (letrec ((_%$%loop278229278288%_
                                            (lambda (_%$%hd278227278292%_
                                                     _%$%clause278233278295%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd278227278292%_))
                                                  (let ((_%$%e278230278297%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd278227278292%_))))
                                                    (let ((_%$%lp-hd278231278301%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e278230278297%_)))
                                                          (_%$%lp-tl278232278304%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e278230278297%_))))
                                                      (_%$%loop278229278288%_
                                                       _%$%lp-tl278232278304%_
                                                       (cons _%$%lp-hd278231278301%_
                                                             _%$%clause278233278295%_))))
                                                  (let ((_%$%clause278234278307%_
                                                         (reverse _%$%clause278233278295%_)))
                                                    (_%$%loop278220278263%_
                                                     _%$%lp-tl278223278279%_
                                                     (cons _%$%clause278234278307%_
                                                           _%$%clause278224278270%_)))))))
                                    (_%$%loop278229278288%_
                                     _%$%target278226278282%_
                                     '()))
                                  (_%$%g278211278240%_ _%$%g278212278244%_)))))
                        (_%$%g278211278240%_ _%$%g278212278244%_))))
                (let ((_%$%clause278225278310%_
                       (reverse _%$%clause278224278270%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f '@list))
                                    (let ((__tmp282830
                                           (lambda (_%$%g278328278333%_
                                                    _%$%g278329278336%_)
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '@lambda))
                                                         (let ((__tmp282831
                                                                (lambda (_%$%g278330278339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g278331278342%_)
                          (cons _%$%g278330278339%_ _%$%g278331278342%_))))
                   (declare (not safe))
                   (foldr__0 __tmp282831 '() _%$%g278328278333%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%g278329278336%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp282830
                                       '()
                                       _%$%clause278225278310%_)))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop278220278263%_
                                           _%$%target278217278257%_
                                           '()))
                                        (_%$%g278211278240%_
                                         _%$%g278212278244%_)))))
                              (_%$%g278211278240%_ _%$%g278212278244%_))))
                      (_%$%g278211278240%_ _%$%g278212278244%_)))))
          (_%$%g278210278345%_ _%$stx278207%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx278351%_)
        (let* ((_%$%g278355278373%_
                (lambda (_%$%g278356278369%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278356278369%_))))
               (_%$%g278354278428%_
                (lambda (_%$%g278356278377%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278356278377%_))
                      (let ((_%$%e278359278380%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278356278377%_))))
                        (let ((_%$%hd278360278384%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278359278380%_)))
                              (_%$%tl278361278387%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278359278380%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278361278387%_))
                              (let ((_%$%e278362278390%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278361278387%_))))
                                (let ((_%$%hd278363278394%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278362278390%_)))
                                      (_%$%tl278364278397%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278362278390%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl278364278397%_))
                                      (let ((_%$%e278365278400%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl278364278397%_))))
                                        (let ((_%$%hd278366278404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278365278400%_)))
                                              (_%$%tl278367278407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278365278400%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl278367278407%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd278363278394%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd278366278404%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g278355278373%_
                                               _%$%g278356278377%_))))
                                      (_%$%g278355278373%_
                                       _%$%g278356278377%_))))
                              (_%$%g278355278373%_ _%$%g278356278377%_))))
                      (_%$%g278355278373%_ _%$%g278356278377%_)))))
          (_%$%g278354278428%_ _%$stx278351%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx278432%_)
        (let* ((_%$%g278436278454%_
                (lambda (_%$%g278437278450%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278437278450%_))))
               (_%$%g278435278509%_
                (lambda (_%$%g278437278458%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278437278458%_))
                      (let ((_%$%e278440278461%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278437278458%_))))
                        (let ((_%$%hd278441278465%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278440278461%_)))
                              (_%$%tl278442278468%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278440278461%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278442278468%_))
                              (let ((_%$%e278443278471%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278442278468%_))))
                                (let ((_%$%hd278444278475%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278443278471%_)))
                                      (_%$%tl278445278478%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278443278471%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl278445278478%_))
                                      (let ((_%$%e278446278481%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl278445278478%_))))
                                        (let ((_%$%hd278447278485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278446278481%_)))
                                              (_%$%tl278448278488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278446278481%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl278448278488%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda-primary))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd278444278475%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd278447278485%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g278436278454%_
                                               _%$%g278437278458%_))))
                                      (_%$%g278436278454%_
                                       _%$%g278437278458%_))))
                              (_%$%g278436278454%_ _%$%g278437278458%_))))
                      (_%$%g278436278454%_ _%$%g278437278458%_)))))
          (_%$%g278435278509%_ _%$stx278432%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx278513%_)
        (let* ((_%$%g278517278546%_
                (lambda (_%$%g278518278542%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278518278542%_))))
               (_%$%g278516278642%_
                (lambda (_%$%g278518278550%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278518278550%_))
                      (let ((_%$%e278521278553%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278518278550%_))))
                        (let ((_%$%hd278522278557%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278521278553%_)))
                              (_%$%tl278523278560%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278521278553%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl278523278560%_))
                              (let ((_g282832_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl278523278560%_
                                        '0))))
                                (begin
                                  (let ((_g282833_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g282832_)
                                               (##values-length _g282832_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g282833_ 2)))
                                        (error "Context expects 2 values"
                                               _g282833_)))
                                  (let ((_%$%target278524278563%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282832_ 0)))
                                        (_%$%tl278526278566%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282832_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl278526278566%_))
                                        (letrec ((_%$%loop278527278569%_
                                                  (lambda (_%$%hd278525278573%_
                                                           _%$%rule278531278576%_
                                                           _%$%proc278532278577%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd278525278573%_))
                                                        (let ((_%$%e278528278579%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd278525278573%_))))
                  (let ((_%$%lp-hd278529278583%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e278528278579%_)))
                        (_%$%lp-tl278530278586%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e278528278579%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd278529278583%_))
                        (let ((_%$%e278535278589%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd278529278583%_))))
                          (let ((_%$%hd278536278593%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e278535278589%_)))
                                (_%$%tl278537278596%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e278535278589%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl278537278596%_))
                                (let ((_%$%e278538278599%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl278537278596%_))))
                                  (let ((_%$%hd278539278603%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e278538278599%_)))
                                        (_%$%tl278540278606%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e278538278599%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl278540278606%_))
                                        (_%$%loop278527278569%_
                                         _%$%lp-tl278530278586%_
                                         (cons _%$%hd278539278603%_
                                               _%$%rule278531278576%_)
                                         (cons _%$%hd278536278593%_
                                               _%$%proc278532278577%_))
                                        (_%$%g278517278546%_
                                         _%$%g278518278550%_))))
                                (_%$%g278517278546%_ _%$%g278518278550%_))))
                        (_%$%g278517278546%_ _%$%g278518278550%_))))
                (let ((_%$%rule278533278609%_ (reverse _%$%rule278531278576%_))
                      (_%$%proc278534278611%_
                       (reverse _%$%proc278532278577%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%rule278533278609%_
                             _%$%proc278534278611%_))
                          (let ((__tmp282834
                                 (lambda (_%$%g278630278634%_
                                          _%$%g278631278637%_
                                          _%$%g278632278639%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-inline-rule!))
                                               (cons _%$%g278631278637%_
                                                     (cons _%$%g278630278634%_
                                                           '())))
                                         _%$%g278632278639%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp282834
                             '()
                             _%$%rule278533278609%_
                             _%$%proc278534278611%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop278527278569%_
                                           _%$%target278524278563%_
                                           '()
                                           '()))
                                        (_%$%g278517278546%_
                                         _%$%g278518278550%_)))))
                              (_%$%g278517278546%_ _%$%g278518278550%_))))
                      (_%$%g278517278546%_ _%$%g278518278550%_)))))
          (_%$%g278516278642%_ _%$stx278513%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx278647%_)
        (let* ((_%$%g278651278669%_
                (lambda (_%$%g278652278665%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278652278665%_))))
               (_%$%g278650278724%_
                (lambda (_%$%g278652278673%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278652278673%_))
                      (let ((_%$%e278655278676%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278652278673%_))))
                        (let ((_%$%hd278656278680%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278655278676%_)))
                              (_%$%tl278657278683%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278655278676%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278657278683%_))
                              (let ((_%$%e278658278686%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278657278683%_))))
                                (let ((_%$%hd278659278690%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278658278686%_)))
                                      (_%$%tl278660278693%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278658278686%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl278660278693%_))
                                      (let ((_%$%e278661278696%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl278660278693%_))))
                                        (let ((_%$%hd278662278700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278661278696%_)))
                                              (_%$%tl278663278703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278661278696%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl278663278703%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'let))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'type))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'optimizer-lookup-type))
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd278659278690%_
                                                      '()))
                                          '()))
                              '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'if))
                              (cons (cons (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             '!lambda?))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'type))
                                                '()))
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'set!))
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '!lambda-inline))
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'type))
                          '()))
              (cons _%$%hd278662278700%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'displayln))
                                                      (cons '"*** WARNING unknown procedure "
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd278659278690%_ '()))
                          (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g278651278669%_
                                               _%$%g278652278673%_))))
                                      (_%$%g278651278669%_
                                       _%$%g278652278673%_))))
                              (_%$%g278651278669%_ _%$%g278652278673%_))))
                      (_%$%g278651278669%_ _%$%g278652278673%_)))))
          (_%$%g278650278724%_ _%$stx278647%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx278728%_)
        (let* ((_%__stx282314282315%_ _%$stx278728%_)
               (_%$%g278733278758%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx282314282315%_)))))
          (let ((_%__kont282317282318%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont282319282320%_
                 (lambda (_%$%g278738278805%_
                          _%$%g278739278807%_
                          _%$%g278740278808%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%$%g278740278808%_
                                           (cons _%$%g278739278807%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%$%g278738278805%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx282314282315%_))
                (let ((_%$%e278735278834%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx282314282315%_))))
                  (let ((_%$%tl278737278841%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e278735278834%_)))
                        (_%$%hd278736278838%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e278735278834%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl278737278841%_))
                        (_%__kont282317282318%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl278737278841%_))
                            (let ((_%$%e278744278775%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl278737278841%_))))
                              (let ((_%$%tl278746278782%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e278744278775%_)))
                                    (_%$%hd278745278779%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e278744278775%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd278745278779%_))
                                    (let ((_%$%e278747278785%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd278745278779%_))))
                                      (let ((_%$%tl278749278792%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e278747278785%_)))
                                            (_%$%hd278748278789%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e278747278785%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl278749278792%_))
                                            (let ((_%$%e278750278795%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl278749278792%_))))
                                              (let ((_%$%tl278752278802%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e278750278795%_)))
                                                    (_%$%hd278751278799%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e278750278795%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl278752278802%_))
                                                    (_%__kont282319282320%_
                                                     _%$%tl278746278782%_
                                                     _%$%hd278751278799%_
                                                     _%$%hd278748278789%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g278733278758%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g278733278758%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g278733278758%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g278733278758%_))))))
                (let () (declare (not safe)) (_%$%g278733278758%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx278852%_)
        (let* ((_%__stx282358282359%_ _%$stx278852%_)
               (_%$%g278857278888%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx282358282359%_)))))
          (let ((_%__kont282361282362%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont282363282364%_
                 (lambda (_%$%g278862278953%_
                          _%$%g278863278955%_
                          _%$%g278864278956%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%$%g278864278956%_
                                           (let ((__tmp282835
                                                  (lambda (_%$%g278976278979%_
                                                           _%$%g278977278982%_)
                                                    (cons _%$%g278976278979%_
                                                          _%$%g278977278982%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp282835
                                              '()
                                              _%$%g278863278955%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%$%g278862278953%_)
                                     '()))))))
            (let ((_%__match282401282402%_
                   (lambda (_%$%e278865278895%_
                            _%$%hd278866278899%_
                            _%$%tl278867278902%_
                            _%$%e278868278905%_
                            _%$%hd278869278909%_
                            _%$%tl278870278912%_
                            _%$%e278871278915%_
                            _%$%hd278872278919%_
                            _%$%tl278873278922%_
                            _%__splice282365282366%_
                            _%$%target278874278925%_
                            _%$%tl278876278928%_)
                     (letrec ((_%$%loop278877278931%_
                               (lambda (_%$%hd278875278935%_
                                        _%$%sig278881278938%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd278875278935%_))
                                     (let ((_%$%e278878278940%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%hd278875278935%_))))
                                       (let ((_%$%lp-tl278880278947%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e278878278940%_)))
                                             (_%$%lp-hd278879278944%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e278878278940%_))))
                                         (_%$%loop278877278931%_
                                          _%$%lp-tl278880278947%_
                                          (cons _%$%lp-hd278879278944%_
                                                _%$%sig278881278938%_))))
                                     (let ((_%$%sig278882278950%_
                                            (reverse _%$%sig278881278938%_)))
                                       (_%__kont282363282364%_
                                        _%$%tl278870278912%_
                                        _%$%sig278882278950%_
                                        _%$%hd278872278919%_))))))
                       (_%$%loop278877278931%_
                        _%$%target278874278925%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx282358282359%_))
                  (let ((_%$%e278859278992%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx282358282359%_))))
                    (let ((_%$%tl278861278999%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e278859278992%_)))
                          (_%$%hd278860278996%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e278859278992%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl278861278999%_))
                          (_%__kont282361282362%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278861278999%_))
                              (let ((_%$%e278868278905%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278861278999%_))))
                                (let ((_%$%tl278870278912%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278868278905%_)))
                                      (_%$%hd278869278909%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278868278905%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd278869278909%_))
                                      (let ((_%$%e278871278915%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd278869278909%_))))
                                        (let ((_%$%tl278873278922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278871278915%_)))
                                              (_%$%hd278872278919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278871278915%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl278873278922%_))
                                              (let ((_%__splice282365282366%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl278873278922%_
                                                        '0))))
                                                (let ((_%$%tl278876278928%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice282365282366%_
                                                          '1)))
                                                      (_%$%target278874278925%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice282365282366%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl278876278928%_))
                                                      (_%__match282401282402%_
                                                       _%$%e278859278992%_
                                                       _%$%hd278860278996%_
                                                       _%$%tl278861278999%_
                                                       _%$%e278868278905%_
                                                       _%$%hd278869278909%_
                                                       _%$%tl278870278912%_
                                                       _%$%e278871278915%_
                                                       _%$%hd278872278919%_
                                                       _%$%tl278873278922%_
                                                       _%__splice282365282366%_
                                                       _%$%target278874278925%_
                                                       _%$%tl278876278928%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g278857278888%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g278857278888%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g278857278888%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g278857278888%_))))))
                  (let () (declare (not safe)) (_%$%g278857278888%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx279011%_)
        (let* ((_%__stx282404282405%_ _%$stx279011%_)
               (_%$%g279016279063%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx282404282405%_)))))
          (let ((_%__kont282407282408%_
                 (lambda (_%$%g279018279221%_ _%$%g279019279223%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%$%g279019279223%_
                               (let ((__tmp282836
                                      (lambda (_%$%g279243279246%_
                                               _%$%g279244279249%_)
                                        (cons _%$%g279243279246%_
                                              _%$%g279244279249%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp282836
                                  '()
                                  _%$%g279018279221%_))))))
                (_%__kont282411282412%_
                 (lambda (_%$%g279041279118%_ _%$%g279042279120%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%$%g279042279120%_
                               (let ((__tmp282837
                                      (lambda (_%$%g279137279140%_
                                               _%$%g279138279143%_)
                                        (cons _%$%g279137279140%_
                                              _%$%g279138279143%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp282837
                                  '()
                                  _%$%g279041279118%_)))))))
            (let* ((_%__match282471282472%_
                    (lambda (_%$%e279043279070%_
                             _%$%hd279044279074%_
                             _%$%tl279045279077%_
                             _%$%e279046279080%_
                             _%$%hd279047279084%_
                             _%$%tl279048279087%_
                             _%__splice282413282414%_
                             _%$%target279049279090%_
                             _%$%tl279051279093%_)
                      (letrec ((_%$%loop279052279096%_
                                (lambda (_%$%hd279050279100%_
                                         _%$%sig279056279103%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd279050279100%_))
                                      (let ((_%$%e279053279105%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd279050279100%_))))
                                        (let ((_%$%lp-tl279055279112%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e279053279105%_)))
                                              (_%$%lp-hd279054279109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e279053279105%_))))
                                          (_%$%loop279052279096%_
                                           _%$%lp-tl279055279112%_
                                           (cons _%$%lp-hd279054279109%_
                                                 _%$%sig279056279103%_))))
                                      (let ((_%$%sig279057279115%_
                                             (reverse _%$%sig279056279103%_)))
                                        (_%__kont282411282412%_
                                         _%$%sig279057279115%_
                                         _%$%hd279047279084%_))))))
                        (_%$%loop279052279096%_
                         _%$%target279049279090%_
                         '()))))
                   (_%__match282463282464%_
                    (lambda (_%$%e279043279070%_
                             _%$%hd279044279074%_
                             _%$%tl279045279077%_
                             _%$%e279046279080%_
                             _%$%hd279047279084%_
                             _%$%tl279048279087%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl279048279087%_))
                          (let ((_%__splice282413282414%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl279048279087%_
                                    '0))))
                            (let ((_%$%tl279051279093%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice282413282414%_
                                      '1)))
                                  (_%$%target279049279090%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice282413282414%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl279051279093%_))
                                  (_%__match282471282472%_
                                   _%$%e279043279070%_
                                   _%$%hd279044279074%_
                                   _%$%tl279045279077%_
                                   _%$%e279046279080%_
                                   _%$%hd279047279084%_
                                   _%$%tl279048279087%_
                                   _%__splice282413282414%_
                                   _%$%target279049279090%_
                                   _%$%tl279051279093%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g279016279063%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g279016279063%_)))))
                   (_%__match282451282452%_
                    (lambda (_%$%e279020279153%_
                             _%$%hd279021279157%_
                             _%$%tl279022279160%_
                             _%$%e279023279163%_
                             _%$%hd279024279167%_
                             _%$%tl279025279170%_
                             _%$%e279026279173%_
                             _%$%hd279027279177%_
                             _%$%tl279028279180%_
                             _%$%e279029279183%_
                             _%$%hd279030279187%_
                             _%$%tl279031279190%_
                             _%__splice282409282410%_
                             _%$%target279032279193%_
                             _%$%tl279034279196%_)
                      (letrec ((_%$%loop279035279199%_
                                (lambda (_%$%hd279033279203%_
                                         _%$%sig279039279206%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd279033279203%_))
                                      (let ((_%$%e279036279208%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd279033279203%_))))
                                        (let ((_%$%lp-tl279038279215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e279036279208%_)))
                                              (_%$%lp-hd279037279212%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e279036279208%_))))
                                          (_%$%loop279035279199%_
                                           _%$%lp-tl279038279215%_
                                           (cons _%$%lp-hd279037279212%_
                                                 _%$%sig279039279206%_))))
                                      (let ((_%$%sig279040279218%_
                                             (reverse _%$%sig279039279206%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl279028279180%_))
                                            (_%__kont282407282408%_
                                             _%$%sig279040279218%_
                                             _%$%hd279024279167%_)
                                            (_%__match282463282464%_
                                             _%$%e279020279153%_
                                             _%$%hd279021279157%_
                                             _%$%tl279022279160%_
                                             _%$%e279023279163%_
                                             _%$%hd279024279167%_
                                             _%$%tl279025279170%_)))))))
                        (_%$%loop279035279199%_
                         _%$%target279032279193%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx282404282405%_))
                  (let ((_%$%e279020279153%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx282404282405%_))))
                    (let ((_%$%tl279022279160%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e279020279153%_)))
                          (_%$%hd279021279157%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e279020279153%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl279022279160%_))
                          (let ((_%$%e279023279163%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl279022279160%_))))
                            (let ((_%$%tl279025279170%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e279023279163%_)))
                                  (_%$%hd279024279167%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e279023279163%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl279025279170%_))
                                  (let ((_%$%e279026279173%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl279025279170%_))))
                                    (let ((_%$%tl279028279180%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e279026279173%_)))
                                          (_%$%hd279027279177%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e279026279173%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%hd279027279177%_))
                                          (let ((_%$%e279029279183%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%hd279027279177%_))))
                                            (let ((_%$%tl279031279190%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e279029279183%_)))
                                                  (_%$%hd279030279187%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e279029279183%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd279030279187%_))
                                                  (if (let ((__tmp282838
                                                             |gxc[1]#_g282839_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp282838
                                                         _%$%hd279030279187%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%$%tl279031279190%_))
                                                          (let ((_%__splice282409282410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl279031279190%_
                            '0))))
                    (let ((_%$%tl279034279196%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice282409282410%_ '1)))
                          (_%$%target279032279193%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice282409282410%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl279034279196%_))
                          (_%__match282451282452%_
                           _%$%e279020279153%_
                           _%$%hd279021279157%_
                           _%$%tl279022279160%_
                           _%$%e279023279163%_
                           _%$%hd279024279167%_
                           _%$%tl279025279170%_
                           _%$%e279026279173%_
                           _%$%hd279027279177%_
                           _%$%tl279028279180%_
                           _%$%e279029279183%_
                           _%$%hd279030279187%_
                           _%$%tl279031279190%_
                           _%__splice282409282410%_
                           _%$%target279032279193%_
                           _%$%tl279034279196%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl279025279170%_))
                              (let ((_%__splice282413282414%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%$%tl279025279170%_
                                        '0))))
                                (let ((_%$%tl279051279093%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice282413282414%_
                                          '1)))
                                      (_%$%target279049279090%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice282413282414%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl279051279093%_))
                                      (_%__match282471282472%_
                                       _%$%e279020279153%_
                                       _%$%hd279021279157%_
                                       _%$%tl279022279160%_
                                       _%$%e279023279163%_
                                       _%$%hd279024279167%_
                                       _%$%tl279025279170%_
                                       _%__splice282413282414%_
                                       _%$%target279049279090%_
                                       _%$%tl279051279093%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g279016279063%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g279016279063%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl279025279170%_))
                      (let ((_%__splice282413282414%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl279025279170%_
                                '0))))
                        (let ((_%$%tl279051279093%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice282413282414%_ '1)))
                              (_%$%target279049279090%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice282413282414%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl279051279093%_))
                              (_%__match282471282472%_
                               _%$%e279020279153%_
                               _%$%hd279021279157%_
                               _%$%tl279022279160%_
                               _%$%e279023279163%_
                               _%$%hd279024279167%_
                               _%$%tl279025279170%_
                               _%__splice282413282414%_
                               _%$%target279049279090%_
                               _%$%tl279051279093%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g279016279063%_)))))
                      (let () (declare (not safe)) (_%$%g279016279063%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl279025279170%_))
                  (let ((_%__splice282413282414%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl279025279170%_
                            '0))))
                    (let ((_%$%tl279051279093%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice282413282414%_ '1)))
                          (_%$%target279049279090%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice282413282414%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl279051279093%_))
                          (_%__match282471282472%_
                           _%$%e279020279153%_
                           _%$%hd279021279157%_
                           _%$%tl279022279160%_
                           _%$%e279023279163%_
                           _%$%hd279024279167%_
                           _%$%tl279025279170%_
                           _%__splice282413282414%_
                           _%$%target279049279090%_
                           _%$%tl279051279093%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g279016279063%_)))))
                  (let () (declare (not safe)) (_%$%g279016279063%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl279025279170%_))
                                                      (let ((_%__splice282413282414%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl279025279170%_
                        '0))))
                (let ((_%$%tl279051279093%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice282413282414%_ '1)))
                      (_%$%target279049279090%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice282413282414%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl279051279093%_))
                      (_%__match282471282472%_
                       _%$%e279020279153%_
                       _%$%hd279021279157%_
                       _%$%tl279022279160%_
                       _%$%e279023279163%_
                       _%$%hd279024279167%_
                       _%$%tl279025279170%_
                       _%__splice282413282414%_
                       _%$%target279049279090%_
                       _%$%tl279051279093%_)
                      (let () (declare (not safe)) (_%$%g279016279063%_)))))
              (let () (declare (not safe)) (_%$%g279016279063%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl279025279170%_))
                                              (let ((_%__splice282413282414%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl279025279170%_
                                                        '0))))
                                                (let ((_%$%tl279051279093%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice282413282414%_
                                                          '1)))
                                                      (_%$%target279049279090%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice282413282414%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl279051279093%_))
                                                      (_%__match282471282472%_
                                                       _%$%e279020279153%_
                                                       _%$%hd279021279157%_
                                                       _%$%tl279022279160%_
                                                       _%$%e279023279163%_
                                                       _%$%hd279024279167%_
                                                       _%$%tl279025279170%_
                                                       _%__splice282413282414%_
                                                       _%$%target279049279090%_
                                                       _%$%tl279051279093%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g279016279063%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g279016279063%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl279025279170%_))
                                      (let ((_%__splice282413282414%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl279025279170%_
                                                '0))))
                                        (let ((_%$%tl279051279093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice282413282414%_
                                                  '1)))
                                              (_%$%target279049279090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice282413282414%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl279051279093%_))
                                              (_%__match282471282472%_
                                               _%$%e279020279153%_
                                               _%$%hd279021279157%_
                                               _%$%tl279022279160%_
                                               _%$%e279023279163%_
                                               _%$%hd279024279167%_
                                               _%$%tl279025279170%_
                                               _%__splice282413282414%_
                                               _%$%target279049279090%_
                                               _%$%tl279051279093%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g279016279063%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g279016279063%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g279016279063%_)))))
                  (let () (declare (not safe)) (_%$%g279016279063%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx280406%_ _%id280408%_)
        (let ((_%proc280412%_
               (let ((__tmp282840
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id280408%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp282840))))
          (if (procedure? _%proc280412%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx280406%_
                 _%id280408%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx280397%_ _%id280399%_)
        (let ((_%klass280403%_
               (let ((__tmp282841
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id280399%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp282841))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass280403%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx280397%_
                 _%id280399%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx279647%_ _%proc279649%_ _%sig279650%_)
        (letrec ((_%signature-arity279652%_
                  (lambda (_%args280329%_)
                    (let _%loop280332%_ ((_%rest280335%_ _%args280329%_)
                                         (_%count280337%_ '0))
                      (let* ((_%$%rest280338280349%_ _%rest280335%_)
                             (_%$%E280342280355%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%rest280338280349%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%$%K280345280386%_
                               (lambda (_%rest280383%_)
                                 (_%loop280332%_
                                  _%rest280383%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count280337%_ '1)))))
                              (_%$%K280344280375%_ (lambda () _%count280337%_))
                              (_%$%K280343280363%_
                               (lambda () (cons _%count280337%_ '()))))
                          (let ((_%$%try-match280340280379%_
                                 (lambda ()
                                   (if (null? _%$%rest280338280349%_)
                                       (_%$%K280344280375%_)
                                       (_%$%K280343280363%_)))))
                            (if (pair? _%$%rest280338280349%_)
                                (let* ((_%$%tl280347280390%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest280338280349%_)))
                                       (_%rest280394%_ _%$%tl280347280390%_))
                                  (_%$%K280345280386%_ _%rest280394%_))
                                (_%$%try-match280340280379%_))))))))
                 (_%make-signature279654%_
                  (lambda (_%args280211%_
                           _%return280213%_
                           _%effect280214%_
                           _%unchecked280215%_)
                    (let ((__tmp282842
                           (lambda (_%$%g280216280218%_)
                             (|gxc[1]#verify-class!|
                              _%ctx279647%_
                              _%$%g280216280218%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp282842 _%args280211%_))
                    (|gxc[1]#verify-class!| _%ctx279647%_ _%return280213%_)
                    (if _%unchecked280215%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx279647%_
                         _%unchecked280215%_)
                        '#!void)
                    (let ((_%arity280222%_
                           (_%signature-arity279652%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args280211%_)))))
                      (if _%effect280214%_
                          (let ((_%effect280225%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect280214%_))))
                            (if (and (list? _%effect280225%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect280225%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx279647%_
                                   _%proc279649%_
                                   _%effect280225%_))))
                          '#!void)
                      (cons _%arity280222%_
                            (cons (let* ((_%$%g280228280251%_
                                          (lambda (_%$%g280229280247%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g280229280247%_))))
                                         (_%$%g280227280325%_
                                          (lambda (_%$%g280229280255%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g280229280255%_))
                                                (let ((_%$%e280234280258%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%g280229280255%_))))
                                                  (let ((_%$%hd280235280262%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e280234280258%_)))
                                                        (_%$%tl280236280265%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e280234280258%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl280236280265%_))
                                                        (let ((_%$%e280237280268%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl280236280265%_))))
                  (let ((_%$%hd280238280272%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e280237280268%_)))
                        (_%$%tl280239280275%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e280237280268%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl280239280275%_))
                        (let ((_%$%e280240280278%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl280239280275%_))))
                          (let ((_%$%hd280241280282%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e280240280278%_)))
                                (_%$%tl280242280285%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e280240280278%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl280242280285%_))
                                (let ((_%$%e280243280288%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl280242280285%_))))
                                  (let ((_%$%hd280244280292%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e280243280288%_)))
                                        (_%$%tl280245280295%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e280243280288%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl280245280295%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!signature))
                                              (cons 'arguments:
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd280235280262%_ '()))
                  (cons 'return:
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd280238280272%_ '()))
                              (cons 'effect:
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd280241280282%_
                                                      '()))
                                          (cons 'unchecked:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%$%hd280244280292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'builtin))
                                      '()))
                          '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%g280228280251%_
                                         _%$%g280229280255%_))))
                                (_%$%g280228280251%_ _%$%g280229280255%_))))
                        (_%$%g280228280251%_ _%$%g280229280255%_))))
                (_%$%g280228280251%_ _%$%g280229280255%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g280228280251%_
                                                 _%$%g280229280255%_)))))
                                    (_%$%g280227280325%_
                                     (list _%args280211%_
                                           _%return280213%_
                                           _%effect280214%_
                                           _%unchecked280215%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx279647%_ _%proc279649%_)
          (let* ((_%__stx282482282483%_ _%sig279650%_)
                 (_%$%g279661279764%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx282482282483%_)))))
            (let ((_%__kont282485282486%_
                   (lambda (_%$%g279663280192%_ _%$%g279664280194%_)
                     (_%make-signature279654%_
                      _%$%g279664280194%_
                      _%$%g279663280192%_
                      '#f
                      '#f)))
                  (_%__kont282487282488%_
                   (lambda (_%$%g279671280143%_
                            _%$%g279672280145%_
                            _%$%g279673280146%_)
                     (_%make-signature279654%_
                      _%$%g279673280146%_
                      _%$%g279672280145%_
                      _%$%g279671280143%_
                      '#f)))
                  (_%__kont282489282490%_
                   (lambda (_%$%g279687280067%_
                            _%$%g279688280069%_
                            _%$%g279689280070%_)
                     (_%make-signature279654%_
                      _%$%g279689280070%_
                      _%$%g279688280069%_
                      _%$%g279687280067%_
                      (let ((__tmp282843
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc279649%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp282843)))))
                  (_%__kont282491282492%_
                   (lambda (_%$%g279707279973%_
                            _%$%g279708279975%_
                            _%$%g279709279976%_
                            _%$%g279710279977%_)
                     (_%make-signature279654%_
                      _%$%g279710279977%_
                      _%$%g279709279976%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g279707279973%_)))))
                  (_%__kont282493282494%_
                   (lambda (_%$%g279731279880%_ _%$%g279732279882%_)
                     (_%make-signature279654%_
                      _%$%g279732279882%_
                      _%$%g279731279880%_
                      '#f
                      (let ((__tmp282844
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc279649%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp282844)))))
                  (_%__kont282495282496%_
                   (lambda (_%$%g279743279815%_
                            _%$%g279744279817%_
                            _%$%g279745279818%_)
                     (_%make-signature279654%_
                      _%$%g279745279818%_
                      _%$%g279744279817%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g279743279815%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx282482282483%_))
                  (let ((_%$%e279665280172%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx282482282483%_))))
                    (let ((_%$%tl279667280179%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e279665280172%_)))
                          (_%$%hd279666280176%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e279665280172%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl279667280179%_))
                          (let ((_%$%e279668280182%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl279667280179%_))))
                            (let ((_%$%tl279670280189%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e279668280182%_)))
                                  (_%$%hd279669280186%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e279668280182%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl279670280189%_))
                                  (_%__kont282485282486%_
                                   _%$%hd279669280186%_
                                   _%$%hd279666280176%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl279670280189%_))
                                      (let ((_%$%e279680280119%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl279670280189%_))))
                                        (let ((_%$%tl279682280126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e279680280119%_)))
                                              (_%$%hd279681280123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e279680280119%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd279681280123%_))
                                              (let ((_%$%e279683280129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd279681280123%_))))
                                                (if (equal? _%$%e279683280129%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl279682280126%_))
                                                        (let ((_%$%e279684280133%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl279682280126%_))))
                  (let ((_%$%tl279686280140%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e279684280133%_)))
                        (_%$%hd279685280137%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e279684280133%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl279686280140%_))
                        (_%__kont282487282488%_
                         _%$%hd279685280137%_
                         _%$%hd279669280186%_
                         _%$%hd279666280176%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl279686280140%_))
                            (let ((_%$%e279703280053%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl279686280140%_))))
                              (let ((_%$%tl279705280060%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e279703280053%_)))
                                    (_%$%hd279704280057%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e279703280053%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%$%hd279704280057%_))
                                    (let ((_%$%e279706280063%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd279704280057%_))))
                                      (if (equal? _%$%e279706280063%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl279705280060%_))
                                              (_%__kont282489282490%_
                                               _%$%hd279685280137%_
                                               _%$%hd279669280186%_
                                               _%$%hd279666280176%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl279705280060%_))
                                                  (let ((_%$%e279728279963%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl279705280060%_))))
                                                    (let ((_%$%tl279730279970%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e279728279963%_)))
                                                          (_%$%hd279729279967%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e279728279963%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl279730279970%_))
                                                          (_%__kont282491282492%_
                                                           _%$%hd279729279967%_
                                                           _%$%hd279685280137%_
                                                           _%$%hd279669280186%_
                                                           _%$%hd279666280176%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g279661279764%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g279661279764%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g279661279764%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g279661279764%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g279661279764%_))))))
                (let () (declare (not safe)) (_%$%g279661279764%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%$%e279683280129%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl279682280126%_))
                                                            (_%__kont282493282494%_
                                                             _%$%hd279669280186%_
                                                             _%$%hd279666280176%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl279682280126%_))
                        (let ((_%$%e279756279805%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl279682280126%_))))
                          (let ((_%$%tl279758279812%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e279756279805%_)))
                                (_%$%hd279757279809%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e279756279805%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl279758279812%_))
                                (_%__kont282495282496%_
                                 _%$%hd279757279809%_
                                 _%$%hd279669280186%_
                                 _%$%hd279666280176%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g279661279764%_)))))
                        (let () (declare (not safe)) (_%$%g279661279764%_))))
                (let () (declare (not safe)) (_%$%g279661279764%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g279661279764%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g279661279764%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g279661279764%_)))))
                  (let () (declare (not safe)) (_%$%g279661279764%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig279258%_)
        (let* ((_%$%g279261279341%_
                (lambda (_%$%g279262279337%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g279262279337%_))))
               (_%$%g279260279643%_
                (lambda (_%$%g279262279345%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g279262279345%_))
                      (let ((_%$%e279268279348%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g279262279345%_))))
                        (let ((_%$%hd279269279352%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e279268279348%_)))
                              (_%$%tl279270279355%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e279268279348%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl279270279355%_))
                              (let ((_%$%e279271279358%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl279270279355%_))))
                                (let ((_%$%hd279272279362%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e279271279358%_)))
                                      (_%$%tl279273279365%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e279271279358%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%$%hd279272279362%_))
                                      (let ((_%$%e279274279368%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd279272279362%_))))
                                        (if (equal? _%$%e279274279368%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl279273279365%_))
                                                (let ((_%$%e279275279372%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl279273279365%_))))
                                                  (let ((_%$%hd279276279376%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e279275279372%_)))
                                                        (_%$%tl279277279379%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e279275279372%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd279276279376%_))
                                                        (let ((_%$%e279278279382%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd279276279376%_))))
                  (let ((_%$%hd279279279386%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e279278279382%_)))
                        (_%$%tl279280279389%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e279278279382%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd279279279386%_))
                        (if (let ((__tmp282845 |gxc[1]#_g282846_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp282845
                               _%$%hd279279279386%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl279280279389%_))
                                (let ((_%$%e279281279392%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl279280279389%_))))
                                  (let ((_%$%hd279282279396%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e279281279392%_)))
                                        (_%$%tl279283279399%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e279281279392%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl279283279399%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl279277279379%_))
                                            (let ((_%$%e279284279402%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl279277279379%_))))
                                              (let ((_%$%hd279285279406%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e279284279402%_)))
                                                    (_%$%tl279286279409%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e279284279402%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd279285279406%_))
                                                    (let ((_%$%e279287279412%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd279285279406%_))))
                                                      (if (equal? _%$%e279287279412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl279286279409%_))
                      (let ((_%$%e279288279416%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl279286279409%_))))
                        (let ((_%$%hd279289279420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e279288279416%_)))
                              (_%$%tl279290279423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e279288279416%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd279289279420%_))
                              (let ((_%$%e279291279426%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd279289279420%_))))
                                (let ((_%$%hd279292279430%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e279291279426%_)))
                                      (_%$%tl279293279433%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e279291279426%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd279292279430%_))
                                      (if (let ((__tmp282847
                                                 |gxc[1]#_g282848_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp282847
                                             _%$%hd279292279430%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl279293279433%_))
                                              (let ((_%$%e279294279436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl279293279433%_))))
                                                (let ((_%$%hd279295279440%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e279294279436%_)))
                                                      (_%$%tl279296279443%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e279294279436%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl279296279443%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl279290279423%_))
                                                          (let ((_%$%e279297279446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl279290279423%_))))
                    (let ((_%$%hd279298279450%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e279297279446%_)))
                          (_%$%tl279299279453%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e279297279446%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd279298279450%_))
                          (let ((_%$%e279300279456%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd279298279450%_))))
                            (if (equal? _%$%e279300279456%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl279299279453%_))
                                    (let ((_%$%e279301279460%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl279299279453%_))))
                                      (let ((_%$%hd279302279464%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e279301279460%_)))
                                            (_%$%tl279303279467%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e279301279460%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd279302279464%_))
                                            (let ((_%$%e279304279470%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%hd279302279464%_))))
                                              (let ((_%$%hd279305279474%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e279304279470%_)))
                                                    (_%$%tl279306279477%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e279304279470%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd279305279474%_))
                                                    (if (let ((__tmp282849
                                                               |gxc[1]#_g282850_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp282849
                                                           _%$%hd279305279474%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl279306279477%_))
                                                            (let ((_%$%e279307279480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%$%tl279306279477%_))))
                      (let ((_%$%hd279308279484%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e279307279480%_)))
                            (_%$%tl279309279487%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e279307279480%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl279309279487%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl279303279467%_))
                                (let ((_%$%e279310279490%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl279303279467%_))))
                                  (let ((_%$%hd279311279494%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e279310279490%_)))
                                        (_%$%tl279312279497%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e279310279490%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%$%hd279311279494%_))
                                        (let ((_%$%e279313279500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd279311279494%_))))
                                          (if (equal? _%$%e279313279500%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl279312279497%_))
                                                  (let ((_%$%e279314279504%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl279312279497%_))))
                                                    (let ((_%$%hd279315279508%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e279314279504%_)))
                                                          (_%$%tl279316279511%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e279314279504%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd279315279508%_))
                                                          (let ((_%$%e279317279514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%hd279315279508%_))))
                    (let ((_%$%hd279318279518%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e279317279514%_)))
                          (_%$%tl279319279521%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e279317279514%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd279318279518%_))
                          (if (let ((__tmp282851 |gxc[1]#_g282852_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp282851
                                 _%$%hd279318279518%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl279319279521%_))
                                  (let ((_%$%e279320279524%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl279319279521%_))))
                                    (let ((_%$%hd279321279528%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e279320279524%_)))
                                          (_%$%tl279322279531%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e279320279524%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl279322279531%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl279316279511%_))
                                              (let ((_%$%e279323279534%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl279316279511%_))))
                                                (let ((_%$%hd279324279538%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e279323279534%_)))
                                                      (_%$%tl279325279541%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e279323279534%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%$%hd279324279538%_))
                                                      (let ((_%$%e279326279544%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd279324279538%_))))
                (if (equal? _%$%e279326279544%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl279325279541%_))
                        (let ((_%$%e279327279548%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl279325279541%_))))
                          (let ((_%$%hd279328279552%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e279327279548%_)))
                                (_%$%tl279329279555%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e279327279548%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd279328279552%_))
                                (let ((_%$%e279330279558%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%hd279328279552%_))))
                                  (let ((_%$%hd279331279562%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e279330279558%_)))
                                        (_%$%tl279332279565%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e279330279558%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd279331279562%_))
                                        (if (let ((__tmp282853
                                                   |gxc[1]#_g282854_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp282853
                                               _%$%hd279331279562%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl279332279565%_))
                                                (let ((_%$%e279333279568%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl279332279565%_))))
                                                  (let ((_%$%hd279334279572%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e279333279568%_)))
                                                        (_%$%tl279335279575%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e279333279568%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl279335279575%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl279329279555%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd279321279528%_))
                        (cons _%$%hd279321279528%_
                              (cons (cons (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'make-!signature))
                                          (cons 'return:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%$%hd279295279440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd279334279572%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '#f)
                    (_%$%g279261279341%_ _%$%g279262279345%_))
                (_%$%g279261279341%_ _%$%g279262279345%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g279261279341%_
                                                 _%$%g279262279345%_))
                                            (_%$%g279261279341%_
                                             _%$%g279262279345%_))
                                        (_%$%g279261279341%_
                                         _%$%g279262279345%_))))
                                (_%$%g279261279341%_ _%$%g279262279345%_))))
                        (_%$%g279261279341%_ _%$%g279262279345%_))
                    (_%$%g279261279341%_ _%$%g279262279345%_)))
              (_%$%g279261279341%_ _%$%g279262279345%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g279261279341%_
                                               _%$%g279262279345%_))
                                          (_%$%g279261279341%_
                                           _%$%g279262279345%_))))
                                  (_%$%g279261279341%_ _%$%g279262279345%_))
                              (_%$%g279261279341%_ _%$%g279262279345%_))
                          (_%$%g279261279341%_ _%$%g279262279345%_))))
                  (_%$%g279261279341%_ _%$%g279262279345%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g279261279341%_
                                                   _%$%g279262279345%_))
                                              (_%$%g279261279341%_
                                               _%$%g279262279345%_)))
                                        (_%$%g279261279341%_
                                         _%$%g279262279345%_))))
                                (_%$%g279261279341%_ _%$%g279262279345%_))
                            (_%$%g279261279341%_ _%$%g279262279345%_))))
                    (_%$%g279261279341%_ _%$%g279262279345%_))
                (_%$%g279261279341%_ _%$%g279262279345%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g279261279341%_
                                                     _%$%g279262279345%_))))
                                            (_%$%g279261279341%_
                                             _%$%g279262279345%_))))
                                    (_%$%g279261279341%_ _%$%g279262279345%_))
                                (_%$%g279261279341%_ _%$%g279262279345%_)))
                          (_%$%g279261279341%_ _%$%g279262279345%_))))
                  (_%$%g279261279341%_ _%$%g279262279345%_))
              (_%$%g279261279341%_ _%$%g279262279345%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g279261279341%_
                                               _%$%g279262279345%_))
                                          (_%$%g279261279341%_
                                           _%$%g279262279345%_))
                                      (_%$%g279261279341%_
                                       _%$%g279262279345%_))))
                              (_%$%g279261279341%_ _%$%g279262279345%_))))
                      (_%$%g279261279341%_ _%$%g279262279345%_))
                  (_%$%g279261279341%_ _%$%g279262279345%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g279261279341%_
                                                     _%$%g279262279345%_))))
                                            (_%$%g279261279341%_
                                             _%$%g279262279345%_))
                                        (_%$%g279261279341%_
                                         _%$%g279262279345%_))))
                                (_%$%g279261279341%_ _%$%g279262279345%_))
                            (_%$%g279261279341%_ _%$%g279262279345%_))
                        (_%$%g279261279341%_ _%$%g279262279345%_))))
                (_%$%g279261279341%_ _%$%g279262279345%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g279261279341%_
                                                 _%$%g279262279345%_))
                                            (_%$%g279261279341%_
                                             _%$%g279262279345%_)))
                                      (_%$%g279261279341%_
                                       _%$%g279262279345%_))))
                              (_%$%g279261279341%_ _%$%g279262279345%_))))
                      (_%$%g279261279341%_ _%$%g279262279345%_)))))
          (_%$%g279260279643%_ _%sig279258%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx280415%_)
        (let* ((_%$%g280418280436%_
                (lambda (_%$%g280419280432%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g280419280432%_))))
               (_%$%g280417280491%_
                (lambda (_%$%g280419280440%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g280419280440%_))
                      (let ((_%$%e280422280443%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g280419280440%_))))
                        (let ((_%$%hd280423280447%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e280422280443%_)))
                              (_%$%tl280424280450%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e280422280443%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl280424280450%_))
                              (let ((_%$%e280425280453%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl280424280450%_))))
                                (let ((_%$%hd280426280457%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e280425280453%_)))
                                      (_%$%tl280427280460%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e280425280453%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl280427280460%_))
                                      (let ((_%$%e280428280463%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl280427280460%_))))
                                        (let ((_%$%hd280429280467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e280428280463%_)))
                                              (_%$%tl280430280470%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e280428280463%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl280430280470%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd280426280457%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd280429280467%_)))
                                                  (begin
                                                    (|gxc[1]#verify-procedure!|
                                                     _%stx280415%_
                                                     _%$%hd280426280457%_)
                                                    (|gxc[1]#verify-class!|
                                                     _%stx280415%_
                                                     _%$%hd280429280467%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-type))
                                                          (cons _%$%hd280426280457%_
                                                                (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'make-!primitive-predicate))
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd280429280467%_
                                                      '()))
                                          '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g280418280436%_
                                                   _%$%g280419280440%_))
                                              (_%$%g280418280436%_
                                               _%$%g280419280440%_))))
                                      (_%$%g280418280436%_
                                       _%$%g280419280440%_))))
                              (_%$%g280418280436%_ _%$%g280419280440%_))))
                      (_%$%g280418280436%_ _%$%g280419280440%_)))))
          (_%$%g280417280491%_ _%stx280415%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx280495%_)
        (let* ((_%$%g280498280522%_
                (lambda (_%$%g280499280518%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g280499280518%_))))
               (_%$%g280497280803%_
                (lambda (_%$%g280499280526%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g280499280526%_))
                      (let ((_%$%e280502280529%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g280499280526%_))))
                        (let ((_%$%hd280503280533%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e280502280529%_)))
                              (_%$%tl280504280536%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e280502280529%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl280504280536%_))
                              (let ((_%$%e280505280539%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl280504280536%_))))
                                (let ((_%$%hd280506280543%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e280505280539%_)))
                                      (_%$%tl280507280546%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e280505280539%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl280507280546%_))
                                      (let ((_g282855_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl280507280546%_
                                                '0))))
                                        (begin
                                          (let ((_g282856_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g282855_)
                                                       (##values-length
                                                        _g282855_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g282856_ 2)))
                                                (error "Context expects 2 values"
                                                       _g282856_)))
                                          (let ((_%$%target280508280549%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g282855_ 0)))
                                                (_%$%tl280510280552%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g282855_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl280510280552%_))
                                                (letrec ((_%$%loop280511280555%_
                                                          (lambda (_%$%hd280509280559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%signature280515280562%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd280509280559%_))
                        (let ((_%$%e280512280564%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd280509280559%_))))
                          (let ((_%$%lp-hd280513280568%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e280512280564%_)))
                                (_%$%lp-tl280514280571%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e280512280564%_))))
                            (_%$%loop280511280555%_
                             _%$%lp-tl280514280571%_
                             (cons _%$%lp-hd280513280568%_
                                   _%$%signature280515280562%_))))
                        (let ((_%$%signature280516280574%_
                               (reverse _%$%signature280515280562%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd280506280543%_))
                              (let* ((_%$%g280597280612%_
                                      (lambda (_%$%g280598280608%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g280598280608%_))))
                                     (_%$%g280596280791%_
                                      (lambda (_%$%g280598280616%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%g280598280616%_))
                                            (let ((_%$%e280601280619%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%g280598280616%_))))
                                              (let ((_%$%hd280602280623%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e280601280619%_)))
                                                    (_%$%tl280603280626%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e280601280619%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl280603280626%_))
                                                    (let ((_%$%e280604280629%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl280603280626%_))))
                                                      (let ((_%$%hd280605280633%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e280604280629%_)))
                    (_%$%tl280606280636%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e280604280629%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl280606280636%_))
                    (let* ((_%$%g280657280665%_
                            (lambda (_%$%g280658280661%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g280658280661%_))))
                           (_%$%g280656280787%_
                            (lambda (_%$%g280658280669%_)
                              (let* ((_%unchecked280685%_
                                      (|gxc[1]#signature->unchecked-signature|
                                       _%$%hd280605280633%_))
                                     (_%$%g280688280696%_
                                      (lambda (_%$%g280689280692%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g280689280692%_))))
                                     (_%$%g280687280719%_
                                      (lambda (_%$%g280689280700%_)
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'begin))
                                              (cons _%$%g280658280669%_
                                                    (cons _%$%g280689280700%_
                                                          '()))))))
                                (_%$%g280687280719%_
                                 (if _%unchecked280685%_
                                     (let* ((_%$%g280723280738%_
                                             (lambda (_%$%g280724280734%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g280724280734%_))))
                                            (_%$%g280722280783%_
                                             (lambda (_%$%g280724280742%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g280724280742%_))
                                                   (let ((_%$%e280727280745%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%$%g280724280742%_))))
                                                     (let ((_%$%hd280728280749%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e280727280745%_)))
                                                           (_%$%tl280729280752%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e280727280745%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl280729280752%_))
                                                           (let ((_%$%e280730280755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%$%tl280729280752%_))))
                     (let ((_%$%hd280731280759%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e280730280755%_)))
                           (_%$%tl280732280762%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e280730280755%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl280732280762%_))
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'declare-type))
                                 (cons _%$%hd280728280749%_
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-!primitive-lambda))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%$%hd280602280623%_ '()))
                 (cons '#f
                       (cons 'signature: (cons _%$%hd280731280759%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (_%$%g280723280738%_ _%$%g280724280742%_))))
                   (_%$%g280723280738%_ _%$%g280724280742%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g280723280738%_
                                                    _%$%g280724280742%_)))))
                                       (_%$%g280722280783%_
                                        _%unchecked280685%_))
                                     '(begin)))))))
                      (_%$%g280656280787%_
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'declare-type))
                             (cons _%$%hd280506280543%_
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-lambda))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%$%hd280602280623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons 'signature:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%hd280605280633%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                    (_%$%g280597280612%_ _%$%g280598280616%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g280597280612%_
                                                     _%$%g280598280616%_))))
                                            (_%$%g280597280612%_
                                             _%$%g280598280616%_)))))
                                (_%$%g280596280791%_
                                 (|gxc[1]#parse-signature|
                                  _%stx280495%_
                                  _%$%hd280506280543%_
                                  (let ((__tmp282857
                                         (lambda (_%$%g280794280797%_
                                                  _%$%g280795280800%_)
                                           (cons _%$%g280794280797%_
                                                 _%$%g280795280800%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp282857
                                     '()
                                     _%$%signature280516280574%_)))))
                              (_%$%g280498280522%_ _%$%g280499280526%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop280511280555%_
                                                   _%$%target280508280549%_
                                                   '()))
                                                (_%$%g280498280522%_
                                                 _%$%g280499280526%_)))))
                                      (_%$%g280498280522%_
                                       _%$%g280499280526%_))))
                              (_%$%g280498280522%_ _%$%g280499280526%_))))
                      (_%$%g280498280522%_ _%$%g280499280526%_)))))
          (_%$%g280497280803%_ _%stx280495%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx280808%_)
        (let* ((_%$%g280811280835%_
                (lambda (_%$%g280812280831%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g280812280831%_))))
               (_%$%g280810281710%_
                (lambda (_%$%g280812280839%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g280812280839%_))
                      (let ((_%$%e280815280842%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g280812280839%_))))
                        (let ((_%$%hd280816280846%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e280815280842%_)))
                              (_%$%tl280817280849%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e280815280842%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl280817280849%_))
                              (let ((_%$%e280818280852%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl280817280849%_))))
                                (let ((_%$%hd280819280856%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e280818280852%_)))
                                      (_%$%tl280820280859%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e280818280852%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl280820280859%_))
                                      (let ((_g282858_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl280820280859%_
                                                '0))))
                                        (begin
                                          (let ((_g282859_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g282858_)
                                                       (##values-length
                                                        _g282858_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g282859_ 2)))
                                                (error "Context expects 2 values"
                                                       _g282859_)))
                                          (let ((_%$%target280821280862%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g282858_ 0)))
                                                (_%$%tl280823280865%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g282858_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl280823280865%_))
                                                (letrec ((_%$%loop280824280868%_
                                                          (lambda (_%$%hd280822280872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%case-signature280828280875%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd280822280872%_))
                        (let ((_%$%e280825280877%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd280822280872%_))))
                          (let ((_%$%lp-hd280826280881%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e280825280877%_)))
                                (_%$%lp-tl280827280884%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e280825280877%_))))
                            (_%$%loop280824280868%_
                             _%$%lp-tl280827280884%_
                             (cons _%$%lp-hd280826280881%_
                                   _%$%case-signature280828280875%_))))
                        (let ((_%$%case-signature280829280887%_
                               (reverse _%$%case-signature280828280875%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd280819280856%_))
                              (let* ((_%signatures280923%_
                                      (map (lambda (_%$%g280909280911%_)
                                             (|gxc[1]#parse-signature|
                                              _%stx280808%_
                                              _%$%hd280819280856%_
                                              _%$%g280909280911%_))
                                           (let ((__tmp282860
                                                  (lambda (_%$%g280914280917%_
                                                           _%$%g280915280920%_)
                                                    (cons _%$%g280914280917%_
                                                          _%$%g280915280920%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp282860
                                              '()
                                              _%$%case-signature280829280887%_))))
                                     (_%$%g280926280952%_
                                      (lambda (_%$%g280927280948%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g280927280948%_))))
                                     (_%$%g280925281706%_
                                      (lambda (_%$%g280927280956%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g280927280956%_))
                                            (let ((_g282861_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g280927280956%_
                                                      '0))))
                                              (begin
                                                (let ((_g282862_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g282861_)
                                                             (##values-length
                                                              _g282861_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g282862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g282862_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target280930280959%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g282861_
                                                          0)))
                                                      (_%$%tl280932280962%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g282861_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl280932280962%_))
                                                      (letrec ((_%$%loop280933280965%_
                                                                (lambda (_%$%hd280931280969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%sig280937280972%_
                                 _%$%arity280938280973%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd280931280969%_))
                              (let ((_%$%e280934280975%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd280931280969%_))))
                                (let ((_%$%lp-hd280935280979%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e280934280975%_)))
                                      (_%$%lp-tl280936280982%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e280934280975%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%lp-hd280935280979%_))
                                      (let ((_%$%e280941280985%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%lp-hd280935280979%_))))
                                        (let ((_%$%hd280942280989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e280941280985%_)))
                                              (_%$%tl280943280992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e280941280985%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl280943280992%_))
                                              (let ((_%$%e280944280995%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl280943280992%_))))
                                                (let ((_%$%hd280945280999%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e280944280995%_)))
                                                      (_%$%tl280946281002%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e280944280995%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl280946281002%_))
                                                      (_%$%loop280933280965%_
                                                       _%$%lp-tl280936280982%_
                                                       (cons _%$%hd280945280999%_
                                                             _%$%sig280937280972%_)
                                                       (cons _%$%hd280942280989%_
                                                             _%$%arity280938280973%_))
                                                      (_%$%g280926280952%_
                                                       _%$%g280927280956%_))))
                                              (_%$%g280926280952%_
                                               _%$%g280927280956%_))))
                                      (_%$%g280926280952%_
                                       _%$%g280927280956%_))))
                              (let ((_%$%sig280939281005%_
                                     (reverse _%$%sig280937280972%_))
                                    (_%$%arity280940281007%_
                                     (reverse _%$%arity280938280973%_)))
                                (let* ((_%$%g281028281036%_
                                        (lambda (_%$%g281029281032%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g281029281032%_))))
                                       (_%$%g281027281691%_
                                        (lambda (_%$%g281029281040%_)
                                          (let* ((_%$%g281056281064%_
                                                  (lambda (_%$%g281057281060%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g281057281060%_))))
                                                 (_%$%g281055281086%_
                                                  (lambda (_%$%g281057281068%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%$%g281029281040%_
                                                                (cons _%$%g281057281068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g281055281086%_
                                             (let ((_g282863_
                                                    (let _%loop281090%_ ((_%rest281093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%signatures280923%_)
                                 (_%unchecked-proc281095%_ '#f)
                                 (_%unchecked-clauses281096%_ '()))
              (let* ((_%$%rest281097281105%_ _%rest281093%_)
                     (_%$%else281099281117%_
                      (lambda ()
                        (values _%unchecked-proc281095%_
                                (reverse! _%unchecked-clauses281096%_))))
                     (_%$%K281101281558%_
                      (lambda (_%rest281121%_ _%hd281123%_)
                        (let* ((_%$%g281125281212%_
                                (lambda (_%$%g281126281208%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g281126281208%_))))
                               (_%$%g281124281554%_
                                (lambda (_%$%g281126281216%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%g281126281216%_))
                                      (let ((_%$%e281133281219%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%g281126281216%_))))
                                        (let ((_%$%hd281134281223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e281133281219%_)))
                                              (_%$%tl281135281226%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e281133281219%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl281135281226%_))
                                              (let ((_%$%e281136281229%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl281135281226%_))))
                                                (let ((_%$%hd281137281233%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e281136281229%_)))
                                                      (_%$%tl281138281236%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e281136281229%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd281137281233%_))
                                                      (let ((_%$%e281139281239%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%hd281137281233%_))))
                (let ((_%$%hd281140281243%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e281139281239%_)))
                      (_%$%tl281141281246%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e281139281239%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl281141281246%_))
                      (let ((_%$%e281142281249%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl281141281246%_))))
                        (let ((_%$%hd281143281253%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e281142281249%_)))
                              (_%$%tl281144281256%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e281142281249%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-datum? _%$%hd281143281253%_))
                              (let ((_%$%e281145281259%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd281143281253%_))))
                                (if (equal? _%$%e281145281259%_ 'arguments:)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl281144281256%_))
                                        (let ((_%$%e281146281263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl281144281256%_))))
                                          (let ((_%$%hd281147281267%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e281146281263%_)))
                                                (_%$%tl281148281270%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e281146281263%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd281147281267%_))
                                                (let ((_%$%e281149281273%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%hd281147281267%_))))
                                                  (let ((_%$%hd281150281277%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e281149281273%_)))
                                                        (_%$%tl281151281280%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e281149281273%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd281150281277%_))
                                                        (if (let ((__tmp282865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gxc[1]#_g282866_|))
                      (declare (not safe))
                      (gx#free-identifier=? __tmp282865 _%$%hd281150281277%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl281151281280%_))
                        (let ((_%$%e281152281283%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl281151281280%_))))
                          (let ((_%$%hd281153281287%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e281152281283%_)))
                                (_%$%tl281154281290%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e281152281283%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl281154281290%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl281148281270%_))
                                    (let ((_%$%e281155281293%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl281148281270%_))))
                                      (let ((_%$%hd281156281297%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e281155281293%_)))
                                            (_%$%tl281157281300%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e281155281293%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-datum?
                                               _%$%hd281156281297%_))
                                            (let ((_%$%e281158281303%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd281156281297%_))))
                                              (if (equal? _%$%e281158281303%_
                                                          'return:)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl281157281300%_))
                                                      (let ((_%$%e281159281307%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl281157281300%_))))
                (let ((_%$%hd281160281311%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e281159281307%_)))
                      (_%$%tl281161281314%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e281159281307%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd281160281311%_))
                      (let ((_%$%e281162281317%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%hd281160281311%_))))
                        (let ((_%$%hd281163281321%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e281162281317%_)))
                              (_%$%tl281164281324%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e281162281317%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd281163281321%_))
                              (if (let ((__tmp282867 |gxc[1]#_g282868_|))
                                    (declare (not safe))
                                    (gx#free-identifier=?
                                     __tmp282867
                                     _%$%hd281163281321%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl281164281324%_))
                                      (let ((_%$%e281165281327%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl281164281324%_))))
                                        (let ((_%$%hd281166281331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e281165281327%_)))
                                              (_%$%tl281167281334%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e281165281327%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl281167281334%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl281161281314%_))
                                                  (let ((_%$%e281168281337%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl281161281314%_))))
                                                    (let ((_%$%hd281169281341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e281168281337%_)))
                                                          (_%$%tl281170281344%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e281168281337%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-datum?
                                                             _%$%hd281169281341%_))
                                                          (let ((_%$%e281171281347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd281169281341%_))))
                    (if (equal? _%$%e281171281347%_ 'effect:)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl281170281344%_))
                            (let ((_%$%e281172281351%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl281170281344%_))))
                              (let ((_%$%hd281173281355%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e281172281351%_)))
                                    (_%$%tl281174281358%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e281172281351%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd281173281355%_))
                                    (let ((_%$%e281175281361%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd281173281355%_))))
                                      (let ((_%$%hd281176281365%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e281175281361%_)))
                                            (_%$%tl281177281368%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e281175281361%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd281176281365%_))
                                            (if (let ((__tmp282869
                                                       |gxc[1]#_g282870_|))
                                                  (declare (not safe))
                                                  (gx#free-identifier=?
                                                   __tmp282869
                                                   _%$%hd281176281365%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl281177281368%_))
                                                    (let ((_%$%e281178281371%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl281177281368%_))))
                                                      (let ((_%$%hd281179281375%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e281178281371%_)))
                    (_%$%tl281180281378%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e281178281371%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl281180281378%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl281174281358%_))
                        (let ((_%$%e281181281381%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl281174281358%_))))
                          (let ((_%$%hd281182281385%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e281181281381%_)))
                                (_%$%tl281183281388%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e281181281381%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd281182281385%_))
                                (let ((_%$%e281184281391%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd281182281385%_))))
                                  (if (equal? _%$%e281184281391%_ 'unchecked:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl281183281388%_))
                                          (let ((_%$%e281185281395%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl281183281388%_))))
                                            (let ((_%$%hd281186281399%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e281185281395%_)))
                                                  (_%$%tl281187281402%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e281185281395%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd281186281399%_))
                                                  (let ((_%$%e281188281405%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd281186281399%_))))
                                                    (let ((_%$%hd281189281409%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e281188281405%_)))
                                                          (_%$%tl281190281412%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e281188281405%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd281189281409%_))
                                                          (if (let ((__tmp282871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             |gxc[1]#_g282872_|))
                        (declare (not safe))
                        (gx#free-identifier=?
                         __tmp282871
                         _%$%hd281189281409%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl281190281412%_))
                          (let ((_%$%e281191281415%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl281190281412%_))))
                            (let ((_%$%hd281192281419%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e281191281415%_)))
                                  (_%$%tl281193281422%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e281191281415%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl281193281422%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl281187281402%_))
                                      (let ((_%$%e281194281425%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl281187281402%_))))
                                        (let ((_%$%hd281195281429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e281194281425%_)))
                                              (_%$%tl281196281432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e281194281425%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd281195281429%_))
                                              (let ((_%$%e281197281435%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd281195281429%_))))
                                                (if (equal? _%$%e281197281435%_
                                                            'origin:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl281196281432%_))
                                                        (let ((_%$%e281198281439%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl281196281432%_))))
                  (let ((_%$%hd281199281443%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e281198281439%_)))
                        (_%$%tl281200281446%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e281198281439%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd281199281443%_))
                        (let ((_%$%e281201281449%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd281199281443%_))))
                          (let ((_%$%hd281202281453%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e281201281449%_)))
                                (_%$%tl281203281456%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e281201281449%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd281202281453%_))
                                (if (let ((__tmp282873 |gxc[1]#_g282874_|))
                                      (declare (not safe))
                                      (gx#free-identifier=?
                                       __tmp282873
                                       _%$%hd281202281453%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl281203281456%_))
                                        (let ((_%$%e281204281459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl281203281456%_))))
                                          (let ((_%$%hd281205281463%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e281204281459%_)))
                                                (_%$%tl281206281466%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e281204281459%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl281206281466%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl281200281446%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl281138281236%_))
                                                        (let ((_%clause281546%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%$%hd281134281223%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'make-!signature))
                                                           (cons 'return:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%hd281166281331%_ '()))
                               (cons 'origin:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%hd281205281463%_
                                                       '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                      (_%unchecked281548%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%$%hd281192281419%_))))
                  (_%loop281090%_
                   _%rest281121%_
                   (let ((_%$e281550%_ _%unchecked281548%_))
                     (if _%$e281550%_ _%$e281550%_ _%unchecked-proc281095%_))
                   (cons _%clause281546%_ _%unchecked-clauses281096%_)))
                (_%$%g281125281212%_ _%$%g281126281216%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g281125281212%_
                                                     _%$%g281126281216%_))
                                                (_%$%g281125281212%_
                                                 _%$%g281126281216%_))))
                                        (_%$%g281125281212%_
                                         _%$%g281126281216%_))
                                    (_%$%g281125281212%_ _%$%g281126281216%_))
                                (_%$%g281125281212%_ _%$%g281126281216%_))))
                        (_%$%g281125281212%_ _%$%g281126281216%_))))
                (_%$%g281125281212%_ _%$%g281126281216%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g281125281212%_
                                                     _%$%g281126281216%_)))
                                              (_%$%g281125281212%_
                                               _%$%g281126281216%_))))
                                      (_%$%g281125281212%_
                                       _%$%g281126281216%_))
                                  (_%$%g281125281212%_ _%$%g281126281216%_))))
                          (_%$%g281125281212%_ _%$%g281126281216%_))
                      (_%$%g281125281212%_ _%$%g281126281216%_))
                  (_%$%g281125281212%_ _%$%g281126281216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g281125281212%_
                                                   _%$%g281126281216%_))))
                                          (_%$%g281125281212%_
                                           _%$%g281126281216%_))
                                      (_%$%g281125281212%_
                                       _%$%g281126281216%_)))
                                (_%$%g281125281212%_ _%$%g281126281216%_))))
                        (_%$%g281125281212%_ _%$%g281126281216%_))
                    (_%$%g281125281212%_ _%$%g281126281216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g281125281212%_
                                                     _%$%g281126281216%_))
                                                (_%$%g281125281212%_
                                                 _%$%g281126281216%_))
                                            (_%$%g281125281212%_
                                             _%$%g281126281216%_))))
                                    (_%$%g281125281212%_
                                     _%$%g281126281216%_))))
                            (_%$%g281125281212%_ _%$%g281126281216%_))
                        (_%$%g281125281212%_ _%$%g281126281216%_)))
                  (_%$%g281125281212%_ _%$%g281126281216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g281125281212%_
                                                   _%$%g281126281216%_))
                                              (_%$%g281125281212%_
                                               _%$%g281126281216%_))))
                                      (_%$%g281125281212%_
                                       _%$%g281126281216%_))
                                  (_%$%g281125281212%_ _%$%g281126281216%_))
                              (_%$%g281125281212%_ _%$%g281126281216%_))))
                      (_%$%g281125281212%_ _%$%g281126281216%_))))
              (_%$%g281125281212%_ _%$%g281126281216%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g281125281212%_
                                                   _%$%g281126281216%_)))
                                            (_%$%g281125281212%_
                                             _%$%g281126281216%_))))
                                    (_%$%g281125281212%_ _%$%g281126281216%_))
                                (_%$%g281125281212%_ _%$%g281126281216%_))))
                        (_%$%g281125281212%_ _%$%g281126281216%_))
                    (_%$%g281125281212%_ _%$%g281126281216%_))
                (_%$%g281125281212%_ _%$%g281126281216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g281125281212%_
                                                 _%$%g281126281216%_))))
                                        (_%$%g281125281212%_
                                         _%$%g281126281216%_))
                                    (_%$%g281125281212%_ _%$%g281126281216%_)))
                              (_%$%g281125281212%_ _%$%g281126281216%_))))
                      (_%$%g281125281212%_ _%$%g281126281216%_))))
              (_%$%g281125281212%_ _%$%g281126281216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g281125281212%_
                                               _%$%g281126281216%_))))
                                      (_%$%g281125281212%_
                                       _%$%g281126281216%_)))))
                          (_%$%g281124281554%_ _%hd281123%_)))))
                (if (pair? _%$%rest281097281105%_)
                    (let ((_%$%hd281102281562%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest281097281105%_)))
                          (_%$%tl281103281565%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest281097281105%_))))
                      (let* ((_%hd281568%_ _%$%hd281102281562%_)
                             (_%rest281571%_ _%$%tl281103281565%_))
                        (_%$%K281101281558%_ _%rest281571%_ _%hd281568%_)))
                    (_%$%else281099281117%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 (let ((_g282864_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g282863_)
                                                              (##values-length
                                                               _g282863_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g282864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g282864_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%unchecked-proc281574%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g282863_
                                                           0)))
                                                       (_%unchecked-clauses281576%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g282863_
                                                           1))))
                                                   (if _%unchecked-proc281574%_
                                                       (let* ((_%$%g281578281602%_
                                                               (lambda (_%$%g281579281598%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g281579281598%_))))
                      (_%$%g281577281687%_
                       (lambda (_%$%g281579281606%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%g281579281606%_))
                             (let ((_%$%e281582281609%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%$%g281579281606%_))))
                               (let ((_%$%hd281583281613%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e281582281609%_)))
                                     (_%$%tl281584281616%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e281582281609%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%tl281584281616%_))
                                     (let ((_%$%e281585281619%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%tl281584281616%_))))
                                       (let ((_%$%hd281586281623%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e281585281619%_)))
                                             (_%$%tl281587281626%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e281585281619%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair/null?
                                                _%$%hd281586281623%_))
                                             (let ((_g282875_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-split-splice
                                                       _%$%hd281586281623%_
                                                       '0))))
                                               (begin
                                                 (let ((_g282876_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g282875_)
                                                              (##values-length
                                                               _g282875_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g282876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g282876_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$%target281588281629%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g282875_
                                                           0)))
                                                       (_%$%tl281590281632%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g282875_
                                                           1))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl281590281632%_))
                                                       (letrec ((_%$%loop281591281635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%hd281589281639%_
                                  _%$%clause281595281642%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd281589281639%_))
                               (let ((_%$%e281592281644%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%$%hd281589281639%_))))
                                 (let ((_%$%lp-hd281593281648%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e281592281644%_)))
                                       (_%$%lp-tl281594281651%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e281592281644%_))))
                                   (_%$%loop281591281635%_
                                    _%$%lp-tl281594281651%_
                                    (cons _%$%lp-hd281593281648%_
                                          _%$%clause281595281642%_))))
                               (let ((_%$%clause281596281654%_
                                      (reverse _%$%clause281595281642%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl281587281626%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-type))
                                           (cons _%$%hd281583281613%_
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!primitive-case-lambda))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '@list))
                                 (let ((__tmp282877
                                        (lambda (_%$%g281678281681%_
                                                 _%$%g281679281684%_)
                                          (cons _%$%g281678281681%_
                                                _%$%g281679281684%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp282877
                                    '()
                                    _%$%clause281596281654%_)))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%g281578281602%_
                                      _%$%g281579281606%_)))))))
                 (_%$%loop281591281635%_ _%$%target281588281629%_ '()))
               (_%$%g281578281602%_ _%$%g281579281606%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g281578281602%_
                                              _%$%g281579281606%_))))
                                     (_%$%g281578281602%_
                                      _%$%g281579281606%_))))
                             (_%$%g281578281602%_ _%$%g281579281606%_)))))
                 (_%$%g281577281687%_
                  (list _%unchecked-proc281574%_ _%unchecked-clauses281576%_)))
               '(begin))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g281027281691%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'declare-type))
                                         (cons _%$%hd280819280856%_
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'make-!primitive-case-lambda))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '@list))
                               (begin
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-check-splice-targets
                                    _%$%sig280939281005%_
                                    _%$%arity280940281007%_))
                                 (let ((__tmp282878
                                        (lambda (_%$%g281694281698%_
                                                 _%$%g281695281701%_
                                                 _%$%g281696281703%_)
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!primitive-lambda))
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote))
                          (cons _%$%g281695281701%_ '()))
                    (cons '#f
                          (cons 'signature: (cons _%$%g281694281698%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%g281696281703%_))))
                                   (declare (not safe))
                                   (foldr__1
                                    __tmp282878
                                    '()
                                    _%$%sig280939281005%_
                                    _%$%arity280940281007%_))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))))))
                (_%$%loop280933280965%_ _%$%target280930280959%_ '() '()))
              (_%$%g280926280952%_ _%$%g280927280956%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g280926280952%_
                                             _%$%g280927280956%_)))))
                                (_%$%g280925281706%_ _%signatures280923%_))
                              (_%$%g280811280835%_ _%$%g280812280839%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop280824280868%_
                                                   _%$%target280821280862%_
                                                   '()))
                                                (_%$%g280811280835%_
                                                 _%$%g280812280839%_)))))
                                      (_%$%g280811280835%_
                                       _%$%g280812280839%_))))
                              (_%$%g280811280835%_ _%$%g280812280839%_))))
                      (_%$%g280811280835%_ _%$%g280812280839%_)))))
          (_%$%g280810281710%_ _%stx280808%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx281718%_)
        (let* ((_%__stx282698282699%_ _%$stx281718%_)
               (_%$%g281724281784%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx282698282699%_)))))
          (let ((_%__kont282701282702%_
                 (lambda (_%$%g281726282006%_ _%$%g281727282008%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g281727282008%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%$%g281727282008%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g281726282006%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont282703282704%_
                 (lambda (_%$%g281741281931%_
                          _%$%g281742281933%_
                          _%$%g281743281934%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g281743281934%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%$%g281743281934%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g281742281933%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g281741281931%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont282705282706%_
                 (lambda (_%$%g281760281845%_
                          _%$%g281761281847%_
                          _%$%g281762281848%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g281762281848%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%$%g281762281848%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g281761281847%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g281760281845%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx282698282699%_))
                (let ((_%$%e281728281962%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx282698282699%_))))
                  (let ((_%$%tl281730281969%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e281728281962%_)))
                        (_%$%hd281729281966%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e281728281962%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl281730281969%_))
                        (let ((_%$%e281731281972%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl281730281969%_))))
                          (let ((_%$%tl281733281979%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e281731281972%_)))
                                (_%$%hd281732281976%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e281731281972%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd281732281976%_))
                                (let ((_%$%e281734281982%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd281732281976%_))))
                                  (if (equal? _%$%e281734281982%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl281733281979%_))
                                          (let ((_%$%e281735281986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl281733281979%_))))
                                            (let ((_%$%tl281737281993%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e281735281986%_)))
                                                  (_%$%hd281736281990%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e281735281986%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl281737281993%_))
                                                  (let ((_%$%e281738281996%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl281737281993%_))))
                                                    (let ((_%$%tl281740282003%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e281738281996%_)))
                                                          (_%$%hd281739282000%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e281738281996%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl281740282003%_))
                                                          (_%__kont282701282702%_
                                                           _%$%hd281739282000%_
                                                           _%$%hd281736281990%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g281724281784%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g281724281784%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g281724281784%_)))
                                      (if (equal? _%$%e281734281982%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl281733281979%_))
                                              (let ((_%$%e281751281901%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl281733281979%_))))
                                                (let ((_%$%tl281753281908%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e281751281901%_)))
                                                      (_%$%hd281752281905%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e281751281901%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl281753281908%_))
                                                      (let ((_%$%e281754281911%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl281753281908%_))))
                (let ((_%$%tl281756281918%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e281754281911%_)))
                      (_%$%hd281755281915%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e281754281911%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl281756281918%_))
                      (let ((_%$%e281757281921%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl281756281918%_))))
                        (let ((_%$%tl281759281928%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e281757281921%_)))
                              (_%$%hd281758281925%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e281757281921%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl281759281928%_))
                              (_%__kont282703282704%_
                               _%$%hd281758281925%_
                               _%$%hd281755281915%_
                               _%$%hd281752281905%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g281724281784%_)))))
                      (let () (declare (not safe)) (_%$%g281724281784%_)))))
              (let () (declare (not safe)) (_%$%g281724281784%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g281724281784%_)))
                                          (if (equal? _%$%e281734281982%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl281733281979%_))
                                                  (let ((_%$%e281770281815%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl281733281979%_))))
                                                    (let ((_%$%tl281772281822%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e281770281815%_)))
                                                          (_%$%hd281771281819%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e281770281815%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl281772281822%_))
                                                          (let ((_%$%e281773281825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl281772281822%_))))
                    (let ((_%$%tl281775281832%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e281773281825%_)))
                          (_%$%hd281774281829%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e281773281825%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl281775281832%_))
                          (let ((_%$%e281776281835%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl281775281832%_))))
                            (let ((_%$%tl281778281842%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e281776281835%_)))
                                  (_%$%hd281777281839%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e281776281835%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl281778281842%_))
                                  (_%__kont282705282706%_
                                   _%$%hd281777281839%_
                                   _%$%hd281774281829%_
                                   _%$%hd281771281819%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g281724281784%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g281724281784%_)))))
                  (let () (declare (not safe)) (_%$%g281724281784%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g281724281784%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g281724281784%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g281724281784%_)))))
                        (let () (declare (not safe)) (_%$%g281724281784%_)))))
                (let () (declare (not safe)) (_%$%g281724281784%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx282030%_)
        (let* ((_%$%g282034282054%_
                (lambda (_%$%g282035282050%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g282035282050%_))))
               (_%$%g282033282123%_
                (lambda (_%$%g282035282058%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g282035282058%_))
                      (let ((_%$%e282037282061%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g282035282058%_))))
                        (let ((_%$%hd282038282065%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e282037282061%_)))
                              (_%$%tl282039282068%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e282037282061%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl282039282068%_))
                              (let ((_g282879_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl282039282068%_
                                        '0))))
                                (begin
                                  (let ((_g282880_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g282879_)
                                               (##values-length _g282879_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g282880_ 2)))
                                        (error "Context expects 2 values"
                                               _g282880_)))
                                  (let ((_%$%target282040282071%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282879_ 0)))
                                        (_%$%tl282042282074%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282879_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl282042282074%_))
                                        (letrec ((_%$%loop282043282077%_
                                                  (lambda (_%$%hd282041282081%_
                                                           _%$%decl282047282084%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd282041282081%_))
                                                        (let ((_%$%e282044282086%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd282041282081%_))))
                  (let ((_%$%lp-hd282045282090%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e282044282086%_)))
                        (_%$%lp-tl282046282093%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e282044282086%_))))
                    (_%$%loop282043282077%_
                     _%$%lp-tl282046282093%_
                     (cons _%$%lp-hd282045282090%_ _%$%decl282047282084%_))))
                (let ((_%$%decl282048282096%_
                       (reverse _%$%decl282047282084%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (let ((__tmp282881
                               (lambda (_%$%g282114282117%_
                                        _%$%g282115282120%_)
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-builtin-class))
                                             _%$%g282114282117%_)
                                       _%$%g282115282120%_))))
                          (declare (not safe))
                          (foldr__0
                           __tmp282881
                           '()
                           _%$%decl282048282096%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop282043282077%_
                                           _%$%target282040282071%_
                                           '()))
                                        (_%$%g282034282054%_
                                         _%$%g282035282058%_)))))
                              (_%$%g282034282054%_ _%$%g282035282058%_))))
                      (_%$%g282034282054%_ _%$%g282035282058%_)))))
          (_%$%g282033282123%_ _%$stx282030%_))))))
