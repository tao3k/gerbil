(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g200881_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200883_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200885_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200887_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200888_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200890_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200891_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200893_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200894_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200896_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200897_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx199841%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx199841%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx199844%_)
        (let* ((_%$%g199847199871%_
                (lambda (_%$%g199848199867%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199848199867%_))))
               (_%$%g199846200170%_
                (lambda (_%$%g199848199875%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199848199875%_))
                      (let ((_%$%e199851199878%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g199848199875%_))))
                        (let ((_%$%hd199852199882%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199851199878%_)))
                              (_%$%tl199853199885%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199851199878%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199853199885%_))
                              (let ((_%$%e199854199888%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl199853199885%_))))
                                (let ((_%$%hd199855199892%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199854199888%_)))
                                      (_%$%tl199856199895%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199854199888%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl199856199895%_))
                                      (let ((_g200872_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl199856199895%_
                                                '0))))
                                        (begin
                                          (let ((_g200873_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g200872_)
                                                       (##values-length
                                                        _g200872_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g200873_ 2)))
                                                (error "Context expects 2 values"
                                                       _g200873_)))
                                          (let ((_%$%target199857199898%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g200872_ 0)))
                                                (_%$%tl199859199901%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g200872_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl199859199901%_))
                                                (letrec ((_%$%loop199860199904%_
                                                          (lambda (_%$%hd199858199908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause199864199911%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd199858199908%_))
                        (let ((_%$%e199861199913%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd199858199908%_))))
                          (let ((_%$%lp-hd199862199917%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e199861199913%_)))
                                (_%$%lp-tl199863199920%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e199861199913%_))))
                            (_%$%loop199860199904%_
                             _%$%lp-tl199863199920%_
                             (cons _%$%lp-hd199862199917%_
                                   _%$%clause199864199911%_))))
                        (let ((_%$%clause199865199923%_
                               (reverse _%$%clause199864199911%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier-list? _%$%hd199855199892%_))
                              (let* ((_%$%g199947199964%_
                                      (lambda (_%$%g199948199960%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g199948199960%_))))
                                     (_%$%g199946200023%_
                                      (lambda (_%$%g199948199968%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g199948199968%_))
                                            (let ((_g200874_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g199948199968%_
                                                      '0))))
                                              (begin
                                                (let ((_g200875_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g200874_)
                                                             (##values-length
                                                              _g200874_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g200875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g200875_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target199950199971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g200874_
                                                          0)))
                                                      (_%$%tl199952199974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g200874_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl199952199974%_))
                                                      (letrec ((_%$%loop199953199977%_
                                                                (lambda (_%$%hd199951199981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%clause199957199984%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd199951199981%_))
                              (let ((_%$%e199954199986%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd199951199981%_))))
                                (let ((_%$%lp-hd199955199990%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199954199986%_)))
                                      (_%$%lp-tl199956199993%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199954199986%_))))
                                  (_%$%loop199953199977%_
                                   _%$%lp-tl199956199993%_
                                   (cons _%$%lp-hd199955199990%_
                                         _%$%clause199957199984%_))))
                              (let ((_%$%clause199958199996%_
                                     (reverse _%$%clause199957199984%_)))
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
                      (cons _%$%hd199855199892%_
                            (let ((__tmp200876
                                   (lambda (_%$%g200014200017%_
                                            _%$%g200015200020%_)
                                     (cons _%$%g200014200017%_
                                           _%$%g200015200020%_))))
                              (declare (not safe))
                              (foldr__0
                               __tmp200876
                               '()
                               _%$%clause199958199996%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))))
                (_%$%loop199953199977%_ _%$%target199950199971%_ '()))
              (_%$%g199947199964%_ _%$%g199948199968%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g199947199964%_
                                             _%$%g199948199968%_)))))
                                (_%$%g199946200023%_
                                 (let ((__tmp200879
                                        (lambda (_%clause200027%_)
                                          (let* ((_%__stx200791200792%_
                                                  _%clause200027%_)
                                                 (_%$%g200031200058%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx200791200792%_)))))
                                            (let ((_%__kont200794200795%_
                                                   (lambda (_%$%g200033200143%_
                                                            _%$%g200034200145%_)
                                                     (cons _%$%g200034200145%_
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'syntax))
                               (cons _%$%g200033200143%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200796200797%_
                                                   (lambda (_%$%g200041200095%_
                                                            _%$%g200042200097%_
                                                            _%$%g200043200098%_)
                                                     (cons _%$%g200043200098%_
                                                           (cons _%$%g200042200097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax))
                                     (cons _%$%g200041200095%_ '()))
                               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx200791200792%_))
                                                  (let ((_%$%e200035200123%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%__stx200791200792%_))))
                                                    (let ((_%$%tl200037200130%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e200035200123%_)))
                                                          (_%$%hd200036200127%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e200035200123%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl200037200130%_))
                                                          (let ((_%$%e200038200133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl200037200130%_))))
                    (let ((_%$%tl200040200140%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e200038200133%_)))
                          (_%$%hd200039200137%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e200038200133%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl200040200140%_))
                          (_%__kont200794200795%_
                           _%$%hd200039200137%_
                           _%$%hd200036200127%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200040200140%_))
                              (let ((_%$%e200050200085%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl200040200140%_))))
                                (let ((_%$%tl200052200092%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200050200085%_)))
                                      (_%$%hd200051200089%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200050200085%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl200052200092%_))
                                      (_%__kont200796200797%_
                                       _%$%hd200051200089%_
                                       _%$%hd200039200137%_
                                       _%$%hd200036200127%_)
                                      (_%$%g200031200058%_))))
                              (_%$%g200031200058%_)))))
                  (_%$%g200031200058%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g200031200058%_))))))
                                       (__tmp200877
                                        (let ((__tmp200878
                                               (lambda (_%$%g200161200164%_
                                                        _%$%g200162200167%_)
                                                 (cons _%$%g200161200164%_
                                                       _%$%g200162200167%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp200878
                                           '()
                                           _%$%clause199865199923%_))))
                                   (declare (not safe))
                                   (gx#stx-map1 __tmp200879 __tmp200877))))
                              (_%$%g199847199871%_ _%$%g199848199875%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop199860199904%_
                                                   _%$%target199857199898%_
                                                   '()))
                                                (_%$%g199847199871%_
                                                 _%$%g199848199875%_)))))
                                      (_%$%g199847199871%_
                                       _%$%g199848199875%_))))
                              (_%$%g199847199871%_ _%$%g199848199875%_))))
                      (_%$%g199847199871%_ _%$%g199848199875%_)))))
          (_%$%g199846200170%_ _%stx199844%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj200841
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
           __obj200841
           'gxc#symbol-table::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200841 'symbol-table '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj200841
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj200841
           '(gensyms bindings)
           '8
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200841 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200841 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200841 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200841 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200841 ':init! '13 '#f '#f))
        (let ((__tmp200880 |gxc[1]#_g200881_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj200841 __tmp200880 '4 '#f '#f))
        (let ((__tmp200882 |gxc[1]#_g200883_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj200841 __tmp200882 '14 '#f '#f))
        (let ((__tmp200884 |gxc[1]#_g200885_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj200841 __tmp200884 '15 '#f '#f))
        (let ((__tmp200886
               (cons (cons 'gensyms |gxc[1]#_g200887_|)
                     (cons (cons 'bindings |gxc[1]#_g200888_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj200841 __tmp200886 '16 '#f '#f))
        (let ((__tmp200889
               (cons (cons 'gensyms |gxc[1]#_g200890_|)
                     (cons (cons 'bindings |gxc[1]#_g200891_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj200841 __tmp200889 '17 '#f '#f))
        (let ((__tmp200892
               (cons (cons 'gensyms |gxc[1]#_g200893_|)
                     (cons (cons 'bindings |gxc[1]#_g200894_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj200841 __tmp200892 '18 '#f '#f))
        (let ((__tmp200895
               (cons (cons 'gensyms |gxc[1]#_g200896_|)
                     (cons (cons 'bindings |gxc[1]#_g200897_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj200841 __tmp200895 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200841 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200841 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200841 '() '21 '#f '#f))
        __obj200841))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx200176%_)
        (let* ((_%$%g200180200194%_
                (lambda (_%$%g200181200190%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200181200190%_))))
               (_%$%g200179200235%_
                (lambda (_%$%g200181200198%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200181200198%_))
                      (let ((_%$%e200183200201%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g200181200198%_))))
                        (let ((_%$%hd200184200205%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200183200201%_)))
                              (_%$%tl200185200208%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200183200201%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200185200208%_))
                              (let ((_%$%e200186200211%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl200185200208%_))))
                                (let ((_%$%hd200187200215%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200186200211%_)))
                                      (_%$%tl200188200218%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200186200211%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl200188200218%_))
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
                      (cons '() (cons _%$%hd200187200215%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g200180200194%_
                                       _%$%g200181200198%_))))
                              (_%$%g200180200194%_ _%$%g200181200198%_))))
                      (_%$%g200180200194%_ _%$%g200181200198%_)))))
          (_%$%g200179200235%_ _%$stx200176%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx200239%_)
        (let* ((_%$%g200243200257%_
                (lambda (_%$%g200244200253%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200244200253%_))))
               (_%$%g200242200298%_
                (lambda (_%$%g200244200261%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200244200261%_))
                      (let ((_%$%e200246200264%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g200244200261%_))))
                        (let ((_%$%hd200247200268%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200246200264%_)))
                              (_%$%tl200248200271%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200246200264%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200248200271%_))
                              (let ((_%$%e200249200274%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl200248200271%_))))
                                (let ((_%$%hd200250200278%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200249200274%_)))
                                      (_%$%tl200251200281%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200249200274%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl200251200281%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'spawn))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'lambda))
                                                        (cons '()
                                                              (cons _%$%hd200250200278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (_%$%g200243200257%_
                                       _%$%g200244200261%_))))
                              (_%$%g200243200257%_ _%$%g200244200261%_))))
                      (_%$%g200243200257%_ _%$%g200244200261%_)))))
          (_%$%g200242200298%_ _%$stx200239%_))))))
