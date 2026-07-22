(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g200898_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200900_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200902_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200904_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200905_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200907_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200908_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200910_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200911_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200913_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200914_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx199858%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx199858%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx199861%_)
        (let* ((_%$%g199864199888%_
                (lambda (_%$%g199865199884%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199865199884%_))))
               (_%$%g199863200187%_
                (lambda (_%$%g199865199892%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199865199892%_))
                      (let ((_%$%e199868199895%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g199865199892%_))))
                        (let ((_%$%hd199869199899%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199868199895%_)))
                              (_%$%tl199870199902%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199868199895%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199870199902%_))
                              (let ((_%$%e199871199905%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl199870199902%_))))
                                (let ((_%$%hd199872199909%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199871199905%_)))
                                      (_%$%tl199873199912%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199871199905%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl199873199912%_))
                                      (let ((_g200889_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl199873199912%_
                                                '0))))
                                        (begin
                                          (let ((_g200890_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g200889_)
                                                       (##values-length
                                                        _g200889_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g200890_ 2)))
                                                (error "Context expects 2 values"
                                                       _g200890_)))
                                          (let ((_%$%target199874199915%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g200889_ 0)))
                                                (_%$%tl199876199918%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g200889_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl199876199918%_))
                                                (letrec ((_%$%loop199877199921%_
                                                          (lambda (_%$%hd199875199925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause199881199928%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd199875199925%_))
                        (let ((_%$%e199878199930%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd199875199925%_))))
                          (let ((_%$%lp-hd199879199934%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e199878199930%_)))
                                (_%$%lp-tl199880199937%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e199878199930%_))))
                            (_%$%loop199877199921%_
                             _%$%lp-tl199880199937%_
                             (cons _%$%lp-hd199879199934%_
                                   _%$%clause199881199928%_))))
                        (let ((_%$%clause199882199940%_
                               (reverse _%$%clause199881199928%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier-list? _%$%hd199872199909%_))
                              (let* ((_%$%g199964199981%_
                                      (lambda (_%$%g199965199977%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g199965199977%_))))
                                     (_%$%g199963200040%_
                                      (lambda (_%$%g199965199985%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g199965199985%_))
                                            (let ((_g200891_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g199965199985%_
                                                      '0))))
                                              (begin
                                                (let ((_g200892_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g200891_)
                                                             (##values-length
                                                              _g200891_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g200892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g200892_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target199967199988%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g200891_
                                                          0)))
                                                      (_%$%tl199969199991%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g200891_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl199969199991%_))
                                                      (letrec ((_%$%loop199970199994%_
                                                                (lambda (_%$%hd199968199998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%clause199974200001%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd199968199998%_))
                              (let ((_%$%e199971200003%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd199968199998%_))))
                                (let ((_%$%lp-hd199972200007%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199971200003%_)))
                                      (_%$%lp-tl199973200010%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199971200003%_))))
                                  (_%$%loop199970199994%_
                                   _%$%lp-tl199973200010%_
                                   (cons _%$%lp-hd199972200007%_
                                         _%$%clause199974200001%_))))
                              (let ((_%$%clause199975200013%_
                                     (reverse _%$%clause199974200001%_)))
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'lambda))
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '$stx))
                                                  '())
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'ast-case))
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '$stx))
                      (cons _%$%hd199872199909%_
                            (let ((__tmp200893
                                   (lambda (_%$%g200031200034%_
                                            _%$%g200032200037%_)
                                     (cons _%$%g200031200034%_
                                           _%$%g200032200037%_))))
                              (declare (not safe))
                              (foldr__0
                               __tmp200893
                               '()
                               _%$%clause199975200013%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))))
                (_%$%loop199970199994%_ _%$%target199967199988%_ '()))
              (_%$%g199964199981%_ _%$%g199965199985%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g199964199981%_
                                             _%$%g199965199985%_)))))
                                (_%$%g199963200040%_
                                 (let ((__tmp200896
                                        (lambda (_%clause200044%_)
                                          (let* ((_%__stx200808200809%_
                                                  _%clause200044%_)
                                                 (_%$%g200048200075%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx200808200809%_)))))
                                            (let ((_%__kont200811200812%_
                                                   (lambda (_%$%g200050200160%_
                                                            _%$%g200051200162%_)
                                                     (cons _%$%g200051200162%_
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'syntax))
                               (cons _%$%g200050200160%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200813200814%_
                                                   (lambda (_%$%g200058200112%_
                                                            _%$%g200059200114%_
                                                            _%$%g200060200115%_)
                                                     (cons _%$%g200060200115%_
                                                           (cons _%$%g200059200114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax))
                                     (cons _%$%g200058200112%_ '()))
                               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx200808200809%_))
                                                  (let ((_%$%e200052200140%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%__stx200808200809%_))))
                                                    (let ((_%$%tl200054200147%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e200052200140%_)))
                                                          (_%$%hd200053200144%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e200052200140%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl200054200147%_))
                                                          (let ((_%$%e200055200150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl200054200147%_))))
                    (let ((_%$%tl200057200157%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e200055200150%_)))
                          (_%$%hd200056200154%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e200055200150%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl200057200157%_))
                          (_%__kont200811200812%_
                           _%$%hd200056200154%_
                           _%$%hd200053200144%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200057200157%_))
                              (let ((_%$%e200067200102%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl200057200157%_))))
                                (let ((_%$%tl200069200109%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200067200102%_)))
                                      (_%$%hd200068200106%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200067200102%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl200069200109%_))
                                      (_%__kont200813200814%_
                                       _%$%hd200068200106%_
                                       _%$%hd200056200154%_
                                       _%$%hd200053200144%_)
                                      (_%$%g200048200075%_))))
                              (_%$%g200048200075%_)))))
                  (_%$%g200048200075%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g200048200075%_))))))
                                       (__tmp200894
                                        (let ((__tmp200895
                                               (lambda (_%$%g200178200181%_
                                                        _%$%g200179200184%_)
                                                 (cons _%$%g200178200181%_
                                                       _%$%g200179200184%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp200895
                                           '()
                                           _%$%clause199882199940%_))))
                                   (declare (not safe))
                                   (gx#stx-map1 __tmp200896 __tmp200894))))
                              (_%$%g199864199888%_ _%$%g199865199892%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop199877199921%_
                                                   _%$%target199874199915%_
                                                   '()))
                                                (_%$%g199864199888%_
                                                 _%$%g199865199892%_)))))
                                      (_%$%g199864199888%_
                                       _%$%g199865199892%_))))
                              (_%$%g199864199888%_ _%$%g199865199892%_))))
                      (_%$%g199864199888%_ _%$%g199865199892%_)))))
          (_%$%g199863200187%_ _%stx199861%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj200858
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
          (##unchecked-structure-set!
           __obj200858
           'gxc#symbol-table::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200858 'symbol-table '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj200858
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj200858
           '(gensyms bindings)
           '8
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200858 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200858 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200858 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200858 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200858 ':init! '13 '#f '#f))
        (let ((__tmp200897 |gxc[1]#_g200898_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj200858 __tmp200897 '4 '#f '#f))
        (let ((__tmp200899 |gxc[1]#_g200900_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj200858 __tmp200899 '14 '#f '#f))
        (let ((__tmp200901 |gxc[1]#_g200902_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj200858 __tmp200901 '15 '#f '#f))
        (let ((__tmp200903
               (cons (cons 'gensyms |gxc[1]#_g200904_|)
                     (cons (cons 'bindings |gxc[1]#_g200905_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj200858 __tmp200903 '16 '#f '#f))
        (let ((__tmp200906
               (cons (cons 'gensyms |gxc[1]#_g200907_|)
                     (cons (cons 'bindings |gxc[1]#_g200908_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj200858 __tmp200906 '17 '#f '#f))
        (let ((__tmp200909
               (cons (cons 'gensyms |gxc[1]#_g200910_|)
                     (cons (cons 'bindings |gxc[1]#_g200911_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj200858 __tmp200909 '18 '#f '#f))
        (let ((__tmp200912
               (cons (cons 'gensyms |gxc[1]#_g200913_|)
                     (cons (cons 'bindings |gxc[1]#_g200914_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj200858 __tmp200912 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200858 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200858 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200858 '() '21 '#f '#f))
        __obj200858))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx200193%_)
        (let* ((_%$%g200197200211%_
                (lambda (_%$%g200198200207%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200198200207%_))))
               (_%$%g200196200252%_
                (lambda (_%$%g200198200215%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200198200215%_))
                      (let ((_%$%e200200200218%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g200198200215%_))))
                        (let ((_%$%hd200201200222%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200200200218%_)))
                              (_%$%tl200202200225%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200200200218%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200202200225%_))
                              (let ((_%$%e200203200228%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl200202200225%_))))
                                (let ((_%$%hd200204200232%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200203200228%_)))
                                      (_%$%tl200205200235%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200203200228%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl200205200235%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'with-lock))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '__verbose-mutex))
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'lambda))
                      (cons '() (cons _%$%hd200204200232%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g200197200211%_
                                       _%$%g200198200215%_))))
                              (_%$%g200197200211%_ _%$%g200198200215%_))))
                      (_%$%g200197200211%_ _%$%g200198200215%_)))))
          (_%$%g200196200252%_ _%$stx200193%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx200256%_)
        (let* ((_%$%g200260200274%_
                (lambda (_%$%g200261200270%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200261200270%_))))
               (_%$%g200259200315%_
                (lambda (_%$%g200261200278%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200261200278%_))
                      (let ((_%$%e200263200281%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g200261200278%_))))
                        (let ((_%$%hd200264200285%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200263200281%_)))
                              (_%$%tl200265200288%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200263200281%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200265200288%_))
                              (let ((_%$%e200266200291%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl200265200288%_))))
                                (let ((_%$%hd200267200295%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200266200291%_)))
                                      (_%$%tl200268200298%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200266200291%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl200268200298%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'spawn))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'lambda))
                                                        (cons '()
                                                              (cons _%$%hd200267200295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (_%$%g200260200274%_
                                       _%$%g200261200278%_))))
                              (_%$%g200260200274%_ _%$%g200261200278%_))))
                      (_%$%g200260200274%_ _%$%g200261200278%_)))))
          (_%$%g200259200315%_ _%$stx200256%_))))))
