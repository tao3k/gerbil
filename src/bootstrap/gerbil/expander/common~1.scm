(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g183842_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183844_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183846_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183848_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183849_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183851_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183852_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183854_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183855_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183857_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183858_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g183860_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj183838
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
          (##unchecked-structure-set! __obj183838 'gerbil#AST::t '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj183838 'syntax '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj183838 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj183838 '(e source) '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj183838 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj183838 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj183838 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj183838 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj183838 '#f '13 '#f '#f))
        (let ((__tmp183841 |gx[1]#_g183842_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj183838 __tmp183841 '4 '#f '#f))
        (let ((__tmp183843 |gx[1]#_g183844_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj183838 __tmp183843 '14 '#f '#f))
        (let ((__tmp183845 |gx[1]#_g183846_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj183838 __tmp183845 '15 '#f '#f))
        (let ((__tmp183847
               (cons (cons 'e |gx[1]#_g183848_|)
                     (cons (cons 'source |gx[1]#_g183849_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj183838 __tmp183847 '16 '#f '#f))
        (let ((__tmp183850
               (cons (cons 'e |gx[1]#_g183851_|)
                     (cons (cons 'source |gx[1]#_g183852_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj183838 __tmp183850 '17 '#f '#f))
        (let ((__tmp183853
               (cons (cons 'e |gx[1]#_g183854_|)
                     (cons (cons 'source |gx[1]#_g183855_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj183838 __tmp183853 '18 '#f '#f))
        (let ((__tmp183856
               (cons (cons 'e |gx[1]#_g183857_|)
                     (cons (cons 'source |gx[1]#_g183858_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj183838 __tmp183856 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj183838 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj183838 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj183838 '() '21 '#f '#f))
        __obj183838))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx182435%_)
        (let* ((_%$%g182439182453%_
                (lambda (_%$%g182440182449%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g182440182449%_)))
               (_%$%g182438182495%_
                (lambda (_%$%g182440182457%_)
                  (if (gx#stx-pair? _%$%g182440182457%_)
                      (let ((_%$%e182442182460%_
                             (gx#syntax-e _%$%g182440182457%_)))
                        (let ((_%$%hd182443182464%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e182442182460%_)))
                              (_%$%tl182444182467%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e182442182460%_))))
                          (if (gx#stx-pair? _%$%tl182444182467%_)
                              (let ((_%$%e182445182470%_
                                     (gx#syntax-e _%$%tl182444182467%_)))
                                (let ((_%$%hd182446182474%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e182445182470%_)))
                                      (_%$%tl182447182477%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e182445182470%_))))
                                  (if (gx#stx-null? _%$%tl182447182477%_)
                                      (cons (gx#datum->syntax '#f 'unless)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'procedure?)
                                                        (cons _%$%hd182446182474%_
                                                              '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'error)
                                                              (cons '"expected procedure"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd182446182474%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g182439182453%_
                                       _%$%g182440182457%_))))
                              (_%$%g182439182453%_ _%$%g182440182457%_))))
                      (_%$%g182439182453%_ _%$%g182440182457%_)))))
          (_%$%g182438182495%_ _%$stx182435%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx182499%_)
        (letrec ((_%generate182502%_
                  (lambda (_%tgt182651%_ _%kws182653%_ _%clauses182654%_)
                    (letrec ((_%generate-clause182656%_
                              (lambda (_%hd183589%_ _%E183591%_)
                                (let* ((_%__stx183741183742%_ _%hd183589%_)
                                       (_%$%g183595183622%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx183741183742%_))))
                                  (let ((_%__kont183744183745%_
                                         (lambda (_%$%g183597183718%_
                                                  _%$%g183598183720%_)
                                           (_%generate1182658%_
                                            _%hd183589%_
                                            _%$%g183598183720%_
                                            '#t
                                            _%$%g183597183718%_
                                            _%E183591%_)))
                                        (_%__kont183746183747%_
                                         (lambda (_%$%g183605183670%_
                                                  _%$%g183606183672%_
                                                  _%$%g183607183673%_)
                                           (_%generate1182658%_
                                            _%hd183589%_
                                            _%$%g183607183673%_
                                            _%$%g183606183672%_
                                            _%$%g183605183670%_
                                            _%E183591%_)))
                                        (_%__kont183748183749%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx182499%_
                                            _%hd183589%_))))
                                    (if (gx#stx-pair? _%__stx183741183742%_)
                                        (let ((_%$%e183599183698%_
                                               (gx#syntax-e
                                                _%__stx183741183742%_)))
                                          (let ((_%$%tl183601183705%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e183599183698%_)))
                                                (_%$%hd183600183702%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e183599183698%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl183601183705%_)
                                                (let ((_%$%e183602183708%_
                                                       (gx#syntax-e
                                                        _%$%tl183601183705%_)))
                                                  (let ((_%$%tl183604183715%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e183602183708%_)))
                                                        (_%$%hd183603183712%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e183602183708%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl183604183715%_)
                                                        (_%__kont183744183745%_
                                                         _%$%hd183603183712%_
                                                         _%$%hd183600183702%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl183604183715%_)
                                                            (let ((_%$%e183614183660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl183604183715%_)))
                      (let ((_%$%tl183616183667%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e183614183660%_)))
                            (_%$%hd183615183664%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e183614183660%_))))
                        (if (gx#stx-null? _%$%tl183616183667%_)
                            (_%__kont183746183747%_
                             _%$%hd183615183664%_
                             _%$%hd183603183712%_
                             _%$%hd183600183702%_)
                            (_%__kont183748183749%_))))
                    (_%__kont183748183749%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont183748183749%_))))
                                        (_%__kont183748183749%_))))))
                             (_%generate1182658%_
                              (lambda (_%where183042%_
                                       _%hd183044%_
                                       _%fender183045%_
                                       _%body183046%_
                                       _%E183047%_)
                                (letrec ((_%recur183049%_
                                          (lambda (_%hd183052%_
                                                   _%tgt183054%_
                                                   _%K183055%_)
                                            (let* ((_%__stx183787183788%_
                                                    _%hd183052%_)
                                                   (_%$%g183058183070%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx183787183788%_))))
                                              (let ((_%__kont183790183791%_
                                                     (lambda (_%$%g183060183379%_
                                                              _%$%g183061183381%_)
                                                       (let* ((_%$%g183392183400%_
                                                               (lambda (_%$%g183393183396%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g183393183396%_)))
                      (_%$%g183391183581%_
                       (lambda (_%$%g183393183404%_)
                         (let* ((_%$%g183419183427%_
                                 (lambda (_%$%g183420183423%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g183420183423%_)))
                                (_%$%g183418183577%_
                                 (lambda (_%$%g183420183431%_)
                                   (let* ((_%$%g183447183455%_
                                           (lambda (_%$%g183448183451%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g183448183451%_)))
                                          (_%$%g183446183573%_
                                           (lambda (_%$%g183448183459%_)
                                             (let* ((_%$%g183475183483%_
                                                     (lambda (_%$%g183476183479%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g183476183479%_)))
                                                    (_%$%g183474183569%_
                                                     (lambda (_%$%g183476183487%_)
                                                       (let* ((_%$%g183503183511%_
                                                               (lambda (_%$%g183504183507%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g183504183507%_)))
                      (_%$%g183502183565%_
                       (lambda (_%$%g183504183515%_)
                         (let* ((_%$%g183531183539%_
                                 (lambda (_%$%g183532183535%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g183532183535%_)))
                                (_%$%g183530183561%_
                                 (lambda (_%$%g183532183543%_)
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'stx-pair?)
                                                     (cons _%$%g183393183404%_
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _%$%g183420183431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'syntax-e)
                                                 (cons _%$%g183393183404%_
                                                       '()))
                                           '()))
                               '())
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%$%g183448183459%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##car)
                           (cons _%$%g183420183431%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g183476183487%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##cdr)
                                 (cons _%$%g183420183431%_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%$%g183504183515%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%g183532183543%_
                                                           '())))))))
                           (_%$%g183530183561%_ _%E183047%_)))))
                 (_%$%g183502183565%_
                  (_%recur183049%_
                   _%$%g183061183381%_
                   _%$%g183448183459%_
                   (_%recur183049%_
                    _%$%g183060183379%_
                    _%$%g183476183487%_
                    _%K183055%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g183474183569%_
                                                (gx#genident 'tl))))))
                                     (_%$%g183446183573%_
                                      (gx#genident 'hd))))))
                           (_%$%g183418183577%_ (gx#genident 'e))))))
                 (_%$%g183391183581%_ _%tgt183054%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont183792183793%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd183052%_)
                                                           (if (gx#underscore?
                                                                _%hd183052%_)
                                                               _%K183055%_
                                                               (if (let ((__tmp183859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%$%g183084183086%_)
                                    (gx#bound-identifier=?
                                     _%$%g183084183086%_
                                     _%hd183052%_))))
                             (declare (not safe))
                             (__find __tmp183859 _%kws182653%_))
                           (let* ((_%$%g183092183107%_
                                   (lambda (_%$%g183093183103%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g183093183103%_)))
                                  (_%$%g183091183160%_
                                   (lambda (_%$%g183093183111%_)
                                     (if (gx#stx-pair? _%$%g183093183111%_)
                                         (let ((_%$%e183096183114%_
                                                (gx#syntax-e
                                                 _%$%g183093183111%_)))
                                           (let ((_%$%hd183097183118%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e183096183114%_)))
                                                 (_%$%tl183098183121%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e183096183114%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl183098183121%_)
                                                 (let ((_%$%e183099183124%_
                                                        (gx#syntax-e
                                                         _%$%tl183098183121%_)))
                                                   (let ((_%$%hd183100183128%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e183099183124%_)))
                                                         (_%$%tl183101183131%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e183099183124%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl183101183131%_)
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
                                               (cons _%$%hd183097183118%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-identifier=?)
                                                     (cons _%$%hd183097183118%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%$%hd183100183128%_ '()))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons _%K183055%_ (cons _%E183047%_ '()))))
                 (_%$%g183092183107%_ _%$%g183093183111%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g183092183107%_
                                                  _%$%g183093183111%_))))
                                         (_%$%g183092183107%_
                                          _%$%g183093183111%_)))))
                             (_%$%g183091183160%_
                              (list _%tgt183054%_ _%hd183052%_)))
                           (let* ((_%$%g183166183181%_
                                   (lambda (_%$%g183167183177%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g183167183177%_)))
                                  (_%$%g183165183226%_
                                   (lambda (_%$%g183167183185%_)
                                     (if (gx#stx-pair? _%$%g183167183185%_)
                                         (let ((_%$%e183170183188%_
                                                (gx#syntax-e
                                                 _%$%g183167183185%_)))
                                           (let ((_%$%hd183171183192%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e183170183188%_)))
                                                 (_%$%tl183172183195%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e183170183188%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl183172183195%_)
                                                 (let ((_%$%e183173183198%_
                                                        (gx#syntax-e
                                                         _%$%tl183172183195%_)))
                                                   (let ((_%$%hd183174183202%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e183173183198%_)))
                                                         (_%$%tl183175183205%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e183173183198%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl183175183205%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _%$%hd183174183202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _%$%hd183171183192%_ '()))
                                   '())
                             (cons _%K183055%_ '())))
                 (_%$%g183166183181%_ _%$%g183167183185%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g183166183181%_
                                                  _%$%g183167183185%_))))
                                         (_%$%g183166183181%_
                                          _%$%g183167183185%_)))))
                             (_%$%g183165183226%_
                              (list _%tgt183054%_ _%hd183052%_)))))
                   (if (gx#stx-null? _%hd183052%_)
                       (let* ((_%$%g183232183240%_
                               (lambda (_%$%g183233183236%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g183233183236%_)))
                              (_%$%g183231183259%_
                               (lambda (_%$%g183233183244%_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'stx-null?)
                                                   (cons _%$%g183233183244%_
                                                         '()))
                                             (cons _%K183055%_
                                                   (cons _%E183047%_ '())))))))
                         (_%$%g183231183259%_ _%tgt183054%_))
                       (if (gx#stx-datum? _%hd183052%_)
                           (let* ((_%$%g183265183284%_
                                   (lambda (_%$%g183266183280%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g183266183280%_)))
                                  (_%$%g183264183343%_
                                   (lambda (_%$%g183266183288%_)
                                     (if (gx#stx-pair? _%$%g183266183288%_)
                                         (let ((_%$%e183270183291%_
                                                (gx#syntax-e
                                                 _%$%g183266183288%_)))
                                           (let ((_%$%hd183271183295%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e183270183291%_)))
                                                 (_%$%tl183272183298%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e183270183291%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl183272183298%_)
                                                 (let ((_%$%e183273183301%_
                                                        (gx#syntax-e
                                                         _%$%tl183272183298%_)))
                                                   (let ((_%$%hd183274183305%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e183273183301%_)))
                                                         (_%$%tl183275183308%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e183273183301%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%tl183275183308%_)
                                                         (let ((_%$%e183276183311%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl183275183308%_)))
                   (let ((_%$%hd183277183315%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e183276183311%_)))
                         (_%$%tl183278183318%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e183276183311%_))))
                     (if (gx#stx-null? _%$%tl183278183318%_)
                         (cons (gx#datum->syntax '#f 'if)
                               (cons (cons _%$%hd183277183315%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-e)
                                                       (cons _%$%hd183271183295%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%$%hd183274183305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons _%K183055%_
                                           (cons _%E183047%_ '()))))
                         (_%$%g183265183284%_ _%$%g183266183288%_))))
                 (_%$%g183265183284%_ _%$%g183266183288%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g183265183284%_
                                                  _%$%g183266183288%_))))
                                         (_%$%g183265183284%_
                                          _%$%g183266183288%_)))))
                             (_%$%g183264183343%_
                              (list _%tgt183054%_
                                    _%hd183052%_
                                    (let ((_%e183347%_
                                           (gx#stx-e _%hd183052%_)))
                                      (if (or (keyword? _%e183347%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e183347%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e183347%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx182499%_
                            _%where183042%_
                            _%hd183052%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx183787183788%_)
                                                    (let ((_%$%e183062183369%_
                                                           (gx#syntax-e
                                                            _%__stx183787183788%_)))
                                                      (let ((_%$%tl183064183376%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e183062183369%_)))
                    (_%$%hd183063183373%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e183062183369%_))))
                (_%__kont183790183791%_
                 _%$%tl183064183376%_
                 _%$%hd183063183373%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont183792183793%_)))))))
                                  (_%recur183049%_
                                   _%hd183044%_
                                   _%tgt182651%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender183045%_
                                               (cons _%body183046%_
                                                     (cons _%E183047%_
                                                           '()))))))))
                             (_%generate-clauses182659%_
                              (lambda (_%clauses182780%_)
                                (let _%lp182783%_ ((_%rest182786%_
                                                    _%clauses182780%_)
                                                   (_%E182788%_
                                                    (gx#genident 'E))
                                                   (_%r182789%_ '()))
                                  (let* ((_%__stx183823183824%_ _%rest182786%_)
                                         (_%$%g182792182804%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx183823183824%_))))
                                    (let ((_%__kont183826183827%_
                                           (lambda (_%$%g182794182869%_
                                                    _%$%g182795182871%_)
                                             (let* ((_%__stx183803183804%_
                                                     _%$%g182795182871%_)
                                                    (_%$%g182883182894%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx183803183804%_))))
                                               (let ((_%__kont183806183807%_
                                                      (lambda (_%$%g182885183023%_)
                                                        (if (gx#stx-null?
                                                             _%$%g182794182869%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g182885183023%_)
                             (not (gx#stx-null? _%$%g182885183023%_)))
                        (cons (cons _%E182788%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%$%g182885183023%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%$%g182795182871%_))
                                          '()))
                              _%r182789%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx182499%_
                         _%$%g182795182871%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx182499%_
                     _%$%g182795182871%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont183808183809%_
                                                      (lambda ()
                                                        (let* ((_%$%g182905182913%_
                                                                (lambda (_%$%g182906182909%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g182906182909%_)))
                       (_%$%g182904183002%_
                        (lambda (_%$%g182906182917%_)
                          (let* ((_%$%g182936182944%_
                                  (lambda (_%$%g182937182940%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g182937182940%_)))
                                 (_%$%g182935182998%_
                                  (lambda (_%$%g182937182948%_)
                                    (let* ((_%$%g182964182972%_
                                            (lambda (_%$%g182965182968%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g182965182968%_)))
                                           (_%$%g182963182994%_
                                            (lambda (_%$%g182965182976%_)
                                              (_%lp182783%_
                                               _%$%g182794182869%_
                                               _%$%g182906182917%_
                                               (cons (cons _%E182788%_
                                                           (cons _%$%g182965182976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r182789%_)))))
                                      (_%$%g182963182994%_
                                       (gx#stx-wrap-source
                                        (cons (gx#datum->syntax '#f 'lambda)
                                              (cons '()
                                                    (cons _%$%g182937182948%_
                                                          '())))
                                        (gx#stx-source
                                         _%$%g182795182871%_)))))))
                            (_%$%g182935182998%_
                             (_%generate-clause182656%_
                              _%$%g182795182871%_
                              (cons _%$%g182906182917%_ '())))))))
                  (_%$%g182904183002%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx183803183804%_)
                                                     (let ((_%$%e182886183013%_
                                                            (gx#syntax-e
                                                             _%__stx183803183804%_)))
                                                       (let ((_%$%tl182888183020%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e182886183013%_)))
                     (_%$%hd182887183017%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e182886183013%_))))
                 (if (gx#identifier? _%$%hd182887183017%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g183860_|
                          _%$%hd182887183017%_)
                         (_%__kont183806183807%_ _%$%tl182888183020%_)
                         (_%__kont183808183809%_))
                     (_%__kont183808183809%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont183808183809%_))))))
                                          (_%__kont183828183829%_
                                           (lambda ()
                                             (let* ((_%$%g182815182823%_
                                                     (lambda (_%$%g182816182819%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g182816182819%_)))
                                                    (_%$%g182814182848%_
                                                     (lambda (_%$%g182816182827%_)
                                                       (cons (cons _%E182788%_
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
                              (cons _%$%g182816182827%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (gx#stx-source _%stx182499%_))
                                 '()))
                     _%r182789%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g182814182848%_
                                                _%tgt182651%_)))))
                                      (if (gx#stx-pair? _%__stx183823183824%_)
                                          (let ((_%$%e182796182859%_
                                                 (gx#syntax-e
                                                  _%__stx183823183824%_)))
                                            (let ((_%$%tl182798182866%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e182796182859%_)))
                                                  (_%$%hd182797182863%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e182796182859%_))))
                                              (_%__kont183826183827%_
                                               _%$%tl182798182866%_
                                               _%$%hd182797182863%_)))
                                          (_%__kont183828183829%_))))))))
                      (let* ((_%bind182661%_
                              (_%generate-clauses182659%_ _%clauses182654%_))
                             (_%$%g182664182681%_
                              (lambda (_%$%g182665182677%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g182665182677%_)))
                             (_%$%g182663182776%_
                              (lambda (_%$%g182665182685%_)
                                (if (gx#stx-pair/null? _%$%g182665182685%_)
                                    (let ((_g183861_
                                           (gx#syntax-split-splice
                                            _%$%g182665182685%_
                                            '0)))
                                      (begin
                                        (let ((_g183862_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g183861_)
                                                     (##values-length
                                                      _g183861_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g183862_ 2)))
                                              (error "Context expects 2 values"
                                                     _g183862_)))
                                        (let ((_%$%target182667182688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g183861_ 0)))
                                              (_%$%tl182669182691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g183861_ 1))))
                                          (if (gx#stx-null?
                                               _%$%tl182669182691%_)
                                              (letrec ((_%$%loop182670182694%_
                                                        (lambda (_%$%hd182668182698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%bind-try182674182701%_)
                  (if (gx#stx-pair? _%$%hd182668182698%_)
                      (let ((_%$%e182671182703%_
                             (gx#syntax-e _%$%hd182668182698%_)))
                        (let ((_%$%lp-hd182672182707%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e182671182703%_)))
                              (_%$%lp-tl182673182710%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e182671182703%_))))
                          (_%$%loop182670182694%_
                           _%$%lp-tl182673182710%_
                           (cons _%$%lp-hd182672182707%_
                                 _%$%bind-try182674182701%_))))
                      (let* ((_%$%bind-try182675182713%_
                              (reverse _%$%bind-try182674182701%_))
                             (_%$%g182734182742%_
                              (lambda (_%$%g182735182738%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g182735182738%_)))
                             (_%$%g182733182772%_
                              (lambda (_%$%g182735182746%_)
                                (cons (gx#datum->syntax '#f 'let*)
                                      (cons (let ((__tmp183863
                                                   (lambda (_%$%g182763182766%_
                                                            _%$%g182764182769%_)
                                                     (cons _%$%g182763182766%_
                                                           _%$%g182764182769%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp183863
                                               '()
                                               _%$%bind-try182675182713%_))
                                            (cons (cons _%$%g182735182746%_
                                                        '())
                                                  '()))))))
                        (_%$%g182733182772%_ (car (last _%bind182661%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop182670182694%_
                                                 _%$%target182667182688%_
                                                 '()))
                                              (_%$%g182664182681%_
                                               _%$%g182665182685%_)))))
                                    (_%$%g182664182681%_
                                     _%$%g182665182685%_)))))
                        (_%$%g182663182776%_ _%bind182661%_))))))
          (let* ((_%$%g182505182524%_
                  (lambda (_%$%g182506182520%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g182506182520%_)))
                 (_%$%g182504182647%_
                  (lambda (_%$%g182506182528%_)
                    (if (gx#stx-pair? _%$%g182506182528%_)
                        (let ((_%$%e182510182531%_
                               (gx#syntax-e _%$%g182506182528%_)))
                          (let ((_%$%hd182511182535%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e182510182531%_)))
                                (_%$%tl182512182538%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e182510182531%_))))
                            (if (gx#stx-pair? _%$%tl182512182538%_)
                                (let ((_%$%e182513182541%_
                                       (gx#syntax-e _%$%tl182512182538%_)))
                                  (let ((_%$%hd182514182545%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e182513182541%_)))
                                        (_%$%tl182515182548%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e182513182541%_))))
                                    (if (gx#stx-pair? _%$%tl182515182548%_)
                                        (let ((_%$%e182516182551%_
                                               (gx#syntax-e
                                                _%$%tl182515182548%_)))
                                          (let ((_%$%hd182517182555%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e182516182551%_)))
                                                (_%$%tl182518182558%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e182516182551%_))))
                                            (if (and (gx#identifier-list?
                                                      _%$%hd182517182555%_)
                                                     (gx#stx-list?
                                                      _%$%tl182518182558%_))
                                                (let* ((_%$%g182582182590%_
                                                        (lambda (_%$%g182583182586%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g182583182586%_)))
                                                       (_%$%g182581182643%_
                                                        (lambda (_%$%g182583182594%_)
                                                          (let* ((_%$%g182609182617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%g182610182613%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%$%g182610182613%_)))
                         (_%$%g182608182639%_
                          (lambda (_%$%g182610182621%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _%$%g182583182594%_
                                                    (cons _%$%hd182514182545%_
                                                          '()))
                                              '())
                                        (cons _%$%g182610182621%_ '()))))))
                    (_%$%g182608182639%_
                     (_%generate182502%_
                      _%$%g182583182594%_
                      (gx#syntax->list _%$%hd182517182555%_)
                      _%$%tl182518182558%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g182581182643%_
                                                   (gx#genident 'e)))
                                                (_%$%g182505182524%_
                                                 _%$%g182506182528%_))))
                                        (_%$%g182505182524%_
                                         _%$%g182506182528%_))))
                                (_%$%g182505182524%_ _%$%g182506182528%_))))
                        (_%$%g182505182524%_ _%$%g182506182528%_)))))
            (_%$%g182504182647%_ _%stx182499%_)))))))
