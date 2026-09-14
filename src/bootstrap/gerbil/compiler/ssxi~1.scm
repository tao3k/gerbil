(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g282584_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282591_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282593_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282595_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282597_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282599_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282611_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282613_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282615_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282617_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282619_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx276042%_)
        (let* ((_%$%g276046276064%_
                (lambda (_%$%g276047276060%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276047276060%_))))
               (_%$%g276045276119%_
                (lambda (_%$%g276047276068%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276047276068%_))
                      (let ((_%$%e276050276071%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276047276068%_))))
                        (let ((_%$%hd276051276075%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276050276071%_)))
                              (_%$%tl276052276078%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276050276071%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276052276078%_))
                              (let ((_%$%e276053276081%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276052276078%_))))
                                (let ((_%$%hd276054276085%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276053276081%_)))
                                      (_%$%tl276055276088%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276053276081%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl276055276088%_))
                                      (let ((_%$%e276056276091%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl276055276088%_))))
                                        (let ((_%$%hd276057276095%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276056276091%_)))
                                              (_%$%tl276058276098%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276056276091%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl276058276098%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd276054276085%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-type!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd276054276085%_ '()))
                      (cons _%$%hd276057276095%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g276046276064%_
                                                   _%$%g276047276068%_))
                                              (_%$%g276046276064%_
                                               _%$%g276047276068%_))))
                                      (_%$%g276046276064%_
                                       _%$%g276047276068%_))))
                              (_%$%g276046276064%_ _%$%g276047276068%_))))
                      (_%$%g276046276064%_ _%$%g276047276068%_)))))
          (_%$%g276045276119%_ _%$stx276042%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx276123%_)
        (let* ((_%$%g276127276145%_
                (lambda (_%$%g276128276141%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276128276141%_))))
               (_%$%g276126276200%_
                (lambda (_%$%g276128276149%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276128276149%_))
                      (let ((_%$%e276131276152%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276128276149%_))))
                        (let ((_%$%hd276132276156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276131276152%_)))
                              (_%$%tl276133276159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276131276152%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276133276159%_))
                              (let ((_%$%e276134276162%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276133276159%_))))
                                (let ((_%$%hd276135276166%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276134276162%_)))
                                      (_%$%tl276136276169%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276134276162%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl276136276169%_))
                                      (let ((_%$%e276137276172%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl276136276169%_))))
                                        (let ((_%$%hd276138276176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276137276172%_)))
                                              (_%$%tl276139276179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276137276172%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl276139276179%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd276135276166%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-class!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd276135276166%_ '()))
                      (cons _%$%hd276138276176%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g276127276145%_
                                                   _%$%g276128276149%_))
                                              (_%$%g276127276145%_
                                               _%$%g276128276149%_))))
                                      (_%$%g276127276145%_
                                       _%$%g276128276149%_))))
                              (_%$%g276127276145%_ _%$%g276128276149%_))))
                      (_%$%g276127276145%_ _%$%g276128276149%_)))))
          (_%$%g276126276200%_ _%$stx276123%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx276204%_)
        (let* ((_%$%g276208276237%_
                (lambda (_%$%g276209276233%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276209276233%_))))
               (_%$%g276207276333%_
                (lambda (_%$%g276209276241%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276209276241%_))
                      (let ((_%$%e276212276244%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276209276241%_))))
                        (let ((_%$%hd276213276248%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276212276244%_)))
                              (_%$%tl276214276251%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276212276244%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl276214276251%_))
                              (let ((_g282562_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl276214276251%_
                                        '0))))
                                (begin
                                  (let ((_g282563_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g282562_)
                                               (##values-length _g282562_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g282563_ 2)))
                                        (error "Context expects 2 values"
                                               _g282563_)))
                                  (let ((_%$%target276215276254%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282562_ 0)))
                                        (_%$%tl276217276257%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282562_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl276217276257%_))
                                        (letrec ((_%$%loop276218276260%_
                                                  (lambda (_%$%hd276216276264%_
                                                           _%$%type276222276267%_
                                                           _%$%symbol276223276268%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd276216276264%_))
                                                        (let ((_%$%e276219276270%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd276216276264%_))))
                  (let ((_%$%lp-hd276220276274%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e276219276270%_)))
                        (_%$%lp-tl276221276277%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e276219276270%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd276220276274%_))
                        (let ((_%$%e276226276280%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd276220276274%_))))
                          (let ((_%$%hd276227276284%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e276226276280%_)))
                                (_%$%tl276228276287%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e276226276280%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl276228276287%_))
                                (let ((_%$%e276229276290%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl276228276287%_))))
                                  (let ((_%$%hd276230276294%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e276229276290%_)))
                                        (_%$%tl276231276297%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e276229276290%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl276231276297%_))
                                        (_%$%loop276218276260%_
                                         _%$%lp-tl276221276277%_
                                         (cons _%$%hd276230276294%_
                                               _%$%type276222276267%_)
                                         (cons _%$%hd276227276284%_
                                               _%$%symbol276223276268%_))
                                        (_%$%g276208276237%_
                                         _%$%g276209276241%_))))
                                (_%$%g276208276237%_ _%$%g276209276241%_))))
                        (_%$%g276208276237%_ _%$%g276209276241%_))))
                (let ((_%$%type276224276300%_ (reverse _%$%type276222276267%_))
                      (_%$%symbol276225276302%_
                       (reverse _%$%symbol276223276268%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%type276224276300%_
                             _%$%symbol276225276302%_))
                          (let ((__tmp282564
                                 (lambda (_%$%g276321276325%_
                                          _%$%g276322276328%_
                                          _%$%g276323276330%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%$%g276322276328%_
                                                     (cons _%$%g276321276325%_
                                                           '())))
                                         _%$%g276323276330%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp282564
                             '()
                             _%$%type276224276300%_
                             _%$%symbol276225276302%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop276218276260%_
                                           _%$%target276215276254%_
                                           '()
                                           '()))
                                        (_%$%g276208276237%_
                                         _%$%g276209276241%_)))))
                              (_%$%g276208276237%_ _%$%g276209276241%_))))
                      (_%$%g276208276237%_ _%$%g276209276241%_)))))
          (_%$%g276207276333%_ _%$stx276204%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx276338%_)
        (let* ((_%__stx281873281874%_ _%$stx276338%_)
               (_%$%g276343276385%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx281873281874%_)))))
          (let ((_%__kont281876281877%_
                 (lambda (_%$%g276345276513%_
                          _%$%g276346276515%_
                          _%$%g276347276516%_
                          _%$%g276348276517%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g276348276517%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g276347276516%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%g276346276515%_
                                                       '()))
                                           (cons _%$%g276345276513%_ '())))))))
                (_%__kont281878281879%_
                 (lambda (_%$%g276364276432%_
                          _%$%g276365276434%_
                          _%$%g276366276435%_
                          _%$%g276367276436%_)
                   (cons _%$%g276367276436%_
                         (cons _%$%g276366276435%_
                               (cons _%$%g276365276434%_
                                     (cons _%$%g276364276432%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match281912281913%_
                   (lambda (_%$%e276349276463%_
                            _%$%hd276350276467%_
                            _%$%tl276351276470%_
                            _%$%e276352276473%_
                            _%$%hd276353276477%_
                            _%$%tl276354276480%_
                            _%$%e276355276483%_
                            _%$%hd276356276487%_
                            _%$%tl276357276490%_
                            _%$%e276358276493%_
                            _%$%hd276359276497%_
                            _%$%tl276360276500%_
                            _%$%e276361276503%_
                            _%$%hd276362276507%_
                            _%$%tl276363276510%_)
                     (let ((_%$%g276345276513%_ _%$%hd276362276507%_)
                           (_%$%g276346276515%_ _%$%hd276359276497%_)
                           (_%$%g276347276516%_ _%$%hd276356276487%_)
                           (_%$%g276348276517%_ _%$%hd276353276477%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g276348276517%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g276347276516%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g276346276515%_)))
                           (_%__kont281876281877%_
                            _%$%g276345276513%_
                            _%$%g276346276515%_
                            _%$%g276347276516%_
                            _%$%g276348276517%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g276343276385%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx281873281874%_))
                  (let ((_%$%e276349276463%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx281873281874%_))))
                    (let ((_%$%tl276351276470%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e276349276463%_)))
                          (_%$%hd276350276467%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e276349276463%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl276351276470%_))
                          (let ((_%$%e276352276473%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl276351276470%_))))
                            (let ((_%$%tl276354276480%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e276352276473%_)))
                                  (_%$%hd276353276477%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e276352276473%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl276354276480%_))
                                  (let ((_%$%e276355276483%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl276354276480%_))))
                                    (let ((_%$%tl276357276490%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e276355276483%_)))
                                          (_%$%hd276356276487%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e276355276483%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl276357276490%_))
                                          (let ((_%$%e276358276493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl276357276490%_))))
                                            (let ((_%$%tl276360276500%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e276358276493%_)))
                                                  (_%$%hd276359276497%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e276358276493%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl276360276500%_))
                                                  (let ((_%$%e276361276503%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl276360276500%_))))
                                                    (let ((_%$%tl276363276510%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e276361276503%_)))
                                                          (_%$%hd276362276507%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e276361276503%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl276363276510%_))
                                                          (_%__match281912281913%_
                                                           _%$%e276349276463%_
                                                           _%$%hd276350276467%_
                                                           _%$%tl276351276470%_
                                                           _%$%e276352276473%_
                                                           _%$%hd276353276477%_
                                                           _%$%tl276354276480%_
                                                           _%$%e276355276483%_
                                                           _%$%hd276356276487%_
                                                           _%$%tl276357276490%_
                                                           _%$%e276358276493%_
                                                           _%$%hd276359276497%_
                                                           _%$%tl276360276500%_
                                                           _%$%e276361276503%_
                                                           _%$%hd276362276507%_
                                                           _%$%tl276363276510%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g276343276385%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl276360276500%_))
                                                      (_%__kont281878281879%_
                                                       _%$%hd276359276497%_
                                                       _%$%hd276356276487%_
                                                       _%$%hd276353276477%_
                                                       _%$%hd276350276467%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g276343276385%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g276343276385%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g276343276385%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g276343276385%_)))))
                  (let () (declare (not safe)) (_%$%g276343276385%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx276542%_)
        (let* ((_%$%g276546276581%_
                (lambda (_%$%g276547276577%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276547276577%_))))
               (_%$%g276545276694%_
                (lambda (_%$%g276547276585%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276547276585%_))
                      (let ((_%$%e276551276588%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276547276585%_))))
                        (let ((_%$%hd276552276592%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276551276588%_)))
                              (_%$%tl276553276595%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276551276588%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl276553276595%_))
                              (let ((_g282565_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl276553276595%_
                                        '0))))
                                (begin
                                  (let ((_g282566_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g282565_)
                                               (##values-length _g282565_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g282566_ 2)))
                                        (error "Context expects 2 values"
                                               _g282566_)))
                                  (let ((_%$%target276554276598%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282565_ 0)))
                                        (_%$%tl276556276601%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282565_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl276556276601%_))
                                        (letrec ((_%$%loop276557276604%_
                                                  (lambda (_%$%hd276555276608%_
                                                           _%$%symbol276561276611%_
                                                           _%$%method276562276612%_
                                                           _%$%type-t276563276613%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd276555276608%_))
                                                        (let ((_%$%e276558276615%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd276555276608%_))))
                  (let ((_%$%lp-hd276559276619%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e276558276615%_)))
                        (_%$%lp-tl276560276622%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e276558276615%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd276559276619%_))
                        (let ((_%$%e276567276625%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd276559276619%_))))
                          (let ((_%$%hd276568276629%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e276567276625%_)))
                                (_%$%tl276569276632%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e276567276625%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl276569276632%_))
                                (let ((_%$%e276570276635%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl276569276632%_))))
                                  (let ((_%$%hd276571276639%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e276570276635%_)))
                                        (_%$%tl276572276642%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e276570276635%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl276572276642%_))
                                        (let ((_%$%e276573276645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl276572276642%_))))
                                          (let ((_%$%hd276574276649%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e276573276645%_)))
                                                (_%$%tl276575276652%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e276573276645%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl276575276652%_))
                                                (_%$%loop276557276604%_
                                                 _%$%lp-tl276560276622%_
                                                 (cons _%$%hd276574276649%_
                                                       _%$%symbol276561276611%_)
                                                 (cons _%$%hd276571276639%_
                                                       _%$%method276562276612%_)
                                                 (cons _%$%hd276568276629%_
                                                       _%$%type-t276563276613%_))
                                                (_%$%g276546276581%_
                                                 _%$%g276547276585%_))))
                                        (_%$%g276546276581%_
                                         _%$%g276547276585%_))))
                                (_%$%g276546276581%_ _%$%g276547276585%_))))
                        (_%$%g276546276581%_ _%$%g276547276585%_))))
                (let ((_%$%symbol276564276655%_
                       (reverse _%$%symbol276561276611%_))
                      (_%$%method276565276657%_
                       (reverse _%$%method276562276612%_))
                      (_%$%type-t276566276658%_
                       (reverse _%$%type-t276563276613%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%symbol276564276655%_
                             _%$%method276565276657%_
                             _%$%type-t276566276658%_))
                          (let ((__tmp282567
                                 (lambda (_%$%g276679276684%_
                                          _%$%g276680276687%_
                                          _%$%g276681276689%_
                                          _%$%g276682276691%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-method))
                                               (cons _%$%g276681276689%_
                                                     (cons _%$%g276680276687%_
                                                           (cons _%$%g276679276684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%$%g276682276691%_))))
                            (declare (not safe))
                            (__foldr*
                             __tmp282567
                             '()
                             _%$%symbol276564276655%_
                             _%$%method276565276657%_
                             _%$%type-t276566276658%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop276557276604%_
                                           _%$%target276554276598%_
                                           '()
                                           '()
                                           '()))
                                        (_%$%g276546276581%_
                                         _%$%g276547276585%_)))))
                              (_%$%g276546276581%_ _%$%g276547276585%_))))
                      (_%$%g276546276581%_ _%$%g276547276585%_)))))
          (_%$%g276545276694%_ _%$stx276542%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx276699%_)
        (let* ((_%$%g276703276736%_
                (lambda (_%$%g276704276732%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276704276732%_))))
               (_%$%g276702276846%_
                (lambda (_%$%g276704276740%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276704276740%_))
                      (let ((_%$%e276708276743%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276704276740%_))))
                        (let ((_%$%hd276709276747%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276708276743%_)))
                              (_%$%tl276710276750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276708276743%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276710276750%_))
                              (let ((_%$%e276711276753%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276710276750%_))))
                                (let ((_%$%hd276712276757%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276711276753%_)))
                                      (_%$%tl276713276760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276711276753%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl276713276760%_))
                                      (let ((_g282568_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl276713276760%_
                                                '0))))
                                        (begin
                                          (let ((_g282569_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g282568_)
                                                       (##values-length
                                                        _g282568_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g282569_ 2)))
                                                (error "Context expects 2 values"
                                                       _g282569_)))
                                          (let ((_%$%target276714276763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g282568_ 0)))
                                                (_%$%tl276716276766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g282568_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl276716276766%_))
                                                (letrec ((_%$%loop276717276769%_
                                                          (lambda (_%$%hd276715276773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%symbol276721276776%_
                           _%$%method276722276777%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd276715276773%_))
                        (let ((_%$%e276718276779%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd276715276773%_))))
                          (let ((_%$%lp-hd276719276783%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e276718276779%_)))
                                (_%$%lp-tl276720276786%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e276718276779%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd276719276783%_))
                                (let ((_%$%e276725276789%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e
                                          _%$%lp-hd276719276783%_))))
                                  (let ((_%$%hd276726276793%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e276725276789%_)))
                                        (_%$%tl276727276796%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e276725276789%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl276727276796%_))
                                        (let ((_%$%e276728276799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl276727276796%_))))
                                          (let ((_%$%hd276729276803%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e276728276799%_)))
                                                (_%$%tl276730276806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e276728276799%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl276730276806%_))
                                                (_%$%loop276717276769%_
                                                 _%$%lp-tl276720276786%_
                                                 (cons _%$%hd276729276803%_
                                                       _%$%symbol276721276776%_)
                                                 (cons _%$%hd276726276793%_
                                                       _%$%method276722276777%_))
                                                (_%$%g276703276736%_
                                                 _%$%g276704276740%_))))
                                        (_%$%g276703276736%_
                                         _%$%g276704276740%_))))
                                (_%$%g276703276736%_ _%$%g276704276740%_))))
                        (let ((_%$%symbol276723276809%_
                               (reverse _%$%symbol276721276776%_))
                              (_%$%method276724276811%_
                               (reverse _%$%method276722276777%_)))
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'begin))
                                (begin
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-check-splice-targets
                                     _%$%symbol276723276809%_
                                     _%$%method276724276811%_))
                                  (let ((__tmp282570
                                         (lambda (_%$%g276834276838%_
                                                  _%$%g276835276841%_
                                                  _%$%g276836276843%_)
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method))
                                                       (cons _%$%hd276712276757%_
                                                             (cons _%$%g276835276841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g276834276838%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%g276836276843%_))))
                                    (declare (not safe))
                                    (foldr__1
                                     __tmp282570
                                     '()
                                     _%$%symbol276723276809%_
                                     _%$%method276724276811%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop276717276769%_
                                                   _%$%target276714276763%_
                                                   '()
                                                   '()))
                                                (_%$%g276703276736%_
                                                 _%$%g276704276740%_)))))
                                      (_%$%g276703276736%_
                                       _%$%g276704276740%_))))
                              (_%$%g276703276736%_ _%$%g276704276740%_))))
                      (_%$%g276703276736%_ _%$%g276704276740%_)))))
          (_%$%g276702276846%_ _%$stx276699%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx276851%_)
        (let* ((_%$%g276855276869%_
                (lambda (_%$%g276856276865%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276856276865%_))))
               (_%$%g276854276910%_
                (lambda (_%$%g276856276873%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276856276873%_))
                      (let ((_%$%e276858276876%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276856276873%_))))
                        (let ((_%$%hd276859276880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276858276876%_)))
                              (_%$%tl276860276883%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276858276876%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276860276883%_))
                              (let ((_%$%e276861276886%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276860276883%_))))
                                (let ((_%$%hd276862276890%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276861276886%_)))
                                      (_%$%tl276863276893%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276861276886%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl276863276893%_))
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
                                                        (cons _%$%hd276862276890%_
                                                              '()))
                                                  '()))
                                      (_%$%g276855276869%_
                                       _%$%g276856276873%_))))
                              (_%$%g276855276869%_ _%$%g276856276873%_))))
                      (_%$%g276855276869%_ _%$%g276856276873%_)))))
          (_%$%g276854276910%_ _%$stx276851%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx276914%_)
        (let* ((_%$%g276918276972%_
                (lambda (_%$%g276919276968%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276919276968%_))))
               (_%$%g276917277153%_
                (lambda (_%$%g276919276976%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276919276976%_))
                      (let ((_%$%e276931276979%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276919276976%_))))
                        (let ((_%$%hd276932276983%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276931276979%_)))
                              (_%$%tl276933276986%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276931276979%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276933276986%_))
                              (let ((_%$%e276934276989%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276933276986%_))))
                                (let ((_%$%hd276935276993%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276934276989%_)))
                                      (_%$%tl276936276996%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276934276989%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl276936276996%_))
                                      (let ((_%$%e276937276999%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl276936276996%_))))
                                        (let ((_%$%hd276938277003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276937276999%_)))
                                              (_%$%tl276939277006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276937276999%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl276939277006%_))
                                              (let ((_%$%e276940277009%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl276939277006%_))))
                                                (let ((_%$%hd276941277013%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e276940277009%_)))
                                                      (_%$%tl276942277016%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e276940277009%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl276942277016%_))
                                                      (let ((_%$%e276943277019%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl276942277016%_))))
                (let ((_%$%hd276944277023%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e276943277019%_)))
                      (_%$%tl276945277026%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e276943277019%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl276945277026%_))
                      (let ((_%$%e276946277029%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl276945277026%_))))
                        (let ((_%$%hd276947277033%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276946277029%_)))
                              (_%$%tl276948277036%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276946277029%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276948277036%_))
                              (let ((_%$%e276949277039%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276948277036%_))))
                                (let ((_%$%hd276950277043%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276949277039%_)))
                                      (_%$%tl276951277046%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276949277039%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl276951277046%_))
                                      (let ((_%$%e276952277049%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl276951277046%_))))
                                        (let ((_%$%hd276953277053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276952277049%_)))
                                              (_%$%tl276954277056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276952277049%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl276954277056%_))
                                              (let ((_%$%e276955277059%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl276954277056%_))))
                                                (let ((_%$%hd276956277063%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e276955277059%_)))
                                                      (_%$%tl276957277066%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e276955277059%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl276957277066%_))
                                                      (let ((_%$%e276958277069%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl276957277066%_))))
                (let ((_%$%hd276959277073%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e276958277069%_)))
                      (_%$%tl276960277076%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e276958277069%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl276960277076%_))
                      (let ((_%$%e276961277079%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl276960277076%_))))
                        (let ((_%$%hd276962277083%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276961277079%_)))
                              (_%$%tl276963277086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276961277079%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276963277086%_))
                              (let ((_%$%e276964277089%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276963277086%_))))
                                (let ((_%$%hd276965277093%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276964277089%_)))
                                      (_%$%tl276966277096%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276964277089%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl276966277096%_))
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
                                                        (cons _%$%hd276935276993%_
                                                              '()))
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'quote))
                      (cons _%$%hd276938277003%_ '()))
                (cons (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd276941277013%_ '()))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%$%hd276944277023%_ '()))
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote))
                                        (cons _%$%hd276947277033%_ '()))
                                  (cons (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote))
                                              (cons _%$%hd276950277043%_ '()))
                                        (cons _%$%hd276953277053%_
                                              (cons _%$%hd276956277063%_
                                                    (cons _%$%hd276959277073%_
                                                          (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd276962277083%_ '()))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd276965277093%_ '()))
                              '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g276918276972%_
                                       _%$%g276919276976%_))))
                              (_%$%g276918276972%_ _%$%g276919276976%_))))
                      (_%$%g276918276972%_ _%$%g276919276976%_))))
              (_%$%g276918276972%_ _%$%g276919276976%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g276918276972%_
                                               _%$%g276919276976%_))))
                                      (_%$%g276918276972%_
                                       _%$%g276919276976%_))))
                              (_%$%g276918276972%_ _%$%g276919276976%_))))
                      (_%$%g276918276972%_ _%$%g276919276976%_))))
              (_%$%g276918276972%_ _%$%g276919276976%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g276918276972%_
                                               _%$%g276919276976%_))))
                                      (_%$%g276918276972%_
                                       _%$%g276919276976%_))))
                              (_%$%g276918276972%_ _%$%g276919276976%_))))
                      (_%$%g276918276972%_ _%$%g276919276976%_)))))
          (_%$%g276917277153%_ _%$stx276914%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx277157%_)
        (let* ((_%$%g277161277175%_
                (lambda (_%$%g277162277171%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277162277171%_))))
               (_%$%g277160277216%_
                (lambda (_%$%g277162277179%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277162277179%_))
                      (let ((_%$%e277164277182%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277162277179%_))))
                        (let ((_%$%hd277165277186%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277164277182%_)))
                              (_%$%tl277166277189%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277164277182%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277166277189%_))
                              (let ((_%$%e277167277192%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277166277189%_))))
                                (let ((_%$%hd277168277196%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277167277192%_)))
                                      (_%$%tl277169277199%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277167277192%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl277169277199%_))
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
                                                        (cons _%$%hd277168277196%_
                                                              '()))
                                                  '()))
                                      (_%$%g277161277175%_
                                       _%$%g277162277179%_))))
                              (_%$%g277161277175%_ _%$%g277162277179%_))))
                      (_%$%g277161277175%_ _%$%g277162277179%_)))))
          (_%$%g277160277216%_ _%$stx277157%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx277220%_)
        (let* ((_%$%g277224277238%_
                (lambda (_%$%g277225277234%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277225277234%_))))
               (_%$%g277223277279%_
                (lambda (_%$%g277225277242%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277225277242%_))
                      (let ((_%$%e277227277245%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277225277242%_))))
                        (let ((_%$%hd277228277249%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277227277245%_)))
                              (_%$%tl277229277252%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277227277245%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277229277252%_))
                              (let ((_%$%e277230277255%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277229277252%_))))
                                (let ((_%$%hd277231277259%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277230277255%_)))
                                      (_%$%tl277232277262%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277230277255%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl277232277262%_))
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
                                                        (cons _%$%hd277231277259%_
                                                              '()))
                                                  '()))
                                      (_%$%g277224277238%_
                                       _%$%g277225277242%_))))
                              (_%$%g277224277238%_ _%$%g277225277242%_))))
                      (_%$%g277224277238%_ _%$%g277225277242%_)))))
          (_%$%g277223277279%_ _%$stx277220%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx277283%_)
        (let* ((_%$%g277287277309%_
                (lambda (_%$%g277288277305%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277288277305%_))))
               (_%$%g277286277378%_
                (lambda (_%$%g277288277313%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277288277313%_))
                      (let ((_%$%e277292277316%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277288277313%_))))
                        (let ((_%$%hd277293277320%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277292277316%_)))
                              (_%$%tl277294277323%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277292277316%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277294277323%_))
                              (let ((_%$%e277295277326%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277294277323%_))))
                                (let ((_%$%hd277296277330%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277295277326%_)))
                                      (_%$%tl277297277333%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277295277326%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl277297277333%_))
                                      (let ((_%$%e277298277336%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl277297277333%_))))
                                        (let ((_%$%hd277299277340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e277298277336%_)))
                                              (_%$%tl277300277343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e277298277336%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl277300277343%_))
                                              (let ((_%$%e277301277346%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl277300277343%_))))
                                                (let ((_%$%hd277302277350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e277301277346%_)))
                                                      (_%$%tl277303277353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e277301277346%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl277303277353%_))
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
                                (cons _%$%hd277296277330%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd277299277340%_ '()))
                                (cons _%$%hd277302277350%_ '()))))
              (_%$%g277287277309%_ _%$%g277288277313%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g277287277309%_
                                               _%$%g277288277313%_))))
                                      (_%$%g277287277309%_
                                       _%$%g277288277313%_))))
                              (_%$%g277287277309%_ _%$%g277288277313%_))))
                      (_%$%g277287277309%_ _%$%g277288277313%_)))))
          (_%$%g277286277378%_ _%$stx277283%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx277382%_)
        (let* ((_%$%g277386277408%_
                (lambda (_%$%g277387277404%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277387277404%_))))
               (_%$%g277385277477%_
                (lambda (_%$%g277387277412%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277387277412%_))
                      (let ((_%$%e277391277415%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277387277412%_))))
                        (let ((_%$%hd277392277419%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277391277415%_)))
                              (_%$%tl277393277422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277391277415%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277393277422%_))
                              (let ((_%$%e277394277425%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277393277422%_))))
                                (let ((_%$%hd277395277429%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277394277425%_)))
                                      (_%$%tl277396277432%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277394277425%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl277396277432%_))
                                      (let ((_%$%e277397277435%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl277396277432%_))))
                                        (let ((_%$%hd277398277439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e277397277435%_)))
                                              (_%$%tl277399277442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e277397277435%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl277399277442%_))
                                              (let ((_%$%e277400277445%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl277399277442%_))))
                                                (let ((_%$%hd277401277449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e277400277445%_)))
                                                      (_%$%tl277402277452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e277400277445%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl277402277452%_))
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
                                (cons _%$%hd277395277429%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd277398277439%_ '()))
                                (cons _%$%hd277401277449%_ '()))))
              (_%$%g277386277408%_ _%$%g277387277412%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g277386277408%_
                                               _%$%g277387277412%_))))
                                      (_%$%g277386277408%_
                                       _%$%g277387277412%_))))
                              (_%$%g277386277408%_ _%$%g277387277412%_))))
                      (_%$%g277386277408%_ _%$%g277387277412%_)))))
          (_%$%g277385277477%_ _%$stx277382%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx277481%_)
        (let* ((_%$%g277485277499%_
                (lambda (_%$%g277486277495%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277486277495%_))))
               (_%$%g277484277540%_
                (lambda (_%$%g277486277503%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277486277503%_))
                      (let ((_%$%e277488277506%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277486277503%_))))
                        (let ((_%$%hd277489277510%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277488277506%_)))
                              (_%$%tl277490277513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277488277506%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277490277513%_))
                              (let ((_%$%e277491277516%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277490277513%_))))
                                (let ((_%$%hd277492277520%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277491277516%_)))
                                      (_%$%tl277493277523%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277491277516%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl277493277523%_))
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
                                                        (cons _%$%hd277492277520%_
                                                              '()))
                                                  '()))
                                      (_%$%g277485277499%_
                                       _%$%g277486277503%_))))
                              (_%$%g277485277499%_ _%$%g277486277503%_))))
                      (_%$%g277485277499%_ _%$%g277486277503%_)))))
          (_%$%g277484277540%_ _%$stx277481%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx277544%_)
        (let* ((_%$%g277548277566%_
                (lambda (_%$%g277549277562%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277549277562%_))))
               (_%$%g277547277621%_
                (lambda (_%$%g277549277570%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277549277570%_))
                      (let ((_%$%e277552277573%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277549277570%_))))
                        (let ((_%$%hd277553277577%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277552277573%_)))
                              (_%$%tl277554277580%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277552277573%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277554277580%_))
                              (let ((_%$%e277555277583%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277554277580%_))))
                                (let ((_%$%hd277556277587%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277555277583%_)))
                                      (_%$%tl277557277590%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277555277583%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl277557277590%_))
                                      (let ((_%$%e277558277593%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl277557277590%_))))
                                        (let ((_%$%hd277559277597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e277558277593%_)))
                                              (_%$%tl277560277600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e277558277593%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl277560277600%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!interface))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd277556277587%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd277559277597%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g277548277566%_
                                               _%$%g277549277570%_))))
                                      (_%$%g277548277566%_
                                       _%$%g277549277570%_))))
                              (_%$%g277548277566%_ _%$%g277549277570%_))))
                      (_%$%g277548277566%_ _%$%g277549277570%_)))))
          (_%$%g277547277621%_ _%$stx277544%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx277625%_)
        (let* ((_%__stx281941281942%_ _%$stx277625%_)
               (_%$%g277632277693%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx281941281942%_)))))
          (let ((_%__kont281944281945%_
                 (lambda (_%$%g277634277931%_ _%$%g277635277933%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g277635277933%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g277634277931%_ '()))
                                     '())))))
                (_%__kont281946281947%_
                 (lambda (_%$%g277645277870%_
                          _%$%g277646277872%_
                          _%$%g277647277873%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g277647277873%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g277646277872%_ '()))
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
                                 (cons _%$%g277645277870%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont281948281949%_
                 (lambda (_%$%g277664277794%_ _%$%g277665277796%_)
                   (cons _%$%g277665277796%_
                         (cons _%$%g277664277794%_ (cons '#f '())))))
                (_%__kont281950281951%_
                 (lambda (_%$%g277672277744%_
                          _%$%g277673277746%_
                          _%$%g277674277747%_)
                   (cons _%$%g277674277747%_
                         (cons _%$%g277673277746%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%$%g277672277744%_
                                                 '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx281941281942%_))
                (let ((_%$%e277636277901%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx281941281942%_))))
                  (let ((_%$%tl277638277908%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e277636277901%_)))
                        (_%$%hd277637277905%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e277636277901%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl277638277908%_))
                        (let ((_%$%e277639277911%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl277638277908%_))))
                          (let ((_%$%tl277641277918%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e277639277911%_)))
                                (_%$%hd277640277915%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e277639277911%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl277641277918%_))
                                (let ((_%$%e277642277921%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl277641277918%_))))
                                  (let ((_%$%tl277644277928%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e277642277921%_)))
                                        (_%$%hd277643277925%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e277642277921%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl277644277928%_))
                                        (_%__kont281944281945%_
                                         _%$%hd277643277925%_
                                         _%$%hd277640277915%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl277644277928%_))
                                            (let ((_%$%e277657277846%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl277644277928%_))))
                                              (let ((_%$%tl277659277853%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e277657277846%_)))
                                                    (_%$%hd277658277850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e277657277846%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd277658277850%_))
                                                    (let ((_%$%e277660277856%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd277658277850%_))))
                                                      (if (equal? _%$%e277660277856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl277659277853%_))
                      (let ((_%$%e277661277860%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl277659277853%_))))
                        (let ((_%$%tl277663277867%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277661277860%_)))
                              (_%$%hd277662277864%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277661277860%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl277663277867%_))
                              (_%__kont281946281947%_
                               _%$%hd277662277864%_
                               _%$%hd277643277925%_
                               _%$%hd277640277915%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%$%hd277643277925%_))
                                  (let ((_%$%e277684277730%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd277643277925%_))))
                                    (declare (not safe))
                                    (_%$%g277632277693%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g277632277693%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd277643277925%_))
                          (let ((_%$%e277684277730%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd277643277925%_))))
                            (if (equal? _%$%e277684277730%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl277659277853%_))
                                    (_%__kont281950281951%_
                                     _%$%hd277658277850%_
                                     _%$%hd277640277915%_
                                     _%$%hd277637277905%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g277632277693%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g277632277693%_))))
                          (let () (declare (not safe)) (_%$%g277632277693%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd277643277925%_))
                      (let ((_%$%e277684277730%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd277643277925%_))))
                        (if (equal? _%$%e277684277730%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl277659277853%_))
                                (_%__kont281950281951%_
                                 _%$%hd277658277850%_
                                 _%$%hd277640277915%_
                                 _%$%hd277637277905%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g277632277693%_)))
                            (let ()
                              (declare (not safe))
                              (_%$%g277632277693%_))))
                      (let () (declare (not safe)) (_%$%g277632277693%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%$%hd277643277925%_))
                                                        (let ((_%$%e277684277730%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd277643277925%_))))
                  (if (equal? _%$%e277684277730%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl277659277853%_))
                          (_%__kont281950281951%_
                           _%$%hd277658277850%_
                           _%$%hd277640277915%_
                           _%$%hd277637277905%_)
                          (let () (declare (not safe)) (_%$%g277632277693%_)))
                      (let () (declare (not safe)) (_%$%g277632277693%_))))
                (let () (declare (not safe)) (_%$%g277632277693%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%$%hd277643277925%_))
                                                (let ((_%$%e277684277730%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd277643277925%_))))
                                                  (declare (not safe))
                                                  (_%$%g277632277693%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g277632277693%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl277641277918%_))
                                    (_%__kont281948281949%_
                                     _%$%hd277640277915%_
                                     _%$%hd277637277905%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g277632277693%_))))))
                        (let () (declare (not safe)) (_%$%g277632277693%_)))))
                (let () (declare (not safe)) (_%$%g277632277693%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx277952%_)
        (let* ((_%$%g277956277985%_
                (lambda (_%$%g277957277981%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277957277981%_))))
               (_%$%g277955278090%_
                (lambda (_%$%g277957277989%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277957277989%_))
                      (let ((_%$%e277959277992%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277957277989%_))))
                        (let ((_%$%hd277960277996%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277959277992%_)))
                              (_%$%tl277961277999%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277959277992%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl277961277999%_))
                              (let ((_g282571_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl277961277999%_
                                        '0))))
                                (begin
                                  (let ((_g282572_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g282571_)
                                               (##values-length _g282571_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g282572_ 2)))
                                        (error "Context expects 2 values"
                                               _g282572_)))
                                  (let ((_%$%target277962278002%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282571_ 0)))
                                        (_%$%tl277964278005%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282571_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl277964278005%_))
                                        (letrec ((_%$%loop277965278008%_
                                                  (lambda (_%$%hd277963278012%_
                                                           _%$%clause277969278015%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd277963278012%_))
                                                        (let ((_%$%e277966278017%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd277963278012%_))))
                  (let ((_%$%lp-hd277967278021%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e277966278017%_)))
                        (_%$%lp-tl277968278024%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e277966278017%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%lp-hd277967278021%_))
                        (let ((_g282573_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%$%lp-hd277967278021%_
                                  '0))))
                          (begin
                            (let ((_g282574_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g282573_)
                                         (##values-length _g282573_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g282574_ 2)))
                                  (error "Context expects 2 values"
                                         _g282574_)))
                            (let ((_%$%target277971278027%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g282573_ 0)))
                                  (_%$%tl277973278030%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g282573_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl277973278030%_))
                                  (letrec ((_%$%loop277974278033%_
                                            (lambda (_%$%hd277972278037%_
                                                     _%$%clause277978278040%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd277972278037%_))
                                                  (let ((_%$%e277975278042%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd277972278037%_))))
                                                    (let ((_%$%lp-hd277976278046%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e277975278042%_)))
                                                          (_%$%lp-tl277977278049%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e277975278042%_))))
                                                      (_%$%loop277974278033%_
                                                       _%$%lp-tl277977278049%_
                                                       (cons _%$%lp-hd277976278046%_
                                                             _%$%clause277978278040%_))))
                                                  (let ((_%$%clause277979278052%_
                                                         (reverse _%$%clause277978278040%_)))
                                                    (_%$%loop277965278008%_
                                                     _%$%lp-tl277968278024%_
                                                     (cons _%$%clause277979278052%_
                                                           _%$%clause277969278015%_)))))))
                                    (_%$%loop277974278033%_
                                     _%$%target277971278027%_
                                     '()))
                                  (_%$%g277956277985%_ _%$%g277957277989%_)))))
                        (_%$%g277956277985%_ _%$%g277957277989%_))))
                (let ((_%$%clause277970278055%_
                       (reverse _%$%clause277969278015%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f '@list))
                                    (let ((__tmp282575
                                           (lambda (_%$%g278073278078%_
                                                    _%$%g278074278081%_)
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '@lambda))
                                                         (let ((__tmp282576
                                                                (lambda (_%$%g278075278084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g278076278087%_)
                          (cons _%$%g278075278084%_ _%$%g278076278087%_))))
                   (declare (not safe))
                   (foldr__0 __tmp282576 '() _%$%g278073278078%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%g278074278081%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp282575
                                       '()
                                       _%$%clause277970278055%_)))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop277965278008%_
                                           _%$%target277962278002%_
                                           '()))
                                        (_%$%g277956277985%_
                                         _%$%g277957277989%_)))))
                              (_%$%g277956277985%_ _%$%g277957277989%_))))
                      (_%$%g277956277985%_ _%$%g277957277989%_)))))
          (_%$%g277955278090%_ _%$stx277952%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx278096%_)
        (let* ((_%$%g278100278118%_
                (lambda (_%$%g278101278114%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278101278114%_))))
               (_%$%g278099278173%_
                (lambda (_%$%g278101278122%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278101278122%_))
                      (let ((_%$%e278104278125%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278101278122%_))))
                        (let ((_%$%hd278105278129%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278104278125%_)))
                              (_%$%tl278106278132%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278104278125%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278106278132%_))
                              (let ((_%$%e278107278135%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278106278132%_))))
                                (let ((_%$%hd278108278139%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278107278135%_)))
                                      (_%$%tl278109278142%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278107278135%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl278109278142%_))
                                      (let ((_%$%e278110278145%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl278109278142%_))))
                                        (let ((_%$%hd278111278149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278110278145%_)))
                                              (_%$%tl278112278152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278110278145%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl278112278152%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd278108278139%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd278111278149%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g278100278118%_
                                               _%$%g278101278122%_))))
                                      (_%$%g278100278118%_
                                       _%$%g278101278122%_))))
                              (_%$%g278100278118%_ _%$%g278101278122%_))))
                      (_%$%g278100278118%_ _%$%g278101278122%_)))))
          (_%$%g278099278173%_ _%$stx278096%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx278177%_)
        (let* ((_%$%g278181278199%_
                (lambda (_%$%g278182278195%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278182278195%_))))
               (_%$%g278180278254%_
                (lambda (_%$%g278182278203%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278182278203%_))
                      (let ((_%$%e278185278206%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278182278203%_))))
                        (let ((_%$%hd278186278210%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278185278206%_)))
                              (_%$%tl278187278213%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278185278206%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278187278213%_))
                              (let ((_%$%e278188278216%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278187278213%_))))
                                (let ((_%$%hd278189278220%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278188278216%_)))
                                      (_%$%tl278190278223%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278188278216%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl278190278223%_))
                                      (let ((_%$%e278191278226%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl278190278223%_))))
                                        (let ((_%$%hd278192278230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278191278226%_)))
                                              (_%$%tl278193278233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278191278226%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl278193278233%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda-primary))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd278189278220%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd278192278230%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g278181278199%_
                                               _%$%g278182278203%_))))
                                      (_%$%g278181278199%_
                                       _%$%g278182278203%_))))
                              (_%$%g278181278199%_ _%$%g278182278203%_))))
                      (_%$%g278181278199%_ _%$%g278182278203%_)))))
          (_%$%g278180278254%_ _%$stx278177%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx278258%_)
        (let* ((_%$%g278262278291%_
                (lambda (_%$%g278263278287%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278263278287%_))))
               (_%$%g278261278387%_
                (lambda (_%$%g278263278295%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278263278295%_))
                      (let ((_%$%e278266278298%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278263278295%_))))
                        (let ((_%$%hd278267278302%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278266278298%_)))
                              (_%$%tl278268278305%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278266278298%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl278268278305%_))
                              (let ((_g282577_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl278268278305%_
                                        '0))))
                                (begin
                                  (let ((_g282578_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g282577_)
                                               (##values-length _g282577_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g282578_ 2)))
                                        (error "Context expects 2 values"
                                               _g282578_)))
                                  (let ((_%$%target278269278308%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282577_ 0)))
                                        (_%$%tl278271278311%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282577_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl278271278311%_))
                                        (letrec ((_%$%loop278272278314%_
                                                  (lambda (_%$%hd278270278318%_
                                                           _%$%rule278276278321%_
                                                           _%$%proc278277278322%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd278270278318%_))
                                                        (let ((_%$%e278273278324%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd278270278318%_))))
                  (let ((_%$%lp-hd278274278328%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e278273278324%_)))
                        (_%$%lp-tl278275278331%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e278273278324%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd278274278328%_))
                        (let ((_%$%e278280278334%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd278274278328%_))))
                          (let ((_%$%hd278281278338%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e278280278334%_)))
                                (_%$%tl278282278341%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e278280278334%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl278282278341%_))
                                (let ((_%$%e278283278344%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl278282278341%_))))
                                  (let ((_%$%hd278284278348%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e278283278344%_)))
                                        (_%$%tl278285278351%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e278283278344%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl278285278351%_))
                                        (_%$%loop278272278314%_
                                         _%$%lp-tl278275278331%_
                                         (cons _%$%hd278284278348%_
                                               _%$%rule278276278321%_)
                                         (cons _%$%hd278281278338%_
                                               _%$%proc278277278322%_))
                                        (_%$%g278262278291%_
                                         _%$%g278263278295%_))))
                                (_%$%g278262278291%_ _%$%g278263278295%_))))
                        (_%$%g278262278291%_ _%$%g278263278295%_))))
                (let ((_%$%rule278278278354%_ (reverse _%$%rule278276278321%_))
                      (_%$%proc278279278356%_
                       (reverse _%$%proc278277278322%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%rule278278278354%_
                             _%$%proc278279278356%_))
                          (let ((__tmp282579
                                 (lambda (_%$%g278375278379%_
                                          _%$%g278376278382%_
                                          _%$%g278377278384%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-inline-rule!))
                                               (cons _%$%g278376278382%_
                                                     (cons _%$%g278375278379%_
                                                           '())))
                                         _%$%g278377278384%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp282579
                             '()
                             _%$%rule278278278354%_
                             _%$%proc278279278356%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop278272278314%_
                                           _%$%target278269278308%_
                                           '()
                                           '()))
                                        (_%$%g278262278291%_
                                         _%$%g278263278295%_)))))
                              (_%$%g278262278291%_ _%$%g278263278295%_))))
                      (_%$%g278262278291%_ _%$%g278263278295%_)))))
          (_%$%g278261278387%_ _%$stx278258%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx278392%_)
        (let* ((_%$%g278396278414%_
                (lambda (_%$%g278397278410%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278397278410%_))))
               (_%$%g278395278469%_
                (lambda (_%$%g278397278418%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278397278418%_))
                      (let ((_%$%e278400278421%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278397278418%_))))
                        (let ((_%$%hd278401278425%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278400278421%_)))
                              (_%$%tl278402278428%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278400278421%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278402278428%_))
                              (let ((_%$%e278403278431%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278402278428%_))))
                                (let ((_%$%hd278404278435%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278403278431%_)))
                                      (_%$%tl278405278438%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278403278431%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl278405278438%_))
                                      (let ((_%$%e278406278441%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl278405278438%_))))
                                        (let ((_%$%hd278407278445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278406278441%_)))
                                              (_%$%tl278408278448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278406278441%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl278408278448%_))
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
                                                (cons _%$%hd278404278435%_
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
              (cons _%$%hd278407278445%_ '())))
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
                                (cons _%$%hd278404278435%_ '()))
                          (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g278396278414%_
                                               _%$%g278397278418%_))))
                                      (_%$%g278396278414%_
                                       _%$%g278397278418%_))))
                              (_%$%g278396278414%_ _%$%g278397278418%_))))
                      (_%$%g278396278414%_ _%$%g278397278418%_)))))
          (_%$%g278395278469%_ _%$stx278392%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx278473%_)
        (let* ((_%__stx282059282060%_ _%$stx278473%_)
               (_%$%g278478278503%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx282059282060%_)))))
          (let ((_%__kont282062282063%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont282064282065%_
                 (lambda (_%$%g278483278550%_
                          _%$%g278484278552%_
                          _%$%g278485278553%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%$%g278485278553%_
                                           (cons _%$%g278484278552%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%$%g278483278550%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx282059282060%_))
                (let ((_%$%e278480278579%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx282059282060%_))))
                  (let ((_%$%tl278482278586%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e278480278579%_)))
                        (_%$%hd278481278583%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e278480278579%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl278482278586%_))
                        (_%__kont282062282063%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl278482278586%_))
                            (let ((_%$%e278489278520%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl278482278586%_))))
                              (let ((_%$%tl278491278527%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e278489278520%_)))
                                    (_%$%hd278490278524%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e278489278520%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd278490278524%_))
                                    (let ((_%$%e278492278530%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd278490278524%_))))
                                      (let ((_%$%tl278494278537%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e278492278530%_)))
                                            (_%$%hd278493278534%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e278492278530%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl278494278537%_))
                                            (let ((_%$%e278495278540%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl278494278537%_))))
                                              (let ((_%$%tl278497278547%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e278495278540%_)))
                                                    (_%$%hd278496278544%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e278495278540%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl278497278547%_))
                                                    (_%__kont282064282065%_
                                                     _%$%tl278491278527%_
                                                     _%$%hd278496278544%_
                                                     _%$%hd278493278534%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g278478278503%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g278478278503%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g278478278503%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g278478278503%_))))))
                (let () (declare (not safe)) (_%$%g278478278503%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx278597%_)
        (let* ((_%__stx282103282104%_ _%$stx278597%_)
               (_%$%g278602278633%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx282103282104%_)))))
          (let ((_%__kont282106282107%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont282108282109%_
                 (lambda (_%$%g278607278698%_
                          _%$%g278608278700%_
                          _%$%g278609278701%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%$%g278609278701%_
                                           (let ((__tmp282580
                                                  (lambda (_%$%g278721278724%_
                                                           _%$%g278722278727%_)
                                                    (cons _%$%g278721278724%_
                                                          _%$%g278722278727%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp282580
                                              '()
                                              _%$%g278608278700%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%$%g278607278698%_)
                                     '()))))))
            (let ((_%__match282146282147%_
                   (lambda (_%$%e278610278640%_
                            _%$%hd278611278644%_
                            _%$%tl278612278647%_
                            _%$%e278613278650%_
                            _%$%hd278614278654%_
                            _%$%tl278615278657%_
                            _%$%e278616278660%_
                            _%$%hd278617278664%_
                            _%$%tl278618278667%_
                            _%__splice282110282111%_
                            _%$%target278619278670%_
                            _%$%tl278621278673%_)
                     (letrec ((_%$%loop278622278676%_
                               (lambda (_%$%hd278620278680%_
                                        _%$%sig278626278683%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd278620278680%_))
                                     (let ((_%$%e278623278685%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%hd278620278680%_))))
                                       (let ((_%$%lp-tl278625278692%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e278623278685%_)))
                                             (_%$%lp-hd278624278689%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e278623278685%_))))
                                         (_%$%loop278622278676%_
                                          _%$%lp-tl278625278692%_
                                          (cons _%$%lp-hd278624278689%_
                                                _%$%sig278626278683%_))))
                                     (let ((_%$%sig278627278695%_
                                            (reverse _%$%sig278626278683%_)))
                                       (_%__kont282108282109%_
                                        _%$%tl278615278657%_
                                        _%$%sig278627278695%_
                                        _%$%hd278617278664%_))))))
                       (_%$%loop278622278676%_
                        _%$%target278619278670%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx282103282104%_))
                  (let ((_%$%e278604278737%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx282103282104%_))))
                    (let ((_%$%tl278606278744%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e278604278737%_)))
                          (_%$%hd278605278741%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e278604278737%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl278606278744%_))
                          (_%__kont282106282107%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278606278744%_))
                              (let ((_%$%e278613278650%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278606278744%_))))
                                (let ((_%$%tl278615278657%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278613278650%_)))
                                      (_%$%hd278614278654%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278613278650%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd278614278654%_))
                                      (let ((_%$%e278616278660%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd278614278654%_))))
                                        (let ((_%$%tl278618278667%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278616278660%_)))
                                              (_%$%hd278617278664%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278616278660%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl278618278667%_))
                                              (let ((_%__splice282110282111%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl278618278667%_
                                                        '0))))
                                                (let ((_%$%tl278621278673%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice282110282111%_
                                                          '1)))
                                                      (_%$%target278619278670%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice282110282111%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl278621278673%_))
                                                      (_%__match282146282147%_
                                                       _%$%e278604278737%_
                                                       _%$%hd278605278741%_
                                                       _%$%tl278606278744%_
                                                       _%$%e278613278650%_
                                                       _%$%hd278614278654%_
                                                       _%$%tl278615278657%_
                                                       _%$%e278616278660%_
                                                       _%$%hd278617278664%_
                                                       _%$%tl278618278667%_
                                                       _%__splice282110282111%_
                                                       _%$%target278619278670%_
                                                       _%$%tl278621278673%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g278602278633%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g278602278633%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g278602278633%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g278602278633%_))))))
                  (let () (declare (not safe)) (_%$%g278602278633%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx278756%_)
        (let* ((_%__stx282149282150%_ _%$stx278756%_)
               (_%$%g278761278808%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx282149282150%_)))))
          (let ((_%__kont282152282153%_
                 (lambda (_%$%g278763278966%_ _%$%g278764278968%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%$%g278764278968%_
                               (let ((__tmp282581
                                      (lambda (_%$%g278988278991%_
                                               _%$%g278989278994%_)
                                        (cons _%$%g278988278991%_
                                              _%$%g278989278994%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp282581
                                  '()
                                  _%$%g278763278966%_))))))
                (_%__kont282156282157%_
                 (lambda (_%$%g278786278863%_ _%$%g278787278865%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%$%g278787278865%_
                               (let ((__tmp282582
                                      (lambda (_%$%g278882278885%_
                                               _%$%g278883278888%_)
                                        (cons _%$%g278882278885%_
                                              _%$%g278883278888%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp282582
                                  '()
                                  _%$%g278786278863%_)))))))
            (let* ((_%__match282216282217%_
                    (lambda (_%$%e278788278815%_
                             _%$%hd278789278819%_
                             _%$%tl278790278822%_
                             _%$%e278791278825%_
                             _%$%hd278792278829%_
                             _%$%tl278793278832%_
                             _%__splice282158282159%_
                             _%$%target278794278835%_
                             _%$%tl278796278838%_)
                      (letrec ((_%$%loop278797278841%_
                                (lambda (_%$%hd278795278845%_
                                         _%$%sig278801278848%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd278795278845%_))
                                      (let ((_%$%e278798278850%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd278795278845%_))))
                                        (let ((_%$%lp-tl278800278857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278798278850%_)))
                                              (_%$%lp-hd278799278854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278798278850%_))))
                                          (_%$%loop278797278841%_
                                           _%$%lp-tl278800278857%_
                                           (cons _%$%lp-hd278799278854%_
                                                 _%$%sig278801278848%_))))
                                      (let ((_%$%sig278802278860%_
                                             (reverse _%$%sig278801278848%_)))
                                        (_%__kont282156282157%_
                                         _%$%sig278802278860%_
                                         _%$%hd278792278829%_))))))
                        (_%$%loop278797278841%_
                         _%$%target278794278835%_
                         '()))))
                   (_%__match282208282209%_
                    (lambda (_%$%e278788278815%_
                             _%$%hd278789278819%_
                             _%$%tl278790278822%_
                             _%$%e278791278825%_
                             _%$%hd278792278829%_
                             _%$%tl278793278832%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl278793278832%_))
                          (let ((_%__splice282158282159%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl278793278832%_
                                    '0))))
                            (let ((_%$%tl278796278838%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice282158282159%_
                                      '1)))
                                  (_%$%target278794278835%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice282158282159%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl278796278838%_))
                                  (_%__match282216282217%_
                                   _%$%e278788278815%_
                                   _%$%hd278789278819%_
                                   _%$%tl278790278822%_
                                   _%$%e278791278825%_
                                   _%$%hd278792278829%_
                                   _%$%tl278793278832%_
                                   _%__splice282158282159%_
                                   _%$%target278794278835%_
                                   _%$%tl278796278838%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g278761278808%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g278761278808%_)))))
                   (_%__match282196282197%_
                    (lambda (_%$%e278765278898%_
                             _%$%hd278766278902%_
                             _%$%tl278767278905%_
                             _%$%e278768278908%_
                             _%$%hd278769278912%_
                             _%$%tl278770278915%_
                             _%$%e278771278918%_
                             _%$%hd278772278922%_
                             _%$%tl278773278925%_
                             _%$%e278774278928%_
                             _%$%hd278775278932%_
                             _%$%tl278776278935%_
                             _%__splice282154282155%_
                             _%$%target278777278938%_
                             _%$%tl278779278941%_)
                      (letrec ((_%$%loop278780278944%_
                                (lambda (_%$%hd278778278948%_
                                         _%$%sig278784278951%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd278778278948%_))
                                      (let ((_%$%e278781278953%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd278778278948%_))))
                                        (let ((_%$%lp-tl278783278960%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278781278953%_)))
                                              (_%$%lp-hd278782278957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278781278953%_))))
                                          (_%$%loop278780278944%_
                                           _%$%lp-tl278783278960%_
                                           (cons _%$%lp-hd278782278957%_
                                                 _%$%sig278784278951%_))))
                                      (let ((_%$%sig278785278963%_
                                             (reverse _%$%sig278784278951%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl278773278925%_))
                                            (_%__kont282152282153%_
                                             _%$%sig278785278963%_
                                             _%$%hd278769278912%_)
                                            (_%__match282208282209%_
                                             _%$%e278765278898%_
                                             _%$%hd278766278902%_
                                             _%$%tl278767278905%_
                                             _%$%e278768278908%_
                                             _%$%hd278769278912%_
                                             _%$%tl278770278915%_)))))))
                        (_%$%loop278780278944%_
                         _%$%target278777278938%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx282149282150%_))
                  (let ((_%$%e278765278898%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx282149282150%_))))
                    (let ((_%$%tl278767278905%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e278765278898%_)))
                          (_%$%hd278766278902%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e278765278898%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl278767278905%_))
                          (let ((_%$%e278768278908%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl278767278905%_))))
                            (let ((_%$%tl278770278915%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e278768278908%_)))
                                  (_%$%hd278769278912%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e278768278908%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl278770278915%_))
                                  (let ((_%$%e278771278918%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl278770278915%_))))
                                    (let ((_%$%tl278773278925%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e278771278918%_)))
                                          (_%$%hd278772278922%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e278771278918%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%hd278772278922%_))
                                          (let ((_%$%e278774278928%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%hd278772278922%_))))
                                            (let ((_%$%tl278776278935%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e278774278928%_)))
                                                  (_%$%hd278775278932%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e278774278928%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd278775278932%_))
                                                  (if (let ((__tmp282583
                                                             |gxc[1]#_g282584_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp282583
                                                         _%$%hd278775278932%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%$%tl278776278935%_))
                                                          (let ((_%__splice282154282155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl278776278935%_
                            '0))))
                    (let ((_%$%tl278779278941%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice282154282155%_ '1)))
                          (_%$%target278777278938%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice282154282155%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl278779278941%_))
                          (_%__match282196282197%_
                           _%$%e278765278898%_
                           _%$%hd278766278902%_
                           _%$%tl278767278905%_
                           _%$%e278768278908%_
                           _%$%hd278769278912%_
                           _%$%tl278770278915%_
                           _%$%e278771278918%_
                           _%$%hd278772278922%_
                           _%$%tl278773278925%_
                           _%$%e278774278928%_
                           _%$%hd278775278932%_
                           _%$%tl278776278935%_
                           _%__splice282154282155%_
                           _%$%target278777278938%_
                           _%$%tl278779278941%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl278770278915%_))
                              (let ((_%__splice282158282159%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%$%tl278770278915%_
                                        '0))))
                                (let ((_%$%tl278796278838%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice282158282159%_
                                          '1)))
                                      (_%$%target278794278835%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice282158282159%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl278796278838%_))
                                      (_%__match282216282217%_
                                       _%$%e278765278898%_
                                       _%$%hd278766278902%_
                                       _%$%tl278767278905%_
                                       _%$%e278768278908%_
                                       _%$%hd278769278912%_
                                       _%$%tl278770278915%_
                                       _%__splice282158282159%_
                                       _%$%target278794278835%_
                                       _%$%tl278796278838%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g278761278808%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g278761278808%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl278770278915%_))
                      (let ((_%__splice282158282159%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl278770278915%_
                                '0))))
                        (let ((_%$%tl278796278838%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice282158282159%_ '1)))
                              (_%$%target278794278835%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice282158282159%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl278796278838%_))
                              (_%__match282216282217%_
                               _%$%e278765278898%_
                               _%$%hd278766278902%_
                               _%$%tl278767278905%_
                               _%$%e278768278908%_
                               _%$%hd278769278912%_
                               _%$%tl278770278915%_
                               _%__splice282158282159%_
                               _%$%target278794278835%_
                               _%$%tl278796278838%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g278761278808%_)))))
                      (let () (declare (not safe)) (_%$%g278761278808%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl278770278915%_))
                  (let ((_%__splice282158282159%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl278770278915%_
                            '0))))
                    (let ((_%$%tl278796278838%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice282158282159%_ '1)))
                          (_%$%target278794278835%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice282158282159%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl278796278838%_))
                          (_%__match282216282217%_
                           _%$%e278765278898%_
                           _%$%hd278766278902%_
                           _%$%tl278767278905%_
                           _%$%e278768278908%_
                           _%$%hd278769278912%_
                           _%$%tl278770278915%_
                           _%__splice282158282159%_
                           _%$%target278794278835%_
                           _%$%tl278796278838%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g278761278808%_)))))
                  (let () (declare (not safe)) (_%$%g278761278808%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl278770278915%_))
                                                      (let ((_%__splice282158282159%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl278770278915%_
                        '0))))
                (let ((_%$%tl278796278838%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice282158282159%_ '1)))
                      (_%$%target278794278835%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice282158282159%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl278796278838%_))
                      (_%__match282216282217%_
                       _%$%e278765278898%_
                       _%$%hd278766278902%_
                       _%$%tl278767278905%_
                       _%$%e278768278908%_
                       _%$%hd278769278912%_
                       _%$%tl278770278915%_
                       _%__splice282158282159%_
                       _%$%target278794278835%_
                       _%$%tl278796278838%_)
                      (let () (declare (not safe)) (_%$%g278761278808%_)))))
              (let () (declare (not safe)) (_%$%g278761278808%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl278770278915%_))
                                              (let ((_%__splice282158282159%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl278770278915%_
                                                        '0))))
                                                (let ((_%$%tl278796278838%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice282158282159%_
                                                          '1)))
                                                      (_%$%target278794278835%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice282158282159%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl278796278838%_))
                                                      (_%__match282216282217%_
                                                       _%$%e278765278898%_
                                                       _%$%hd278766278902%_
                                                       _%$%tl278767278905%_
                                                       _%$%e278768278908%_
                                                       _%$%hd278769278912%_
                                                       _%$%tl278770278915%_
                                                       _%__splice282158282159%_
                                                       _%$%target278794278835%_
                                                       _%$%tl278796278838%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g278761278808%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g278761278808%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl278770278915%_))
                                      (let ((_%__splice282158282159%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl278770278915%_
                                                '0))))
                                        (let ((_%$%tl278796278838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice282158282159%_
                                                  '1)))
                                              (_%$%target278794278835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice282158282159%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl278796278838%_))
                                              (_%__match282216282217%_
                                               _%$%e278765278898%_
                                               _%$%hd278766278902%_
                                               _%$%tl278767278905%_
                                               _%$%e278768278908%_
                                               _%$%hd278769278912%_
                                               _%$%tl278770278915%_
                                               _%__splice282158282159%_
                                               _%$%target278794278835%_
                                               _%$%tl278796278838%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g278761278808%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g278761278808%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g278761278808%_)))))
                  (let () (declare (not safe)) (_%$%g278761278808%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx280151%_ _%id280153%_)
        (let ((_%proc280157%_
               (let ((__tmp282585
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id280153%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp282585))))
          (if (procedure? _%proc280157%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx280151%_
                 _%id280153%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx280142%_ _%id280144%_)
        (let ((_%klass280148%_
               (let ((__tmp282586
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id280144%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp282586))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass280148%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx280142%_
                 _%id280144%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx279392%_ _%proc279394%_ _%sig279395%_)
        (letrec ((_%signature-arity279397%_
                  (lambda (_%args280074%_)
                    (let _%loop280077%_ ((_%rest280080%_ _%args280074%_)
                                         (_%count280082%_ '0))
                      (let* ((_%$%rest280083280094%_ _%rest280080%_)
                             (_%$%E280087280100%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%rest280083280094%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%$%K280090280131%_
                               (lambda (_%rest280128%_)
                                 (_%loop280077%_
                                  _%rest280128%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count280082%_ '1)))))
                              (_%$%K280089280120%_ (lambda () _%count280082%_))
                              (_%$%K280088280108%_
                               (lambda () (cons _%count280082%_ '()))))
                          (let ((_%$%try-match280085280124%_
                                 (lambda ()
                                   (if (null? _%$%rest280083280094%_)
                                       (_%$%K280089280120%_)
                                       (_%$%K280088280108%_)))))
                            (if (pair? _%$%rest280083280094%_)
                                (let* ((_%$%tl280092280135%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest280083280094%_)))
                                       (_%rest280139%_ _%$%tl280092280135%_))
                                  (_%$%K280090280131%_ _%rest280139%_))
                                (_%$%try-match280085280124%_))))))))
                 (_%make-signature279399%_
                  (lambda (_%args279956%_
                           _%return279958%_
                           _%effect279959%_
                           _%unchecked279960%_)
                    (let ((__tmp282587
                           (lambda (_%$%g279961279963%_)
                             (|gxc[1]#verify-class!|
                              _%ctx279392%_
                              _%$%g279961279963%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp282587 _%args279956%_))
                    (|gxc[1]#verify-class!| _%ctx279392%_ _%return279958%_)
                    (if _%unchecked279960%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx279392%_
                         _%unchecked279960%_)
                        '#!void)
                    (let ((_%arity279967%_
                           (_%signature-arity279397%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args279956%_)))))
                      (if _%effect279959%_
                          (let ((_%effect279970%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect279959%_))))
                            (if (and (list? _%effect279970%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect279970%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx279392%_
                                   _%proc279394%_
                                   _%effect279970%_))))
                          '#!void)
                      (cons _%arity279967%_
                            (cons (let* ((_%$%g279973279996%_
                                          (lambda (_%$%g279974279992%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g279974279992%_))))
                                         (_%$%g279972280070%_
                                          (lambda (_%$%g279974280000%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g279974280000%_))
                                                (let ((_%$%e279979280003%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%g279974280000%_))))
                                                  (let ((_%$%hd279980280007%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e279979280003%_)))
                                                        (_%$%tl279981280010%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e279979280003%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl279981280010%_))
                                                        (let ((_%$%e279982280013%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl279981280010%_))))
                  (let ((_%$%hd279983280017%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e279982280013%_)))
                        (_%$%tl279984280020%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e279982280013%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl279984280020%_))
                        (let ((_%$%e279985280023%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl279984280020%_))))
                          (let ((_%$%hd279986280027%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e279985280023%_)))
                                (_%$%tl279987280030%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e279985280023%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl279987280030%_))
                                (let ((_%$%e279988280033%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl279987280030%_))))
                                  (let ((_%$%hd279989280037%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e279988280033%_)))
                                        (_%$%tl279990280040%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e279988280033%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl279990280040%_))
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
                        (cons _%$%hd279980280007%_ '()))
                  (cons 'return:
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd279983280017%_ '()))
                              (cons 'effect:
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd279986280027%_
                                                      '()))
                                          (cons 'unchecked:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%$%hd279989280037%_
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
                                        (_%$%g279973279996%_
                                         _%$%g279974280000%_))))
                                (_%$%g279973279996%_ _%$%g279974280000%_))))
                        (_%$%g279973279996%_ _%$%g279974280000%_))))
                (_%$%g279973279996%_ _%$%g279974280000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g279973279996%_
                                                 _%$%g279974280000%_)))))
                                    (_%$%g279972280070%_
                                     (list _%args279956%_
                                           _%return279958%_
                                           _%effect279959%_
                                           _%unchecked279960%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx279392%_ _%proc279394%_)
          (let* ((_%__stx282227282228%_ _%sig279395%_)
                 (_%$%g279406279509%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx282227282228%_)))))
            (let ((_%__kont282230282231%_
                   (lambda (_%$%g279408279937%_ _%$%g279409279939%_)
                     (_%make-signature279399%_
                      _%$%g279409279939%_
                      _%$%g279408279937%_
                      '#f
                      '#f)))
                  (_%__kont282232282233%_
                   (lambda (_%$%g279416279888%_
                            _%$%g279417279890%_
                            _%$%g279418279891%_)
                     (_%make-signature279399%_
                      _%$%g279418279891%_
                      _%$%g279417279890%_
                      _%$%g279416279888%_
                      '#f)))
                  (_%__kont282234282235%_
                   (lambda (_%$%g279432279812%_
                            _%$%g279433279814%_
                            _%$%g279434279815%_)
                     (_%make-signature279399%_
                      _%$%g279434279815%_
                      _%$%g279433279814%_
                      _%$%g279432279812%_
                      (let ((__tmp282588
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc279394%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp282588)))))
                  (_%__kont282236282237%_
                   (lambda (_%$%g279452279718%_
                            _%$%g279453279720%_
                            _%$%g279454279721%_
                            _%$%g279455279722%_)
                     (_%make-signature279399%_
                      _%$%g279455279722%_
                      _%$%g279454279721%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g279452279718%_)))))
                  (_%__kont282238282239%_
                   (lambda (_%$%g279476279625%_ _%$%g279477279627%_)
                     (_%make-signature279399%_
                      _%$%g279477279627%_
                      _%$%g279476279625%_
                      '#f
                      (let ((__tmp282589
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc279394%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp282589)))))
                  (_%__kont282240282241%_
                   (lambda (_%$%g279488279560%_
                            _%$%g279489279562%_
                            _%$%g279490279563%_)
                     (_%make-signature279399%_
                      _%$%g279490279563%_
                      _%$%g279489279562%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g279488279560%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx282227282228%_))
                  (let ((_%$%e279410279917%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx282227282228%_))))
                    (let ((_%$%tl279412279924%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e279410279917%_)))
                          (_%$%hd279411279921%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e279410279917%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl279412279924%_))
                          (let ((_%$%e279413279927%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl279412279924%_))))
                            (let ((_%$%tl279415279934%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e279413279927%_)))
                                  (_%$%hd279414279931%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e279413279927%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl279415279934%_))
                                  (_%__kont282230282231%_
                                   _%$%hd279414279931%_
                                   _%$%hd279411279921%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl279415279934%_))
                                      (let ((_%$%e279425279864%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl279415279934%_))))
                                        (let ((_%$%tl279427279871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e279425279864%_)))
                                              (_%$%hd279426279868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e279425279864%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd279426279868%_))
                                              (let ((_%$%e279428279874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd279426279868%_))))
                                                (if (equal? _%$%e279428279874%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl279427279871%_))
                                                        (let ((_%$%e279429279878%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl279427279871%_))))
                  (let ((_%$%tl279431279885%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e279429279878%_)))
                        (_%$%hd279430279882%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e279429279878%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl279431279885%_))
                        (_%__kont282232282233%_
                         _%$%hd279430279882%_
                         _%$%hd279414279931%_
                         _%$%hd279411279921%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl279431279885%_))
                            (let ((_%$%e279448279798%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl279431279885%_))))
                              (let ((_%$%tl279450279805%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e279448279798%_)))
                                    (_%$%hd279449279802%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e279448279798%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%$%hd279449279802%_))
                                    (let ((_%$%e279451279808%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd279449279802%_))))
                                      (if (equal? _%$%e279451279808%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl279450279805%_))
                                              (_%__kont282234282235%_
                                               _%$%hd279430279882%_
                                               _%$%hd279414279931%_
                                               _%$%hd279411279921%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl279450279805%_))
                                                  (let ((_%$%e279473279708%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl279450279805%_))))
                                                    (let ((_%$%tl279475279715%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e279473279708%_)))
                                                          (_%$%hd279474279712%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e279473279708%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl279475279715%_))
                                                          (_%__kont282236282237%_
                                                           _%$%hd279474279712%_
                                                           _%$%hd279430279882%_
                                                           _%$%hd279414279931%_
                                                           _%$%hd279411279921%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g279406279509%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g279406279509%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g279406279509%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g279406279509%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g279406279509%_))))))
                (let () (declare (not safe)) (_%$%g279406279509%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%$%e279428279874%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl279427279871%_))
                                                            (_%__kont282238282239%_
                                                             _%$%hd279414279931%_
                                                             _%$%hd279411279921%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl279427279871%_))
                        (let ((_%$%e279501279550%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl279427279871%_))))
                          (let ((_%$%tl279503279557%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e279501279550%_)))
                                (_%$%hd279502279554%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e279501279550%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl279503279557%_))
                                (_%__kont282240282241%_
                                 _%$%hd279502279554%_
                                 _%$%hd279414279931%_
                                 _%$%hd279411279921%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g279406279509%_)))))
                        (let () (declare (not safe)) (_%$%g279406279509%_))))
                (let () (declare (not safe)) (_%$%g279406279509%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g279406279509%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g279406279509%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g279406279509%_)))))
                  (let () (declare (not safe)) (_%$%g279406279509%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig279003%_)
        (let* ((_%$%g279006279086%_
                (lambda (_%$%g279007279082%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g279007279082%_))))
               (_%$%g279005279388%_
                (lambda (_%$%g279007279090%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g279007279090%_))
                      (let ((_%$%e279013279093%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g279007279090%_))))
                        (let ((_%$%hd279014279097%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e279013279093%_)))
                              (_%$%tl279015279100%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e279013279093%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl279015279100%_))
                              (let ((_%$%e279016279103%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl279015279100%_))))
                                (let ((_%$%hd279017279107%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e279016279103%_)))
                                      (_%$%tl279018279110%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e279016279103%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%$%hd279017279107%_))
                                      (let ((_%$%e279019279113%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd279017279107%_))))
                                        (if (equal? _%$%e279019279113%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl279018279110%_))
                                                (let ((_%$%e279020279117%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl279018279110%_))))
                                                  (let ((_%$%hd279021279121%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e279020279117%_)))
                                                        (_%$%tl279022279124%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e279020279117%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd279021279121%_))
                                                        (let ((_%$%e279023279127%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd279021279121%_))))
                  (let ((_%$%hd279024279131%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e279023279127%_)))
                        (_%$%tl279025279134%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e279023279127%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd279024279131%_))
                        (if (let ((__tmp282590 |gxc[1]#_g282591_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp282590
                               _%$%hd279024279131%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl279025279134%_))
                                (let ((_%$%e279026279137%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl279025279134%_))))
                                  (let ((_%$%hd279027279141%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e279026279137%_)))
                                        (_%$%tl279028279144%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e279026279137%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl279028279144%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl279022279124%_))
                                            (let ((_%$%e279029279147%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl279022279124%_))))
                                              (let ((_%$%hd279030279151%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e279029279147%_)))
                                                    (_%$%tl279031279154%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e279029279147%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd279030279151%_))
                                                    (let ((_%$%e279032279157%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd279030279151%_))))
                                                      (if (equal? _%$%e279032279157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl279031279154%_))
                      (let ((_%$%e279033279161%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl279031279154%_))))
                        (let ((_%$%hd279034279165%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e279033279161%_)))
                              (_%$%tl279035279168%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e279033279161%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd279034279165%_))
                              (let ((_%$%e279036279171%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd279034279165%_))))
                                (let ((_%$%hd279037279175%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e279036279171%_)))
                                      (_%$%tl279038279178%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e279036279171%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd279037279175%_))
                                      (if (let ((__tmp282592
                                                 |gxc[1]#_g282593_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp282592
                                             _%$%hd279037279175%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl279038279178%_))
                                              (let ((_%$%e279039279181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl279038279178%_))))
                                                (let ((_%$%hd279040279185%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e279039279181%_)))
                                                      (_%$%tl279041279188%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e279039279181%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl279041279188%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl279035279168%_))
                                                          (let ((_%$%e279042279191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl279035279168%_))))
                    (let ((_%$%hd279043279195%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e279042279191%_)))
                          (_%$%tl279044279198%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e279042279191%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd279043279195%_))
                          (let ((_%$%e279045279201%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd279043279195%_))))
                            (if (equal? _%$%e279045279201%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl279044279198%_))
                                    (let ((_%$%e279046279205%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl279044279198%_))))
                                      (let ((_%$%hd279047279209%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e279046279205%_)))
                                            (_%$%tl279048279212%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e279046279205%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd279047279209%_))
                                            (let ((_%$%e279049279215%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%hd279047279209%_))))
                                              (let ((_%$%hd279050279219%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e279049279215%_)))
                                                    (_%$%tl279051279222%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e279049279215%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd279050279219%_))
                                                    (if (let ((__tmp282594
                                                               |gxc[1]#_g282595_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp282594
                                                           _%$%hd279050279219%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl279051279222%_))
                                                            (let ((_%$%e279052279225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%$%tl279051279222%_))))
                      (let ((_%$%hd279053279229%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e279052279225%_)))
                            (_%$%tl279054279232%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e279052279225%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl279054279232%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl279048279212%_))
                                (let ((_%$%e279055279235%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl279048279212%_))))
                                  (let ((_%$%hd279056279239%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e279055279235%_)))
                                        (_%$%tl279057279242%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e279055279235%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%$%hd279056279239%_))
                                        (let ((_%$%e279058279245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd279056279239%_))))
                                          (if (equal? _%$%e279058279245%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl279057279242%_))
                                                  (let ((_%$%e279059279249%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl279057279242%_))))
                                                    (let ((_%$%hd279060279253%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e279059279249%_)))
                                                          (_%$%tl279061279256%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e279059279249%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd279060279253%_))
                                                          (let ((_%$%e279062279259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%hd279060279253%_))))
                    (let ((_%$%hd279063279263%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e279062279259%_)))
                          (_%$%tl279064279266%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e279062279259%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd279063279263%_))
                          (if (let ((__tmp282596 |gxc[1]#_g282597_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp282596
                                 _%$%hd279063279263%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl279064279266%_))
                                  (let ((_%$%e279065279269%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl279064279266%_))))
                                    (let ((_%$%hd279066279273%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e279065279269%_)))
                                          (_%$%tl279067279276%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e279065279269%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl279067279276%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl279061279256%_))
                                              (let ((_%$%e279068279279%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl279061279256%_))))
                                                (let ((_%$%hd279069279283%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e279068279279%_)))
                                                      (_%$%tl279070279286%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e279068279279%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%$%hd279069279283%_))
                                                      (let ((_%$%e279071279289%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd279069279283%_))))
                (if (equal? _%$%e279071279289%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl279070279286%_))
                        (let ((_%$%e279072279293%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl279070279286%_))))
                          (let ((_%$%hd279073279297%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e279072279293%_)))
                                (_%$%tl279074279300%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e279072279293%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd279073279297%_))
                                (let ((_%$%e279075279303%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%hd279073279297%_))))
                                  (let ((_%$%hd279076279307%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e279075279303%_)))
                                        (_%$%tl279077279310%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e279075279303%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd279076279307%_))
                                        (if (let ((__tmp282598
                                                   |gxc[1]#_g282599_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp282598
                                               _%$%hd279076279307%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl279077279310%_))
                                                (let ((_%$%e279078279313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl279077279310%_))))
                                                  (let ((_%$%hd279079279317%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e279078279313%_)))
                                                        (_%$%tl279080279320%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e279078279313%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl279080279320%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl279074279300%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd279066279273%_))
                        (cons _%$%hd279066279273%_
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
                                                            (cons _%$%hd279040279185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd279079279317%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '#f)
                    (_%$%g279006279086%_ _%$%g279007279090%_))
                (_%$%g279006279086%_ _%$%g279007279090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g279006279086%_
                                                 _%$%g279007279090%_))
                                            (_%$%g279006279086%_
                                             _%$%g279007279090%_))
                                        (_%$%g279006279086%_
                                         _%$%g279007279090%_))))
                                (_%$%g279006279086%_ _%$%g279007279090%_))))
                        (_%$%g279006279086%_ _%$%g279007279090%_))
                    (_%$%g279006279086%_ _%$%g279007279090%_)))
              (_%$%g279006279086%_ _%$%g279007279090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g279006279086%_
                                               _%$%g279007279090%_))
                                          (_%$%g279006279086%_
                                           _%$%g279007279090%_))))
                                  (_%$%g279006279086%_ _%$%g279007279090%_))
                              (_%$%g279006279086%_ _%$%g279007279090%_))
                          (_%$%g279006279086%_ _%$%g279007279090%_))))
                  (_%$%g279006279086%_ _%$%g279007279090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g279006279086%_
                                                   _%$%g279007279090%_))
                                              (_%$%g279006279086%_
                                               _%$%g279007279090%_)))
                                        (_%$%g279006279086%_
                                         _%$%g279007279090%_))))
                                (_%$%g279006279086%_ _%$%g279007279090%_))
                            (_%$%g279006279086%_ _%$%g279007279090%_))))
                    (_%$%g279006279086%_ _%$%g279007279090%_))
                (_%$%g279006279086%_ _%$%g279007279090%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g279006279086%_
                                                     _%$%g279007279090%_))))
                                            (_%$%g279006279086%_
                                             _%$%g279007279090%_))))
                                    (_%$%g279006279086%_ _%$%g279007279090%_))
                                (_%$%g279006279086%_ _%$%g279007279090%_)))
                          (_%$%g279006279086%_ _%$%g279007279090%_))))
                  (_%$%g279006279086%_ _%$%g279007279090%_))
              (_%$%g279006279086%_ _%$%g279007279090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g279006279086%_
                                               _%$%g279007279090%_))
                                          (_%$%g279006279086%_
                                           _%$%g279007279090%_))
                                      (_%$%g279006279086%_
                                       _%$%g279007279090%_))))
                              (_%$%g279006279086%_ _%$%g279007279090%_))))
                      (_%$%g279006279086%_ _%$%g279007279090%_))
                  (_%$%g279006279086%_ _%$%g279007279090%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g279006279086%_
                                                     _%$%g279007279090%_))))
                                            (_%$%g279006279086%_
                                             _%$%g279007279090%_))
                                        (_%$%g279006279086%_
                                         _%$%g279007279090%_))))
                                (_%$%g279006279086%_ _%$%g279007279090%_))
                            (_%$%g279006279086%_ _%$%g279007279090%_))
                        (_%$%g279006279086%_ _%$%g279007279090%_))))
                (_%$%g279006279086%_ _%$%g279007279090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g279006279086%_
                                                 _%$%g279007279090%_))
                                            (_%$%g279006279086%_
                                             _%$%g279007279090%_)))
                                      (_%$%g279006279086%_
                                       _%$%g279007279090%_))))
                              (_%$%g279006279086%_ _%$%g279007279090%_))))
                      (_%$%g279006279086%_ _%$%g279007279090%_)))))
          (_%$%g279005279388%_ _%sig279003%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx280160%_)
        (let* ((_%$%g280163280181%_
                (lambda (_%$%g280164280177%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g280164280177%_))))
               (_%$%g280162280236%_
                (lambda (_%$%g280164280185%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g280164280185%_))
                      (let ((_%$%e280167280188%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g280164280185%_))))
                        (let ((_%$%hd280168280192%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e280167280188%_)))
                              (_%$%tl280169280195%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e280167280188%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl280169280195%_))
                              (let ((_%$%e280170280198%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl280169280195%_))))
                                (let ((_%$%hd280171280202%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e280170280198%_)))
                                      (_%$%tl280172280205%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e280170280198%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl280172280205%_))
                                      (let ((_%$%e280173280208%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl280172280205%_))))
                                        (let ((_%$%hd280174280212%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e280173280208%_)))
                                              (_%$%tl280175280215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e280173280208%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl280175280215%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd280171280202%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd280174280212%_)))
                                                  (begin
                                                    (|gxc[1]#verify-procedure!|
                                                     _%stx280160%_
                                                     _%$%hd280171280202%_)
                                                    (|gxc[1]#verify-class!|
                                                     _%stx280160%_
                                                     _%$%hd280174280212%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-type))
                                                          (cons _%$%hd280171280202%_
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
                                                (cons _%$%hd280174280212%_
                                                      '()))
                                          '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g280163280181%_
                                                   _%$%g280164280185%_))
                                              (_%$%g280163280181%_
                                               _%$%g280164280185%_))))
                                      (_%$%g280163280181%_
                                       _%$%g280164280185%_))))
                              (_%$%g280163280181%_ _%$%g280164280185%_))))
                      (_%$%g280163280181%_ _%$%g280164280185%_)))))
          (_%$%g280162280236%_ _%stx280160%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx280240%_)
        (let* ((_%$%g280243280267%_
                (lambda (_%$%g280244280263%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g280244280263%_))))
               (_%$%g280242280548%_
                (lambda (_%$%g280244280271%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g280244280271%_))
                      (let ((_%$%e280247280274%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g280244280271%_))))
                        (let ((_%$%hd280248280278%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e280247280274%_)))
                              (_%$%tl280249280281%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e280247280274%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl280249280281%_))
                              (let ((_%$%e280250280284%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl280249280281%_))))
                                (let ((_%$%hd280251280288%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e280250280284%_)))
                                      (_%$%tl280252280291%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e280250280284%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl280252280291%_))
                                      (let ((_g282600_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl280252280291%_
                                                '0))))
                                        (begin
                                          (let ((_g282601_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g282600_)
                                                       (##values-length
                                                        _g282600_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g282601_ 2)))
                                                (error "Context expects 2 values"
                                                       _g282601_)))
                                          (let ((_%$%target280253280294%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g282600_ 0)))
                                                (_%$%tl280255280297%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g282600_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl280255280297%_))
                                                (letrec ((_%$%loop280256280300%_
                                                          (lambda (_%$%hd280254280304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%signature280260280307%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd280254280304%_))
                        (let ((_%$%e280257280309%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd280254280304%_))))
                          (let ((_%$%lp-hd280258280313%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e280257280309%_)))
                                (_%$%lp-tl280259280316%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e280257280309%_))))
                            (_%$%loop280256280300%_
                             _%$%lp-tl280259280316%_
                             (cons _%$%lp-hd280258280313%_
                                   _%$%signature280260280307%_))))
                        (let ((_%$%signature280261280319%_
                               (reverse _%$%signature280260280307%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd280251280288%_))
                              (let* ((_%$%g280342280357%_
                                      (lambda (_%$%g280343280353%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g280343280353%_))))
                                     (_%$%g280341280536%_
                                      (lambda (_%$%g280343280361%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%g280343280361%_))
                                            (let ((_%$%e280346280364%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%g280343280361%_))))
                                              (let ((_%$%hd280347280368%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e280346280364%_)))
                                                    (_%$%tl280348280371%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e280346280364%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl280348280371%_))
                                                    (let ((_%$%e280349280374%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl280348280371%_))))
                                                      (let ((_%$%hd280350280378%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e280349280374%_)))
                    (_%$%tl280351280381%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e280349280374%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl280351280381%_))
                    (let* ((_%$%g280402280410%_
                            (lambda (_%$%g280403280406%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g280403280406%_))))
                           (_%$%g280401280532%_
                            (lambda (_%$%g280403280414%_)
                              (let* ((_%unchecked280430%_
                                      (|gxc[1]#signature->unchecked-signature|
                                       _%$%hd280350280378%_))
                                     (_%$%g280433280441%_
                                      (lambda (_%$%g280434280437%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g280434280437%_))))
                                     (_%$%g280432280464%_
                                      (lambda (_%$%g280434280445%_)
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'begin))
                                              (cons _%$%g280403280414%_
                                                    (cons _%$%g280434280445%_
                                                          '()))))))
                                (_%$%g280432280464%_
                                 (if _%unchecked280430%_
                                     (let* ((_%$%g280468280483%_
                                             (lambda (_%$%g280469280479%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g280469280479%_))))
                                            (_%$%g280467280528%_
                                             (lambda (_%$%g280469280487%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g280469280487%_))
                                                   (let ((_%$%e280472280490%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%$%g280469280487%_))))
                                                     (let ((_%$%hd280473280494%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e280472280490%_)))
                                                           (_%$%tl280474280497%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e280472280490%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl280474280497%_))
                                                           (let ((_%$%e280475280500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%$%tl280474280497%_))))
                     (let ((_%$%hd280476280504%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e280475280500%_)))
                           (_%$%tl280477280507%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e280475280500%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl280477280507%_))
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'declare-type))
                                 (cons _%$%hd280473280494%_
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-!primitive-lambda))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%$%hd280347280368%_ '()))
                 (cons '#f
                       (cons 'signature: (cons _%$%hd280476280504%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (_%$%g280468280483%_ _%$%g280469280487%_))))
                   (_%$%g280468280483%_ _%$%g280469280487%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g280468280483%_
                                                    _%$%g280469280487%_)))))
                                       (_%$%g280467280528%_
                                        _%unchecked280430%_))
                                     '(begin)))))))
                      (_%$%g280401280532%_
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'declare-type))
                             (cons _%$%hd280251280288%_
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
                                                           (cons _%$%hd280347280368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons 'signature:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%hd280350280378%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                    (_%$%g280342280357%_ _%$%g280343280361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g280342280357%_
                                                     _%$%g280343280361%_))))
                                            (_%$%g280342280357%_
                                             _%$%g280343280361%_)))))
                                (_%$%g280341280536%_
                                 (|gxc[1]#parse-signature|
                                  _%stx280240%_
                                  _%$%hd280251280288%_
                                  (let ((__tmp282602
                                         (lambda (_%$%g280539280542%_
                                                  _%$%g280540280545%_)
                                           (cons _%$%g280539280542%_
                                                 _%$%g280540280545%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp282602
                                     '()
                                     _%$%signature280261280319%_)))))
                              (_%$%g280243280267%_ _%$%g280244280271%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop280256280300%_
                                                   _%$%target280253280294%_
                                                   '()))
                                                (_%$%g280243280267%_
                                                 _%$%g280244280271%_)))))
                                      (_%$%g280243280267%_
                                       _%$%g280244280271%_))))
                              (_%$%g280243280267%_ _%$%g280244280271%_))))
                      (_%$%g280243280267%_ _%$%g280244280271%_)))))
          (_%$%g280242280548%_ _%stx280240%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx280553%_)
        (let* ((_%$%g280556280580%_
                (lambda (_%$%g280557280576%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g280557280576%_))))
               (_%$%g280555281455%_
                (lambda (_%$%g280557280584%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g280557280584%_))
                      (let ((_%$%e280560280587%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g280557280584%_))))
                        (let ((_%$%hd280561280591%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e280560280587%_)))
                              (_%$%tl280562280594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e280560280587%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl280562280594%_))
                              (let ((_%$%e280563280597%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl280562280594%_))))
                                (let ((_%$%hd280564280601%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e280563280597%_)))
                                      (_%$%tl280565280604%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e280563280597%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl280565280604%_))
                                      (let ((_g282603_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl280565280604%_
                                                '0))))
                                        (begin
                                          (let ((_g282604_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g282603_)
                                                       (##values-length
                                                        _g282603_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g282604_ 2)))
                                                (error "Context expects 2 values"
                                                       _g282604_)))
                                          (let ((_%$%target280566280607%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g282603_ 0)))
                                                (_%$%tl280568280610%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g282603_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl280568280610%_))
                                                (letrec ((_%$%loop280569280613%_
                                                          (lambda (_%$%hd280567280617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%case-signature280573280620%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd280567280617%_))
                        (let ((_%$%e280570280622%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd280567280617%_))))
                          (let ((_%$%lp-hd280571280626%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e280570280622%_)))
                                (_%$%lp-tl280572280629%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e280570280622%_))))
                            (_%$%loop280569280613%_
                             _%$%lp-tl280572280629%_
                             (cons _%$%lp-hd280571280626%_
                                   _%$%case-signature280573280620%_))))
                        (let ((_%$%case-signature280574280632%_
                               (reverse _%$%case-signature280573280620%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd280564280601%_))
                              (let* ((_%signatures280668%_
                                      (map (lambda (_%$%g280654280656%_)
                                             (|gxc[1]#parse-signature|
                                              _%stx280553%_
                                              _%$%hd280564280601%_
                                              _%$%g280654280656%_))
                                           (let ((__tmp282605
                                                  (lambda (_%$%g280659280662%_
                                                           _%$%g280660280665%_)
                                                    (cons _%$%g280659280662%_
                                                          _%$%g280660280665%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp282605
                                              '()
                                              _%$%case-signature280574280632%_))))
                                     (_%$%g280671280697%_
                                      (lambda (_%$%g280672280693%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g280672280693%_))))
                                     (_%$%g280670281451%_
                                      (lambda (_%$%g280672280701%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g280672280701%_))
                                            (let ((_g282606_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g280672280701%_
                                                      '0))))
                                              (begin
                                                (let ((_g282607_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g282606_)
                                                             (##values-length
                                                              _g282606_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g282607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g282607_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target280675280704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g282606_
                                                          0)))
                                                      (_%$%tl280677280707%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g282606_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl280677280707%_))
                                                      (letrec ((_%$%loop280678280710%_
                                                                (lambda (_%$%hd280676280714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%sig280682280717%_
                                 _%$%arity280683280718%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd280676280714%_))
                              (let ((_%$%e280679280720%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd280676280714%_))))
                                (let ((_%$%lp-hd280680280724%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e280679280720%_)))
                                      (_%$%lp-tl280681280727%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e280679280720%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%lp-hd280680280724%_))
                                      (let ((_%$%e280686280730%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%lp-hd280680280724%_))))
                                        (let ((_%$%hd280687280734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e280686280730%_)))
                                              (_%$%tl280688280737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e280686280730%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl280688280737%_))
                                              (let ((_%$%e280689280740%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl280688280737%_))))
                                                (let ((_%$%hd280690280744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e280689280740%_)))
                                                      (_%$%tl280691280747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e280689280740%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl280691280747%_))
                                                      (_%$%loop280678280710%_
                                                       _%$%lp-tl280681280727%_
                                                       (cons _%$%hd280690280744%_
                                                             _%$%sig280682280717%_)
                                                       (cons _%$%hd280687280734%_
                                                             _%$%arity280683280718%_))
                                                      (_%$%g280671280697%_
                                                       _%$%g280672280701%_))))
                                              (_%$%g280671280697%_
                                               _%$%g280672280701%_))))
                                      (_%$%g280671280697%_
                                       _%$%g280672280701%_))))
                              (let ((_%$%sig280684280750%_
                                     (reverse _%$%sig280682280717%_))
                                    (_%$%arity280685280752%_
                                     (reverse _%$%arity280683280718%_)))
                                (let* ((_%$%g280773280781%_
                                        (lambda (_%$%g280774280777%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g280774280777%_))))
                                       (_%$%g280772281436%_
                                        (lambda (_%$%g280774280785%_)
                                          (let* ((_%$%g280801280809%_
                                                  (lambda (_%$%g280802280805%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g280802280805%_))))
                                                 (_%$%g280800280831%_
                                                  (lambda (_%$%g280802280813%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%$%g280774280785%_
                                                                (cons _%$%g280802280813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g280800280831%_
                                             (let ((_g282608_
                                                    (let _%loop280835%_ ((_%rest280838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%signatures280668%_)
                                 (_%unchecked-proc280840%_ '#f)
                                 (_%unchecked-clauses280841%_ '()))
              (let* ((_%$%rest280842280850%_ _%rest280838%_)
                     (_%$%else280844280862%_
                      (lambda ()
                        (values _%unchecked-proc280840%_
                                (reverse! _%unchecked-clauses280841%_))))
                     (_%$%K280846281303%_
                      (lambda (_%rest280866%_ _%hd280868%_)
                        (let* ((_%$%g280870280957%_
                                (lambda (_%$%g280871280953%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g280871280953%_))))
                               (_%$%g280869281299%_
                                (lambda (_%$%g280871280961%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%g280871280961%_))
                                      (let ((_%$%e280878280964%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%g280871280961%_))))
                                        (let ((_%$%hd280879280968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e280878280964%_)))
                                              (_%$%tl280880280971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e280878280964%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl280880280971%_))
                                              (let ((_%$%e280881280974%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl280880280971%_))))
                                                (let ((_%$%hd280882280978%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e280881280974%_)))
                                                      (_%$%tl280883280981%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e280881280974%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd280882280978%_))
                                                      (let ((_%$%e280884280984%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%hd280882280978%_))))
                (let ((_%$%hd280885280988%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e280884280984%_)))
                      (_%$%tl280886280991%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e280884280984%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl280886280991%_))
                      (let ((_%$%e280887280994%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl280886280991%_))))
                        (let ((_%$%hd280888280998%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e280887280994%_)))
                              (_%$%tl280889281001%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e280887280994%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-datum? _%$%hd280888280998%_))
                              (let ((_%$%e280890281004%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd280888280998%_))))
                                (if (equal? _%$%e280890281004%_ 'arguments:)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl280889281001%_))
                                        (let ((_%$%e280891281008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl280889281001%_))))
                                          (let ((_%$%hd280892281012%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e280891281008%_)))
                                                (_%$%tl280893281015%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e280891281008%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd280892281012%_))
                                                (let ((_%$%e280894281018%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%hd280892281012%_))))
                                                  (let ((_%$%hd280895281022%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e280894281018%_)))
                                                        (_%$%tl280896281025%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e280894281018%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd280895281022%_))
                                                        (if (let ((__tmp282610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gxc[1]#_g282611_|))
                      (declare (not safe))
                      (gx#free-identifier=? __tmp282610 _%$%hd280895281022%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl280896281025%_))
                        (let ((_%$%e280897281028%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl280896281025%_))))
                          (let ((_%$%hd280898281032%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e280897281028%_)))
                                (_%$%tl280899281035%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e280897281028%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl280899281035%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl280893281015%_))
                                    (let ((_%$%e280900281038%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl280893281015%_))))
                                      (let ((_%$%hd280901281042%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e280900281038%_)))
                                            (_%$%tl280902281045%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e280900281038%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-datum?
                                               _%$%hd280901281042%_))
                                            (let ((_%$%e280903281048%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd280901281042%_))))
                                              (if (equal? _%$%e280903281048%_
                                                          'return:)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl280902281045%_))
                                                      (let ((_%$%e280904281052%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl280902281045%_))))
                (let ((_%$%hd280905281056%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e280904281052%_)))
                      (_%$%tl280906281059%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e280904281052%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd280905281056%_))
                      (let ((_%$%e280907281062%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%hd280905281056%_))))
                        (let ((_%$%hd280908281066%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e280907281062%_)))
                              (_%$%tl280909281069%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e280907281062%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd280908281066%_))
                              (if (let ((__tmp282612 |gxc[1]#_g282613_|))
                                    (declare (not safe))
                                    (gx#free-identifier=?
                                     __tmp282612
                                     _%$%hd280908281066%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl280909281069%_))
                                      (let ((_%$%e280910281072%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl280909281069%_))))
                                        (let ((_%$%hd280911281076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e280910281072%_)))
                                              (_%$%tl280912281079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e280910281072%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl280912281079%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl280906281059%_))
                                                  (let ((_%$%e280913281082%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl280906281059%_))))
                                                    (let ((_%$%hd280914281086%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e280913281082%_)))
                                                          (_%$%tl280915281089%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e280913281082%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-datum?
                                                             _%$%hd280914281086%_))
                                                          (let ((_%$%e280916281092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd280914281086%_))))
                    (if (equal? _%$%e280916281092%_ 'effect:)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl280915281089%_))
                            (let ((_%$%e280917281096%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl280915281089%_))))
                              (let ((_%$%hd280918281100%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e280917281096%_)))
                                    (_%$%tl280919281103%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e280917281096%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd280918281100%_))
                                    (let ((_%$%e280920281106%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd280918281100%_))))
                                      (let ((_%$%hd280921281110%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e280920281106%_)))
                                            (_%$%tl280922281113%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e280920281106%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd280921281110%_))
                                            (if (let ((__tmp282614
                                                       |gxc[1]#_g282615_|))
                                                  (declare (not safe))
                                                  (gx#free-identifier=?
                                                   __tmp282614
                                                   _%$%hd280921281110%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl280922281113%_))
                                                    (let ((_%$%e280923281116%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl280922281113%_))))
                                                      (let ((_%$%hd280924281120%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e280923281116%_)))
                    (_%$%tl280925281123%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e280923281116%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl280925281123%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl280919281103%_))
                        (let ((_%$%e280926281126%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl280919281103%_))))
                          (let ((_%$%hd280927281130%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e280926281126%_)))
                                (_%$%tl280928281133%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e280926281126%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd280927281130%_))
                                (let ((_%$%e280929281136%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd280927281130%_))))
                                  (if (equal? _%$%e280929281136%_ 'unchecked:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl280928281133%_))
                                          (let ((_%$%e280930281140%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl280928281133%_))))
                                            (let ((_%$%hd280931281144%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e280930281140%_)))
                                                  (_%$%tl280932281147%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e280930281140%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd280931281144%_))
                                                  (let ((_%$%e280933281150%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd280931281144%_))))
                                                    (let ((_%$%hd280934281154%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e280933281150%_)))
                                                          (_%$%tl280935281157%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e280933281150%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd280934281154%_))
                                                          (if (let ((__tmp282616
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             |gxc[1]#_g282617_|))
                        (declare (not safe))
                        (gx#free-identifier=?
                         __tmp282616
                         _%$%hd280934281154%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl280935281157%_))
                          (let ((_%$%e280936281160%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl280935281157%_))))
                            (let ((_%$%hd280937281164%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e280936281160%_)))
                                  (_%$%tl280938281167%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e280936281160%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl280938281167%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl280932281147%_))
                                      (let ((_%$%e280939281170%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl280932281147%_))))
                                        (let ((_%$%hd280940281174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e280939281170%_)))
                                              (_%$%tl280941281177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e280939281170%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd280940281174%_))
                                              (let ((_%$%e280942281180%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd280940281174%_))))
                                                (if (equal? _%$%e280942281180%_
                                                            'origin:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl280941281177%_))
                                                        (let ((_%$%e280943281184%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl280941281177%_))))
                  (let ((_%$%hd280944281188%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e280943281184%_)))
                        (_%$%tl280945281191%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e280943281184%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd280944281188%_))
                        (let ((_%$%e280946281194%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd280944281188%_))))
                          (let ((_%$%hd280947281198%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e280946281194%_)))
                                (_%$%tl280948281201%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e280946281194%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd280947281198%_))
                                (if (let ((__tmp282618 |gxc[1]#_g282619_|))
                                      (declare (not safe))
                                      (gx#free-identifier=?
                                       __tmp282618
                                       _%$%hd280947281198%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl280948281201%_))
                                        (let ((_%$%e280949281204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl280948281201%_))))
                                          (let ((_%$%hd280950281208%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e280949281204%_)))
                                                (_%$%tl280951281211%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e280949281204%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl280951281211%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl280945281191%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl280883280981%_))
                                                        (let ((_%clause281291%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%$%hd280879280968%_ '()))
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
                                     (cons _%$%hd280911281076%_ '()))
                               (cons 'origin:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%hd280950281208%_
                                                       '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                      (_%unchecked281293%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%$%hd280937281164%_))))
                  (_%loop280835%_
                   _%rest280866%_
                   (let ((_%$e281295%_ _%unchecked281293%_))
                     (if _%$e281295%_ _%$e281295%_ _%unchecked-proc280840%_))
                   (cons _%clause281291%_ _%unchecked-clauses280841%_)))
                (_%$%g280870280957%_ _%$%g280871280961%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g280870280957%_
                                                     _%$%g280871280961%_))
                                                (_%$%g280870280957%_
                                                 _%$%g280871280961%_))))
                                        (_%$%g280870280957%_
                                         _%$%g280871280961%_))
                                    (_%$%g280870280957%_ _%$%g280871280961%_))
                                (_%$%g280870280957%_ _%$%g280871280961%_))))
                        (_%$%g280870280957%_ _%$%g280871280961%_))))
                (_%$%g280870280957%_ _%$%g280871280961%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g280870280957%_
                                                     _%$%g280871280961%_)))
                                              (_%$%g280870280957%_
                                               _%$%g280871280961%_))))
                                      (_%$%g280870280957%_
                                       _%$%g280871280961%_))
                                  (_%$%g280870280957%_ _%$%g280871280961%_))))
                          (_%$%g280870280957%_ _%$%g280871280961%_))
                      (_%$%g280870280957%_ _%$%g280871280961%_))
                  (_%$%g280870280957%_ _%$%g280871280961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g280870280957%_
                                                   _%$%g280871280961%_))))
                                          (_%$%g280870280957%_
                                           _%$%g280871280961%_))
                                      (_%$%g280870280957%_
                                       _%$%g280871280961%_)))
                                (_%$%g280870280957%_ _%$%g280871280961%_))))
                        (_%$%g280870280957%_ _%$%g280871280961%_))
                    (_%$%g280870280957%_ _%$%g280871280961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g280870280957%_
                                                     _%$%g280871280961%_))
                                                (_%$%g280870280957%_
                                                 _%$%g280871280961%_))
                                            (_%$%g280870280957%_
                                             _%$%g280871280961%_))))
                                    (_%$%g280870280957%_
                                     _%$%g280871280961%_))))
                            (_%$%g280870280957%_ _%$%g280871280961%_))
                        (_%$%g280870280957%_ _%$%g280871280961%_)))
                  (_%$%g280870280957%_ _%$%g280871280961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g280870280957%_
                                                   _%$%g280871280961%_))
                                              (_%$%g280870280957%_
                                               _%$%g280871280961%_))))
                                      (_%$%g280870280957%_
                                       _%$%g280871280961%_))
                                  (_%$%g280870280957%_ _%$%g280871280961%_))
                              (_%$%g280870280957%_ _%$%g280871280961%_))))
                      (_%$%g280870280957%_ _%$%g280871280961%_))))
              (_%$%g280870280957%_ _%$%g280871280961%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g280870280957%_
                                                   _%$%g280871280961%_)))
                                            (_%$%g280870280957%_
                                             _%$%g280871280961%_))))
                                    (_%$%g280870280957%_ _%$%g280871280961%_))
                                (_%$%g280870280957%_ _%$%g280871280961%_))))
                        (_%$%g280870280957%_ _%$%g280871280961%_))
                    (_%$%g280870280957%_ _%$%g280871280961%_))
                (_%$%g280870280957%_ _%$%g280871280961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g280870280957%_
                                                 _%$%g280871280961%_))))
                                        (_%$%g280870280957%_
                                         _%$%g280871280961%_))
                                    (_%$%g280870280957%_ _%$%g280871280961%_)))
                              (_%$%g280870280957%_ _%$%g280871280961%_))))
                      (_%$%g280870280957%_ _%$%g280871280961%_))))
              (_%$%g280870280957%_ _%$%g280871280961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g280870280957%_
                                               _%$%g280871280961%_))))
                                      (_%$%g280870280957%_
                                       _%$%g280871280961%_)))))
                          (_%$%g280869281299%_ _%hd280868%_)))))
                (if (pair? _%$%rest280842280850%_)
                    (let ((_%$%hd280847281307%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest280842280850%_)))
                          (_%$%tl280848281310%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest280842280850%_))))
                      (let* ((_%hd281313%_ _%$%hd280847281307%_)
                             (_%rest281316%_ _%$%tl280848281310%_))
                        (_%$%K280846281303%_ _%rest281316%_ _%hd281313%_)))
                    (_%$%else280844280862%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 (let ((_g282609_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g282608_)
                                                              (##values-length
                                                               _g282608_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g282609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g282609_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%unchecked-proc281319%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g282608_
                                                           0)))
                                                       (_%unchecked-clauses281321%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g282608_
                                                           1))))
                                                   (if _%unchecked-proc281319%_
                                                       (let* ((_%$%g281323281347%_
                                                               (lambda (_%$%g281324281343%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g281324281343%_))))
                      (_%$%g281322281432%_
                       (lambda (_%$%g281324281351%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%g281324281351%_))
                             (let ((_%$%e281327281354%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%$%g281324281351%_))))
                               (let ((_%$%hd281328281358%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e281327281354%_)))
                                     (_%$%tl281329281361%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e281327281354%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%tl281329281361%_))
                                     (let ((_%$%e281330281364%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%tl281329281361%_))))
                                       (let ((_%$%hd281331281368%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e281330281364%_)))
                                             (_%$%tl281332281371%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e281330281364%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair/null?
                                                _%$%hd281331281368%_))
                                             (let ((_g282620_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-split-splice
                                                       _%$%hd281331281368%_
                                                       '0))))
                                               (begin
                                                 (let ((_g282621_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g282620_)
                                                              (##values-length
                                                               _g282620_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g282621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g282621_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$%target281333281374%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g282620_
                                                           0)))
                                                       (_%$%tl281335281377%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g282620_
                                                           1))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl281335281377%_))
                                                       (letrec ((_%$%loop281336281380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%hd281334281384%_
                                  _%$%clause281340281387%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd281334281384%_))
                               (let ((_%$%e281337281389%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%$%hd281334281384%_))))
                                 (let ((_%$%lp-hd281338281393%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e281337281389%_)))
                                       (_%$%lp-tl281339281396%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e281337281389%_))))
                                   (_%$%loop281336281380%_
                                    _%$%lp-tl281339281396%_
                                    (cons _%$%lp-hd281338281393%_
                                          _%$%clause281340281387%_))))
                               (let ((_%$%clause281341281399%_
                                      (reverse _%$%clause281340281387%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl281332281371%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-type))
                                           (cons _%$%hd281328281358%_
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!primitive-case-lambda))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '@list))
                                 (let ((__tmp282622
                                        (lambda (_%$%g281423281426%_
                                                 _%$%g281424281429%_)
                                          (cons _%$%g281423281426%_
                                                _%$%g281424281429%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp282622
                                    '()
                                    _%$%clause281341281399%_)))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%g281323281347%_
                                      _%$%g281324281351%_)))))))
                 (_%$%loop281336281380%_ _%$%target281333281374%_ '()))
               (_%$%g281323281347%_ _%$%g281324281351%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g281323281347%_
                                              _%$%g281324281351%_))))
                                     (_%$%g281323281347%_
                                      _%$%g281324281351%_))))
                             (_%$%g281323281347%_ _%$%g281324281351%_)))))
                 (_%$%g281322281432%_
                  (list _%unchecked-proc281319%_ _%unchecked-clauses281321%_)))
               '(begin))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g280772281436%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'declare-type))
                                         (cons _%$%hd280564280601%_
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
                                    _%$%sig280684280750%_
                                    _%$%arity280685280752%_))
                                 (let ((__tmp282623
                                        (lambda (_%$%g281439281443%_
                                                 _%$%g281440281446%_
                                                 _%$%g281441281448%_)
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!primitive-lambda))
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote))
                          (cons _%$%g281440281446%_ '()))
                    (cons '#f
                          (cons 'signature: (cons _%$%g281439281443%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%g281441281448%_))))
                                   (declare (not safe))
                                   (foldr__1
                                    __tmp282623
                                    '()
                                    _%$%sig280684280750%_
                                    _%$%arity280685280752%_))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))))))
                (_%$%loop280678280710%_ _%$%target280675280704%_ '() '()))
              (_%$%g280671280697%_ _%$%g280672280701%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g280671280697%_
                                             _%$%g280672280701%_)))))
                                (_%$%g280670281451%_ _%signatures280668%_))
                              (_%$%g280556280580%_ _%$%g280557280584%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop280569280613%_
                                                   _%$%target280566280607%_
                                                   '()))
                                                (_%$%g280556280580%_
                                                 _%$%g280557280584%_)))))
                                      (_%$%g280556280580%_
                                       _%$%g280557280584%_))))
                              (_%$%g280556280580%_ _%$%g280557280584%_))))
                      (_%$%g280556280580%_ _%$%g280557280584%_)))))
          (_%$%g280555281455%_ _%stx280553%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx281463%_)
        (let* ((_%__stx282443282444%_ _%$stx281463%_)
               (_%$%g281469281529%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx282443282444%_)))))
          (let ((_%__kont282446282447%_
                 (lambda (_%$%g281471281751%_ _%$%g281472281753%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g281472281753%_ '()))
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
                                                       (cons _%$%g281472281753%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g281471281751%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont282448282449%_
                 (lambda (_%$%g281486281676%_
                          _%$%g281487281678%_
                          _%$%g281488281679%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g281488281679%_ '()))
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
                                                       (cons _%$%g281488281679%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g281487281678%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g281486281676%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont282450282451%_
                 (lambda (_%$%g281505281590%_
                          _%$%g281506281592%_
                          _%$%g281507281593%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g281507281593%_ '()))
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
                                                       (cons _%$%g281507281593%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g281506281592%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g281505281590%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx282443282444%_))
                (let ((_%$%e281473281707%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx282443282444%_))))
                  (let ((_%$%tl281475281714%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e281473281707%_)))
                        (_%$%hd281474281711%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e281473281707%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl281475281714%_))
                        (let ((_%$%e281476281717%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl281475281714%_))))
                          (let ((_%$%tl281478281724%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e281476281717%_)))
                                (_%$%hd281477281721%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e281476281717%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd281477281721%_))
                                (let ((_%$%e281479281727%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd281477281721%_))))
                                  (if (equal? _%$%e281479281727%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl281478281724%_))
                                          (let ((_%$%e281480281731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl281478281724%_))))
                                            (let ((_%$%tl281482281738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e281480281731%_)))
                                                  (_%$%hd281481281735%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e281480281731%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl281482281738%_))
                                                  (let ((_%$%e281483281741%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl281482281738%_))))
                                                    (let ((_%$%tl281485281748%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e281483281741%_)))
                                                          (_%$%hd281484281745%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e281483281741%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl281485281748%_))
                                                          (_%__kont282446282447%_
                                                           _%$%hd281484281745%_
                                                           _%$%hd281481281735%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g281469281529%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g281469281529%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g281469281529%_)))
                                      (if (equal? _%$%e281479281727%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl281478281724%_))
                                              (let ((_%$%e281496281646%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl281478281724%_))))
                                                (let ((_%$%tl281498281653%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e281496281646%_)))
                                                      (_%$%hd281497281650%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e281496281646%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl281498281653%_))
                                                      (let ((_%$%e281499281656%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl281498281653%_))))
                (let ((_%$%tl281501281663%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e281499281656%_)))
                      (_%$%hd281500281660%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e281499281656%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl281501281663%_))
                      (let ((_%$%e281502281666%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl281501281663%_))))
                        (let ((_%$%tl281504281673%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e281502281666%_)))
                              (_%$%hd281503281670%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e281502281666%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl281504281673%_))
                              (_%__kont282448282449%_
                               _%$%hd281503281670%_
                               _%$%hd281500281660%_
                               _%$%hd281497281650%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g281469281529%_)))))
                      (let () (declare (not safe)) (_%$%g281469281529%_)))))
              (let () (declare (not safe)) (_%$%g281469281529%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g281469281529%_)))
                                          (if (equal? _%$%e281479281727%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl281478281724%_))
                                                  (let ((_%$%e281515281560%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl281478281724%_))))
                                                    (let ((_%$%tl281517281567%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e281515281560%_)))
                                                          (_%$%hd281516281564%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e281515281560%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl281517281567%_))
                                                          (let ((_%$%e281518281570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl281517281567%_))))
                    (let ((_%$%tl281520281577%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e281518281570%_)))
                          (_%$%hd281519281574%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e281518281570%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl281520281577%_))
                          (let ((_%$%e281521281580%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl281520281577%_))))
                            (let ((_%$%tl281523281587%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e281521281580%_)))
                                  (_%$%hd281522281584%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e281521281580%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl281523281587%_))
                                  (_%__kont282450282451%_
                                   _%$%hd281522281584%_
                                   _%$%hd281519281574%_
                                   _%$%hd281516281564%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g281469281529%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g281469281529%_)))))
                  (let () (declare (not safe)) (_%$%g281469281529%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g281469281529%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g281469281529%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g281469281529%_)))))
                        (let () (declare (not safe)) (_%$%g281469281529%_)))))
                (let () (declare (not safe)) (_%$%g281469281529%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx281775%_)
        (let* ((_%$%g281779281799%_
                (lambda (_%$%g281780281795%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g281780281795%_))))
               (_%$%g281778281868%_
                (lambda (_%$%g281780281803%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g281780281803%_))
                      (let ((_%$%e281782281806%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g281780281803%_))))
                        (let ((_%$%hd281783281810%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e281782281806%_)))
                              (_%$%tl281784281813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e281782281806%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl281784281813%_))
                              (let ((_g282624_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl281784281813%_
                                        '0))))
                                (begin
                                  (let ((_g282625_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g282624_)
                                               (##values-length _g282624_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g282625_ 2)))
                                        (error "Context expects 2 values"
                                               _g282625_)))
                                  (let ((_%$%target281785281816%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282624_ 0)))
                                        (_%$%tl281787281819%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282624_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl281787281819%_))
                                        (letrec ((_%$%loop281788281822%_
                                                  (lambda (_%$%hd281786281826%_
                                                           _%$%decl281792281829%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd281786281826%_))
                                                        (let ((_%$%e281789281831%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd281786281826%_))))
                  (let ((_%$%lp-hd281790281835%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e281789281831%_)))
                        (_%$%lp-tl281791281838%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e281789281831%_))))
                    (_%$%loop281788281822%_
                     _%$%lp-tl281791281838%_
                     (cons _%$%lp-hd281790281835%_ _%$%decl281792281829%_))))
                (let ((_%$%decl281793281841%_
                       (reverse _%$%decl281792281829%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (let ((__tmp282626
                               (lambda (_%$%g281859281862%_
                                        _%$%g281860281865%_)
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-builtin-class))
                                             _%$%g281859281862%_)
                                       _%$%g281860281865%_))))
                          (declare (not safe))
                          (foldr__0
                           __tmp282626
                           '()
                           _%$%decl281793281841%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop281788281822%_
                                           _%$%target281785281816%_
                                           '()))
                                        (_%$%g281779281799%_
                                         _%$%g281780281803%_)))))
                              (_%$%g281779281799%_ _%$%g281780281803%_))))
                      (_%$%g281779281799%_ _%$%g281780281803%_)))))
          (_%$%g281778281868%_ _%$stx281775%_))))))
