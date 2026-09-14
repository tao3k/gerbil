(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g202911_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202913_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202915_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202917_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202918_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202920_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202921_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202923_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202924_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202926_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202927_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx201871%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx201871%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx201874%_)
        (let* ((_%$%g201877201901%_
                (lambda (_%$%g201878201897%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g201878201897%_))))
               (_%$%g201876202200%_
                (lambda (_%$%g201878201905%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g201878201905%_))
                      (let ((_%$%e201881201908%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g201878201905%_))))
                        (let ((_%$%hd201882201912%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201881201908%_)))
                              (_%$%tl201883201915%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201881201908%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl201883201915%_))
                              (let ((_%$%e201884201918%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl201883201915%_))))
                                (let ((_%$%hd201885201922%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e201884201918%_)))
                                      (_%$%tl201886201925%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e201884201918%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl201886201925%_))
                                      (let ((_g202902_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl201886201925%_
                                                '0))))
                                        (begin
                                          (let ((_g202903_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202902_)
                                                       (##values-length
                                                        _g202902_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202903_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202903_)))
                                          (let ((_%$%target201887201928%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g202902_ 0)))
                                                (_%$%tl201889201931%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g202902_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl201889201931%_))
                                                (letrec ((_%$%loop201890201934%_
                                                          (lambda (_%$%hd201888201938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause201894201941%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd201888201938%_))
                        (let ((_%$%e201891201943%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd201888201938%_))))
                          (let ((_%$%lp-hd201892201947%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e201891201943%_)))
                                (_%$%lp-tl201893201950%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e201891201943%_))))
                            (_%$%loop201890201934%_
                             _%$%lp-tl201893201950%_
                             (cons _%$%lp-hd201892201947%_
                                   _%$%clause201894201941%_))))
                        (let ((_%$%clause201895201953%_
                               (reverse _%$%clause201894201941%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier-list? _%$%hd201885201922%_))
                              (let* ((_%$%g201977201994%_
                                      (lambda (_%$%g201978201990%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g201978201990%_))))
                                     (_%$%g201976202053%_
                                      (lambda (_%$%g201978201998%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g201978201998%_))
                                            (let ((_g202904_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g201978201998%_
                                                      '0))))
                                              (begin
                                                (let ((_g202905_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g202904_)
                                                             (##values-length
                                                              _g202904_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g202905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g202905_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target201980202001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g202904_
                                                          0)))
                                                      (_%$%tl201982202004%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g202904_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl201982202004%_))
                                                      (letrec ((_%$%loop201983202007%_
                                                                (lambda (_%$%hd201981202011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%clause201987202014%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd201981202011%_))
                              (let ((_%$%e201984202016%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd201981202011%_))))
                                (let ((_%$%lp-hd201985202020%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e201984202016%_)))
                                      (_%$%lp-tl201986202023%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e201984202016%_))))
                                  (_%$%loop201983202007%_
                                   _%$%lp-tl201986202023%_
                                   (cons _%$%lp-hd201985202020%_
                                         _%$%clause201987202014%_))))
                              (let ((_%$%clause201988202026%_
                                     (reverse _%$%clause201987202014%_)))
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
                      (cons _%$%hd201885201922%_
                            (let ((__tmp202906
                                   (lambda (_%$%g202044202047%_
                                            _%$%g202045202050%_)
                                     (cons _%$%g202044202047%_
                                           _%$%g202045202050%_))))
                              (declare (not safe))
                              (foldr__0
                               __tmp202906
                               '()
                               _%$%clause201988202026%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))))
                (_%$%loop201983202007%_ _%$%target201980202001%_ '()))
              (_%$%g201977201994%_ _%$%g201978201998%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g201977201994%_
                                             _%$%g201978201998%_)))))
                                (_%$%g201976202053%_
                                 (let ((__tmp202909
                                        (lambda (_%clause202057%_)
                                          (let* ((_%__stx202821202822%_
                                                  _%clause202057%_)
                                                 (_%$%g202061202088%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx202821202822%_)))))
                                            (let ((_%__kont202824202825%_
                                                   (lambda (_%$%g202063202173%_
                                                            _%$%g202064202175%_)
                                                     (cons _%$%g202064202175%_
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'syntax))
                               (cons _%$%g202063202173%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont202826202827%_
                                                   (lambda (_%$%g202071202125%_
                                                            _%$%g202072202127%_
                                                            _%$%g202073202128%_)
                                                     (cons _%$%g202073202128%_
                                                           (cons _%$%g202072202127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax))
                                     (cons _%$%g202071202125%_ '()))
                               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx202821202822%_))
                                                  (let ((_%$%e202065202153%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%__stx202821202822%_))))
                                                    (let ((_%$%tl202067202160%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e202065202153%_)))
                                                          (_%$%hd202066202157%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e202065202153%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl202067202160%_))
                                                          (let ((_%$%e202068202163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl202067202160%_))))
                    (let ((_%$%tl202070202170%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e202068202163%_)))
                          (_%$%hd202069202167%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e202068202163%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl202070202170%_))
                          (_%__kont202824202825%_
                           _%$%hd202069202167%_
                           _%$%hd202066202157%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202070202170%_))
                              (let ((_%$%e202080202115%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl202070202170%_))))
                                (let ((_%$%tl202082202122%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202080202115%_)))
                                      (_%$%hd202081202119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202080202115%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl202082202122%_))
                                      (_%__kont202826202827%_
                                       _%$%hd202081202119%_
                                       _%$%hd202069202167%_
                                       _%$%hd202066202157%_)
                                      (_%$%g202061202088%_))))
                              (_%$%g202061202088%_)))))
                  (_%$%g202061202088%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g202061202088%_))))))
                                       (__tmp202907
                                        (let ((__tmp202908
                                               (lambda (_%$%g202191202194%_
                                                        _%$%g202192202197%_)
                                                 (cons _%$%g202191202194%_
                                                       _%$%g202192202197%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp202908
                                           '()
                                           _%$%clause201895201953%_))))
                                   (declare (not safe))
                                   (gx#stx-map1 __tmp202909 __tmp202907))))
                              (_%$%g201877201901%_ _%$%g201878201905%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop201890201934%_
                                                   _%$%target201887201928%_
                                                   '()))
                                                (_%$%g201877201901%_
                                                 _%$%g201878201905%_)))))
                                      (_%$%g201877201901%_
                                       _%$%g201878201905%_))))
                              (_%$%g201877201901%_ _%$%g201878201905%_))))
                      (_%$%g201877201901%_ _%$%g201878201905%_)))))
          (_%$%g201876202200%_ _%stx201874%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj202871
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
           __obj202871
           'gxc#symbol-table::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj202871 'symbol-table '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202871
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202871
           '(gensyms bindings)
           '8
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj202871 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj202871 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj202871 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj202871 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj202871 ':init! '13 '#f '#f))
        (let ((__tmp202910 |gxc[1]#_g202911_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj202871 __tmp202910 '4 '#f '#f))
        (let ((__tmp202912 |gxc[1]#_g202913_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj202871 __tmp202912 '14 '#f '#f))
        (let ((__tmp202914 |gxc[1]#_g202915_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj202871 __tmp202914 '15 '#f '#f))
        (let ((__tmp202916
               (cons (cons 'gensyms |gxc[1]#_g202917_|)
                     (cons (cons 'bindings |gxc[1]#_g202918_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj202871 __tmp202916 '16 '#f '#f))
        (let ((__tmp202919
               (cons (cons 'gensyms |gxc[1]#_g202920_|)
                     (cons (cons 'bindings |gxc[1]#_g202921_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj202871 __tmp202919 '17 '#f '#f))
        (let ((__tmp202922
               (cons (cons 'gensyms |gxc[1]#_g202923_|)
                     (cons (cons 'bindings |gxc[1]#_g202924_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj202871 __tmp202922 '18 '#f '#f))
        (let ((__tmp202925
               (cons (cons 'gensyms |gxc[1]#_g202926_|)
                     (cons (cons 'bindings |gxc[1]#_g202927_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj202871 __tmp202925 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj202871 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj202871 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj202871 '() '21 '#f '#f))
        __obj202871))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx202206%_)
        (let* ((_%$%g202210202224%_
                (lambda (_%$%g202211202220%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202211202220%_))))
               (_%$%g202209202265%_
                (lambda (_%$%g202211202228%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202211202228%_))
                      (let ((_%$%e202213202231%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g202211202228%_))))
                        (let ((_%$%hd202214202235%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202213202231%_)))
                              (_%$%tl202215202238%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202213202231%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202215202238%_))
                              (let ((_%$%e202216202241%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl202215202238%_))))
                                (let ((_%$%hd202217202245%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202216202241%_)))
                                      (_%$%tl202218202248%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202216202241%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl202218202248%_))
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
                      (cons '() (cons _%$%hd202217202245%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g202210202224%_
                                       _%$%g202211202228%_))))
                              (_%$%g202210202224%_ _%$%g202211202228%_))))
                      (_%$%g202210202224%_ _%$%g202211202228%_)))))
          (_%$%g202209202265%_ _%$stx202206%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx202269%_)
        (let* ((_%$%g202273202287%_
                (lambda (_%$%g202274202283%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202274202283%_))))
               (_%$%g202272202328%_
                (lambda (_%$%g202274202291%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202274202291%_))
                      (let ((_%$%e202276202294%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g202274202291%_))))
                        (let ((_%$%hd202277202298%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202276202294%_)))
                              (_%$%tl202278202301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202276202294%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202278202301%_))
                              (let ((_%$%e202279202304%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl202278202301%_))))
                                (let ((_%$%hd202280202308%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202279202304%_)))
                                      (_%$%tl202281202311%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202279202304%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl202281202311%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'spawn))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'lambda))
                                                        (cons '()
                                                              (cons _%$%hd202280202308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (_%$%g202273202287%_
                                       _%$%g202274202291%_))))
                              (_%$%g202273202287%_ _%$%g202274202291%_))))
                      (_%$%g202273202287%_ _%$%g202274202291%_)))))
          (_%$%g202272202328%_ _%$stx202269%_))))))
