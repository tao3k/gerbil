(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g184004_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g184006_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g184008_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g184010_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g184011_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g184013_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g184014_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g184016_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g184017_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g184019_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g184020_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g184022_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj184000
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj184000 'gerbil#AST::t '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj184000 'syntax '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj184000 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj184000 '(e source) '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj184000 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj184000 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj184000 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj184000 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj184000 '#f '13 '#f '#f))
        (let ((__tmp184003 |gx[1]#_g184004_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj184000 __tmp184003 '4 '#f '#f))
        (let ((__tmp184005 |gx[1]#_g184006_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj184000 __tmp184005 '14 '#f '#f))
        (let ((__tmp184007 |gx[1]#_g184008_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj184000 __tmp184007 '15 '#f '#f))
        (let ((__tmp184009
               (cons (cons 'e |gx[1]#_g184010_|)
                     (cons (cons 'source |gx[1]#_g184011_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj184000 __tmp184009 '16 '#f '#f))
        (let ((__tmp184012
               (cons (cons 'e |gx[1]#_g184013_|)
                     (cons (cons 'source |gx[1]#_g184014_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj184000 __tmp184012 '17 '#f '#f))
        (let ((__tmp184015
               (cons (cons 'e |gx[1]#_g184016_|)
                     (cons (cons 'source |gx[1]#_g184017_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj184000 __tmp184015 '18 '#f '#f))
        (let ((__tmp184018
               (cons (cons 'e |gx[1]#_g184019_|)
                     (cons (cons 'source |gx[1]#_g184020_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj184000 __tmp184018 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj184000 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj184000 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj184000 '() '21 '#f '#f))
        __obj184000))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx182597%_)
        (let* ((_%$%g182601182615%_
                (lambda (_%$%g182602182611%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g182602182611%_)))
               (_%$%g182600182657%_
                (lambda (_%$%g182602182619%_)
                  (if (gx#stx-pair? _%$%g182602182619%_)
                      (let ((_%$%e182604182622%_
                             (gx#syntax-e _%$%g182602182619%_)))
                        (let ((_%$%hd182605182626%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e182604182622%_)))
                              (_%$%tl182606182629%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e182604182622%_))))
                          (if (gx#stx-pair? _%$%tl182606182629%_)
                              (let ((_%$%e182607182632%_
                                     (gx#syntax-e _%$%tl182606182629%_)))
                                (let ((_%$%hd182608182636%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e182607182632%_)))
                                      (_%$%tl182609182639%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e182607182632%_))))
                                  (if (gx#stx-null? _%$%tl182609182639%_)
                                      (cons (gx#datum->syntax '#f 'unless)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'procedure?)
                                                        (cons _%$%hd182608182636%_
                                                              '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'error)
                                                              (cons '"expected procedure"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd182608182636%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g182601182615%_
                                       _%$%g182602182619%_))))
                              (_%$%g182601182615%_ _%$%g182602182619%_))))
                      (_%$%g182601182615%_ _%$%g182602182619%_)))))
          (_%$%g182600182657%_ _%$stx182597%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx182661%_)
        (letrec ((_%generate182664%_
                  (lambda (_%tgt182813%_ _%kws182815%_ _%clauses182816%_)
                    (letrec ((_%generate-clause182818%_
                              (lambda (_%hd183751%_ _%E183753%_)
                                (let* ((_%__stx183903183904%_ _%hd183751%_)
                                       (_%$%g183757183784%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx183903183904%_))))
                                  (let ((_%__kont183906183907%_
                                         (lambda (_%$%g183759183880%_
                                                  _%$%g183760183882%_)
                                           (_%generate1182820%_
                                            _%hd183751%_
                                            _%$%g183760183882%_
                                            '#t
                                            _%$%g183759183880%_
                                            _%E183753%_)))
                                        (_%__kont183908183909%_
                                         (lambda (_%$%g183767183832%_
                                                  _%$%g183768183834%_
                                                  _%$%g183769183835%_)
                                           (_%generate1182820%_
                                            _%hd183751%_
                                            _%$%g183769183835%_
                                            _%$%g183768183834%_
                                            _%$%g183767183832%_
                                            _%E183753%_)))
                                        (_%__kont183910183911%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx182661%_
                                            _%hd183751%_))))
                                    (if (gx#stx-pair? _%__stx183903183904%_)
                                        (let ((_%$%e183761183860%_
                                               (gx#syntax-e
                                                _%__stx183903183904%_)))
                                          (let ((_%$%tl183763183867%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e183761183860%_)))
                                                (_%$%hd183762183864%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e183761183860%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl183763183867%_)
                                                (let ((_%$%e183764183870%_
                                                       (gx#syntax-e
                                                        _%$%tl183763183867%_)))
                                                  (let ((_%$%tl183766183877%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e183764183870%_)))
                                                        (_%$%hd183765183874%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e183764183870%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl183766183877%_)
                                                        (_%__kont183906183907%_
                                                         _%$%hd183765183874%_
                                                         _%$%hd183762183864%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl183766183877%_)
                                                            (let ((_%$%e183776183822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl183766183877%_)))
                      (let ((_%$%tl183778183829%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e183776183822%_)))
                            (_%$%hd183777183826%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e183776183822%_))))
                        (if (gx#stx-null? _%$%tl183778183829%_)
                            (_%__kont183908183909%_
                             _%$%hd183777183826%_
                             _%$%hd183765183874%_
                             _%$%hd183762183864%_)
                            (_%__kont183910183911%_))))
                    (_%__kont183910183911%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont183910183911%_))))
                                        (_%__kont183910183911%_))))))
                             (_%generate1182820%_
                              (lambda (_%where183204%_
                                       _%hd183206%_
                                       _%fender183207%_
                                       _%body183208%_
                                       _%E183209%_)
                                (letrec ((_%recur183211%_
                                          (lambda (_%hd183214%_
                                                   _%tgt183216%_
                                                   _%K183217%_)
                                            (let* ((_%__stx183949183950%_
                                                    _%hd183214%_)
                                                   (_%$%g183220183232%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx183949183950%_))))
                                              (let ((_%__kont183952183953%_
                                                     (lambda (_%$%g183222183541%_
                                                              _%$%g183223183543%_)
                                                       (let* ((_%$%g183554183562%_
                                                               (lambda (_%$%g183555183558%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g183555183558%_)))
                      (_%$%g183553183743%_
                       (lambda (_%$%g183555183566%_)
                         (let* ((_%$%g183581183589%_
                                 (lambda (_%$%g183582183585%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g183582183585%_)))
                                (_%$%g183580183739%_
                                 (lambda (_%$%g183582183593%_)
                                   (let* ((_%$%g183609183617%_
                                           (lambda (_%$%g183610183613%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g183610183613%_)))
                                          (_%$%g183608183735%_
                                           (lambda (_%$%g183610183621%_)
                                             (let* ((_%$%g183637183645%_
                                                     (lambda (_%$%g183638183641%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g183638183641%_)))
                                                    (_%$%g183636183731%_
                                                     (lambda (_%$%g183638183649%_)
                                                       (let* ((_%$%g183665183673%_
                                                               (lambda (_%$%g183666183669%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g183666183669%_)))
                      (_%$%g183664183727%_
                       (lambda (_%$%g183666183677%_)
                         (let* ((_%$%g183693183701%_
                                 (lambda (_%$%g183694183697%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g183694183697%_)))
                                (_%$%g183692183723%_
                                 (lambda (_%$%g183694183705%_)
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'stx-pair?)
                                                     (cons _%$%g183555183566%_
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _%$%g183582183593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'syntax-e)
                                                 (cons _%$%g183555183566%_
                                                       '()))
                                           '()))
                               '())
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%$%g183610183621%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##car)
                           (cons _%$%g183582183593%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g183638183649%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##cdr)
                                 (cons _%$%g183582183593%_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%$%g183666183677%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%g183694183705%_
                                                           '())))))))
                           (_%$%g183692183723%_ _%E183209%_)))))
                 (_%$%g183664183727%_
                  (_%recur183211%_
                   _%$%g183223183543%_
                   _%$%g183610183621%_
                   (_%recur183211%_
                    _%$%g183222183541%_
                    _%$%g183638183649%_
                    _%K183217%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g183636183731%_
                                                (gx#genident 'tl))))))
                                     (_%$%g183608183735%_
                                      (gx#genident 'hd))))))
                           (_%$%g183580183739%_ (gx#genident 'e))))))
                 (_%$%g183553183743%_ _%tgt183216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont183954183955%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd183214%_)
                                                           (if (gx#underscore?
                                                                _%hd183214%_)
                                                               _%K183217%_
                                                               (if (let ((__tmp184021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%$%g183246183248%_)
                                    (gx#bound-identifier=?
                                     _%$%g183246183248%_
                                     _%hd183214%_))))
                             (declare (not safe))
                             (__find __tmp184021 _%kws182815%_))
                           (let* ((_%$%g183254183269%_
                                   (lambda (_%$%g183255183265%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g183255183265%_)))
                                  (_%$%g183253183322%_
                                   (lambda (_%$%g183255183273%_)
                                     (if (gx#stx-pair? _%$%g183255183273%_)
                                         (let ((_%$%e183258183276%_
                                                (gx#syntax-e
                                                 _%$%g183255183273%_)))
                                           (let ((_%$%hd183259183280%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e183258183276%_)))
                                                 (_%$%tl183260183283%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e183258183276%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl183260183283%_)
                                                 (let ((_%$%e183261183286%_
                                                        (gx#syntax-e
                                                         _%$%tl183260183283%_)))
                                                   (let ((_%$%hd183262183290%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e183261183286%_)))
                                                         (_%$%tl183263183293%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e183261183286%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl183263183293%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'and)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'identifier?)
                                               (cons _%$%hd183259183280%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-identifier=?)
                                                     (cons _%$%hd183259183280%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%$%hd183262183290%_ '()))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons _%K183217%_ (cons _%E183209%_ '()))))
                 (_%$%g183254183269%_ _%$%g183255183273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g183254183269%_
                                                  _%$%g183255183273%_))))
                                         (_%$%g183254183269%_
                                          _%$%g183255183273%_)))))
                             (_%$%g183253183322%_
                              (list _%tgt183216%_ _%hd183214%_)))
                           (let* ((_%$%g183328183343%_
                                   (lambda (_%$%g183329183339%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g183329183339%_)))
                                  (_%$%g183327183388%_
                                   (lambda (_%$%g183329183347%_)
                                     (if (gx#stx-pair? _%$%g183329183347%_)
                                         (let ((_%$%e183332183350%_
                                                (gx#syntax-e
                                                 _%$%g183329183347%_)))
                                           (let ((_%$%hd183333183354%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e183332183350%_)))
                                                 (_%$%tl183334183357%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e183332183350%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl183334183357%_)
                                                 (let ((_%$%e183335183360%_
                                                        (gx#syntax-e
                                                         _%$%tl183334183357%_)))
                                                   (let ((_%$%hd183336183364%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e183335183360%_)))
                                                         (_%$%tl183337183367%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e183335183360%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl183337183367%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _%$%hd183336183364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _%$%hd183333183354%_ '()))
                                   '())
                             (cons _%K183217%_ '())))
                 (_%$%g183328183343%_ _%$%g183329183347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g183328183343%_
                                                  _%$%g183329183347%_))))
                                         (_%$%g183328183343%_
                                          _%$%g183329183347%_)))))
                             (_%$%g183327183388%_
                              (list _%tgt183216%_ _%hd183214%_)))))
                   (if (gx#stx-null? _%hd183214%_)
                       (let* ((_%$%g183394183402%_
                               (lambda (_%$%g183395183398%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g183395183398%_)))
                              (_%$%g183393183421%_
                               (lambda (_%$%g183395183406%_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'stx-null?)
                                                   (cons _%$%g183395183406%_
                                                         '()))
                                             (cons _%K183217%_
                                                   (cons _%E183209%_ '())))))))
                         (_%$%g183393183421%_ _%tgt183216%_))
                       (if (gx#stx-datum? _%hd183214%_)
                           (let* ((_%$%g183427183446%_
                                   (lambda (_%$%g183428183442%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g183428183442%_)))
                                  (_%$%g183426183505%_
                                   (lambda (_%$%g183428183450%_)
                                     (if (gx#stx-pair? _%$%g183428183450%_)
                                         (let ((_%$%e183432183453%_
                                                (gx#syntax-e
                                                 _%$%g183428183450%_)))
                                           (let ((_%$%hd183433183457%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e183432183453%_)))
                                                 (_%$%tl183434183460%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e183432183453%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl183434183460%_)
                                                 (let ((_%$%e183435183463%_
                                                        (gx#syntax-e
                                                         _%$%tl183434183460%_)))
                                                   (let ((_%$%hd183436183467%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e183435183463%_)))
                                                         (_%$%tl183437183470%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e183435183463%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%tl183437183470%_)
                                                         (let ((_%$%e183438183473%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl183437183470%_)))
                   (let ((_%$%hd183439183477%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e183438183473%_)))
                         (_%$%tl183440183480%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e183438183473%_))))
                     (if (gx#stx-null? _%$%tl183440183480%_)
                         (cons (gx#datum->syntax '#f 'if)
                               (cons (cons _%$%hd183439183477%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-e)
                                                       (cons _%$%hd183433183457%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%$%hd183436183467%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons _%K183217%_
                                           (cons _%E183209%_ '()))))
                         (_%$%g183427183446%_ _%$%g183428183450%_))))
                 (_%$%g183427183446%_ _%$%g183428183450%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g183427183446%_
                                                  _%$%g183428183450%_))))
                                         (_%$%g183427183446%_
                                          _%$%g183428183450%_)))))
                             (_%$%g183426183505%_
                              (list _%tgt183216%_
                                    _%hd183214%_
                                    (let ((_%e183509%_
                                           (gx#stx-e _%hd183214%_)))
                                      (if (or (keyword? _%e183509%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e183509%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e183509%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx182661%_
                            _%where183204%_
                            _%hd183214%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx183949183950%_)
                                                    (let ((_%$%e183224183531%_
                                                           (gx#syntax-e
                                                            _%__stx183949183950%_)))
                                                      (let ((_%$%tl183226183538%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e183224183531%_)))
                    (_%$%hd183225183535%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e183224183531%_))))
                (_%__kont183952183953%_
                 _%$%tl183226183538%_
                 _%$%hd183225183535%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont183954183955%_)))))))
                                  (_%recur183211%_
                                   _%hd183206%_
                                   _%tgt182813%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender183207%_
                                               (cons _%body183208%_
                                                     (cons _%E183209%_
                                                           '()))))))))
                             (_%generate-clauses182821%_
                              (lambda (_%clauses182942%_)
                                (let _%lp182945%_ ((_%rest182948%_
                                                    _%clauses182942%_)
                                                   (_%E182950%_
                                                    (gx#genident 'E))
                                                   (_%r182951%_ '()))
                                  (let* ((_%__stx183985183986%_ _%rest182948%_)
                                         (_%$%g182954182966%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx183985183986%_))))
                                    (let ((_%__kont183988183989%_
                                           (lambda (_%$%g182956183031%_
                                                    _%$%g182957183033%_)
                                             (let* ((_%__stx183965183966%_
                                                     _%$%g182957183033%_)
                                                    (_%$%g183045183056%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx183965183966%_))))
                                               (let ((_%__kont183968183969%_
                                                      (lambda (_%$%g183047183185%_)
                                                        (if (gx#stx-null?
                                                             _%$%g182956183031%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g183047183185%_)
                             (not (gx#stx-null? _%$%g183047183185%_)))
                        (cons (cons _%E182950%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%$%g183047183185%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%$%g182957183033%_))
                                          '()))
                              _%r182951%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx182661%_
                         _%$%g182957183033%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx182661%_
                     _%$%g182957183033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont183970183971%_
                                                      (lambda ()
                                                        (let* ((_%$%g183067183075%_
                                                                (lambda (_%$%g183068183071%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g183068183071%_)))
                       (_%$%g183066183164%_
                        (lambda (_%$%g183068183079%_)
                          (let* ((_%$%g183098183106%_
                                  (lambda (_%$%g183099183102%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g183099183102%_)))
                                 (_%$%g183097183160%_
                                  (lambda (_%$%g183099183110%_)
                                    (let* ((_%$%g183126183134%_
                                            (lambda (_%$%g183127183130%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g183127183130%_)))
                                           (_%$%g183125183156%_
                                            (lambda (_%$%g183127183138%_)
                                              (_%lp182945%_
                                               _%$%g182956183031%_
                                               _%$%g183068183079%_
                                               (cons (cons _%E182950%_
                                                           (cons _%$%g183127183138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r182951%_)))))
                                      (_%$%g183125183156%_
                                       (gx#stx-wrap-source
                                        (cons (gx#datum->syntax '#f 'lambda)
                                              (cons '()
                                                    (cons _%$%g183099183110%_
                                                          '())))
                                        (gx#stx-source
                                         _%$%g182957183033%_)))))))
                            (_%$%g183097183160%_
                             (_%generate-clause182818%_
                              _%$%g182957183033%_
                              (cons _%$%g183068183079%_ '())))))))
                  (_%$%g183066183164%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx183965183966%_)
                                                     (let ((_%$%e183048183175%_
                                                            (gx#syntax-e
                                                             _%__stx183965183966%_)))
                                                       (let ((_%$%tl183050183182%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e183048183175%_)))
                     (_%$%hd183049183179%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e183048183175%_))))
                 (if (gx#identifier? _%$%hd183049183179%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g184022_|
                          _%$%hd183049183179%_)
                         (_%__kont183968183969%_ _%$%tl183050183182%_)
                         (_%__kont183970183971%_))
                     (_%__kont183970183971%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont183970183971%_))))))
                                          (_%__kont183990183991%_
                                           (lambda ()
                                             (let* ((_%$%g182977182985%_
                                                     (lambda (_%$%g182978182981%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g182978182981%_)))
                                                    (_%$%g182976183010%_
                                                     (lambda (_%$%g182978182989%_)
                                                       (cons (cons _%E182950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'raise-syntax-error)
                                                          (cons '#f
                                                                (cons '"Bad syntax; invalid syntax-case clause"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%g182978182989%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (gx#stx-source _%stx182661%_))
                                 '()))
                     _%r182951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g182976183010%_
                                                _%tgt182813%_)))))
                                      (if (gx#stx-pair? _%__stx183985183986%_)
                                          (let ((_%$%e182958183021%_
                                                 (gx#syntax-e
                                                  _%__stx183985183986%_)))
                                            (let ((_%$%tl182960183028%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e182958183021%_)))
                                                  (_%$%hd182959183025%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e182958183021%_))))
                                              (_%__kont183988183989%_
                                               _%$%tl182960183028%_
                                               _%$%hd182959183025%_)))
                                          (_%__kont183990183991%_))))))))
                      (let* ((_%bind182823%_
                              (_%generate-clauses182821%_ _%clauses182816%_))
                             (_%$%g182826182843%_
                              (lambda (_%$%g182827182839%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g182827182839%_)))
                             (_%$%g182825182938%_
                              (lambda (_%$%g182827182847%_)
                                (if (gx#stx-pair/null? _%$%g182827182847%_)
                                    (let ((_g184023_
                                           (gx#syntax-split-splice
                                            _%$%g182827182847%_
                                            '0)))
                                      (begin
                                        (let ((_g184024_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g184023_)
                                                     (##values-length
                                                      _g184023_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g184024_ 2)))
                                              (error "Context expects 2 values"
                                                     _g184024_)))
                                        (let ((_%$%target182829182850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g184023_ 0)))
                                              (_%$%tl182831182853%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g184023_ 1))))
                                          (if (gx#stx-null?
                                               _%$%tl182831182853%_)
                                              (letrec ((_%$%loop182832182856%_
                                                        (lambda (_%$%hd182830182860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%bind-try182836182863%_)
                  (if (gx#stx-pair? _%$%hd182830182860%_)
                      (let ((_%$%e182833182865%_
                             (gx#syntax-e _%$%hd182830182860%_)))
                        (let ((_%$%lp-hd182834182869%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e182833182865%_)))
                              (_%$%lp-tl182835182872%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e182833182865%_))))
                          (_%$%loop182832182856%_
                           _%$%lp-tl182835182872%_
                           (cons _%$%lp-hd182834182869%_
                                 _%$%bind-try182836182863%_))))
                      (let* ((_%$%bind-try182837182875%_
                              (reverse _%$%bind-try182836182863%_))
                             (_%$%g182896182904%_
                              (lambda (_%$%g182897182900%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g182897182900%_)))
                             (_%$%g182895182934%_
                              (lambda (_%$%g182897182908%_)
                                (cons (gx#datum->syntax '#f 'let*)
                                      (cons (let ((__tmp184025
                                                   (lambda (_%$%g182925182928%_
                                                            _%$%g182926182931%_)
                                                     (cons _%$%g182925182928%_
                                                           _%$%g182926182931%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp184025
                                               '()
                                               _%$%bind-try182837182875%_))
                                            (cons (cons _%$%g182897182908%_
                                                        '())
                                                  '()))))))
                        (_%$%g182895182934%_ (car (last _%bind182823%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop182832182856%_
                                                 _%$%target182829182850%_
                                                 '()))
                                              (_%$%g182826182843%_
                                               _%$%g182827182847%_)))))
                                    (_%$%g182826182843%_
                                     _%$%g182827182847%_)))))
                        (_%$%g182825182938%_ _%bind182823%_))))))
          (let* ((_%$%g182667182686%_
                  (lambda (_%$%g182668182682%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g182668182682%_)))
                 (_%$%g182666182809%_
                  (lambda (_%$%g182668182690%_)
                    (if (gx#stx-pair? _%$%g182668182690%_)
                        (let ((_%$%e182672182693%_
                               (gx#syntax-e _%$%g182668182690%_)))
                          (let ((_%$%hd182673182697%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e182672182693%_)))
                                (_%$%tl182674182700%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e182672182693%_))))
                            (if (gx#stx-pair? _%$%tl182674182700%_)
                                (let ((_%$%e182675182703%_
                                       (gx#syntax-e _%$%tl182674182700%_)))
                                  (let ((_%$%hd182676182707%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e182675182703%_)))
                                        (_%$%tl182677182710%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e182675182703%_))))
                                    (if (gx#stx-pair? _%$%tl182677182710%_)
                                        (let ((_%$%e182678182713%_
                                               (gx#syntax-e
                                                _%$%tl182677182710%_)))
                                          (let ((_%$%hd182679182717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e182678182713%_)))
                                                (_%$%tl182680182720%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e182678182713%_))))
                                            (if (and (gx#identifier-list?
                                                      _%$%hd182679182717%_)
                                                     (gx#stx-list?
                                                      _%$%tl182680182720%_))
                                                (let* ((_%$%g182744182752%_
                                                        (lambda (_%$%g182745182748%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g182745182748%_)))
                                                       (_%$%g182743182805%_
                                                        (lambda (_%$%g182745182756%_)
                                                          (let* ((_%$%g182771182779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%g182772182775%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%$%g182772182775%_)))
                         (_%$%g182770182801%_
                          (lambda (_%$%g182772182783%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _%$%g182745182756%_
                                                    (cons _%$%hd182676182707%_
                                                          '()))
                                              '())
                                        (cons _%$%g182772182783%_ '()))))))
                    (_%$%g182770182801%_
                     (_%generate182664%_
                      _%$%g182745182756%_
                      (gx#syntax->list _%$%hd182679182717%_)
                      _%$%tl182680182720%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g182743182805%_
                                                   (gx#genident 'e)))
                                                (_%$%g182667182686%_
                                                 _%$%g182668182690%_))))
                                        (_%$%g182667182686%_
                                         _%$%g182668182690%_))))
                                (_%$%g182667182686%_ _%$%g182668182690%_))))
                        (_%$%g182667182686%_ _%$%g182668182690%_)))))
            (_%$%g182666182809%_ _%stx182661%_)))))))
