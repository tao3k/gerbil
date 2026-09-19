(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g203073_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203075_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203077_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203079_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203080_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203082_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203083_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203085_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203086_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203088_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203089_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx202033%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx202033%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx202036%_)
        (let* ((_%$%g202039202063%_
                (lambda (_%$%g202040202059%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202040202059%_))))
               (_%$%g202038202362%_
                (lambda (_%$%g202040202067%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202040202067%_))
                      (let ((_%$%e202043202070%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g202040202067%_))))
                        (let ((_%$%hd202044202074%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202043202070%_)))
                              (_%$%tl202045202077%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202043202070%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202045202077%_))
                              (let ((_%$%e202046202080%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl202045202077%_))))
                                (let ((_%$%hd202047202084%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202046202080%_)))
                                      (_%$%tl202048202087%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202046202080%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl202048202087%_))
                                      (let ((_g203064_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl202048202087%_
                                                '0))))
                                        (begin
                                          (let ((_g203065_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g203064_)
                                                       (##values-length
                                                        _g203064_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g203065_ 2)))
                                                (error "Context expects 2 values"
                                                       _g203065_)))
                                          (let ((_%$%target202049202090%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g203064_ 0)))
                                                (_%$%tl202051202093%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g203064_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl202051202093%_))
                                                (letrec ((_%$%loop202052202096%_
                                                          (lambda (_%$%hd202050202100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause202056202103%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd202050202100%_))
                        (let ((_%$%e202053202105%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd202050202100%_))))
                          (let ((_%$%lp-hd202054202109%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e202053202105%_)))
                                (_%$%lp-tl202055202112%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e202053202105%_))))
                            (_%$%loop202052202096%_
                             _%$%lp-tl202055202112%_
                             (cons _%$%lp-hd202054202109%_
                                   _%$%clause202056202103%_))))
                        (let ((_%$%clause202057202115%_
                               (reverse _%$%clause202056202103%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier-list? _%$%hd202047202084%_))
                              (let* ((_%$%g202139202156%_
                                      (lambda (_%$%g202140202152%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g202140202152%_))))
                                     (_%$%g202138202215%_
                                      (lambda (_%$%g202140202160%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g202140202160%_))
                                            (let ((_g203066_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g202140202160%_
                                                      '0))))
                                              (begin
                                                (let ((_g203067_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g203066_)
                                                             (##values-length
                                                              _g203066_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g203067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g203067_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target202142202163%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g203066_
                                                          0)))
                                                      (_%$%tl202144202166%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g203066_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl202144202166%_))
                                                      (letrec ((_%$%loop202145202169%_
                                                                (lambda (_%$%hd202143202173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%clause202149202176%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd202143202173%_))
                              (let ((_%$%e202146202178%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd202143202173%_))))
                                (let ((_%$%lp-hd202147202182%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202146202178%_)))
                                      (_%$%lp-tl202148202185%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202146202178%_))))
                                  (_%$%loop202145202169%_
                                   _%$%lp-tl202148202185%_
                                   (cons _%$%lp-hd202147202182%_
                                         _%$%clause202149202176%_))))
                              (let ((_%$%clause202150202188%_
                                     (reverse _%$%clause202149202176%_)))
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
                      (cons _%$%hd202047202084%_
                            (let ((__tmp203068
                                   (lambda (_%$%g202206202209%_
                                            _%$%g202207202212%_)
                                     (cons _%$%g202206202209%_
                                           _%$%g202207202212%_))))
                              (declare (not safe))
                              (foldr__0
                               __tmp203068
                               '()
                               _%$%clause202150202188%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))))
                (_%$%loop202145202169%_ _%$%target202142202163%_ '()))
              (_%$%g202139202156%_ _%$%g202140202160%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g202139202156%_
                                             _%$%g202140202160%_)))))
                                (_%$%g202138202215%_
                                 (let ((__tmp203071
                                        (lambda (_%clause202219%_)
                                          (let* ((_%__stx202983202984%_
                                                  _%clause202219%_)
                                                 (_%$%g202223202250%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx202983202984%_)))))
                                            (let ((_%__kont202986202987%_
                                                   (lambda (_%$%g202225202335%_
                                                            _%$%g202226202337%_)
                                                     (cons _%$%g202226202337%_
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'syntax))
                               (cons _%$%g202225202335%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont202988202989%_
                                                   (lambda (_%$%g202233202287%_
                                                            _%$%g202234202289%_
                                                            _%$%g202235202290%_)
                                                     (cons _%$%g202235202290%_
                                                           (cons _%$%g202234202289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax))
                                     (cons _%$%g202233202287%_ '()))
                               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx202983202984%_))
                                                  (let ((_%$%e202227202315%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%__stx202983202984%_))))
                                                    (let ((_%$%tl202229202322%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e202227202315%_)))
                                                          (_%$%hd202228202319%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e202227202315%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl202229202322%_))
                                                          (let ((_%$%e202230202325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl202229202322%_))))
                    (let ((_%$%tl202232202332%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e202230202325%_)))
                          (_%$%hd202231202329%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e202230202325%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl202232202332%_))
                          (_%__kont202986202987%_
                           _%$%hd202231202329%_
                           _%$%hd202228202319%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202232202332%_))
                              (let ((_%$%e202242202277%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl202232202332%_))))
                                (let ((_%$%tl202244202284%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202242202277%_)))
                                      (_%$%hd202243202281%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202242202277%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl202244202284%_))
                                      (_%__kont202988202989%_
                                       _%$%hd202243202281%_
                                       _%$%hd202231202329%_
                                       _%$%hd202228202319%_)
                                      (_%$%g202223202250%_))))
                              (_%$%g202223202250%_)))))
                  (_%$%g202223202250%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g202223202250%_))))))
                                       (__tmp203069
                                        (let ((__tmp203070
                                               (lambda (_%$%g202353202356%_
                                                        _%$%g202354202359%_)
                                                 (cons _%$%g202353202356%_
                                                       _%$%g202354202359%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp203070
                                           '()
                                           _%$%clause202057202115%_))))
                                   (declare (not safe))
                                   (gx#stx-map1 __tmp203071 __tmp203069))))
                              (_%$%g202039202063%_ _%$%g202040202067%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop202052202096%_
                                                   _%$%target202049202090%_
                                                   '()))
                                                (_%$%g202039202063%_
                                                 _%$%g202040202067%_)))))
                                      (_%$%g202039202063%_
                                       _%$%g202040202067%_))))
                              (_%$%g202039202063%_ _%$%g202040202067%_))))
                      (_%$%g202039202063%_ _%$%g202040202067%_)))))
          (_%$%g202038202362%_ _%stx202036%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj203033
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
           __obj203033
           'gxc#symbol-table::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj203033 'symbol-table '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj203033
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj203033
           '(gensyms bindings)
           '8
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj203033 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj203033 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj203033 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj203033 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj203033 ':init! '13 '#f '#f))
        (let ((__tmp203072 |gxc[1]#_g203073_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj203033 __tmp203072 '4 '#f '#f))
        (let ((__tmp203074 |gxc[1]#_g203075_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj203033 __tmp203074 '14 '#f '#f))
        (let ((__tmp203076 |gxc[1]#_g203077_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj203033 __tmp203076 '15 '#f '#f))
        (let ((__tmp203078
               (cons (cons 'gensyms |gxc[1]#_g203079_|)
                     (cons (cons 'bindings |gxc[1]#_g203080_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj203033 __tmp203078 '16 '#f '#f))
        (let ((__tmp203081
               (cons (cons 'gensyms |gxc[1]#_g203082_|)
                     (cons (cons 'bindings |gxc[1]#_g203083_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj203033 __tmp203081 '17 '#f '#f))
        (let ((__tmp203084
               (cons (cons 'gensyms |gxc[1]#_g203085_|)
                     (cons (cons 'bindings |gxc[1]#_g203086_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj203033 __tmp203084 '18 '#f '#f))
        (let ((__tmp203087
               (cons (cons 'gensyms |gxc[1]#_g203088_|)
                     (cons (cons 'bindings |gxc[1]#_g203089_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj203033 __tmp203087 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj203033 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj203033 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj203033 '() '21 '#f '#f))
        __obj203033))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx202368%_)
        (let* ((_%$%g202372202386%_
                (lambda (_%$%g202373202382%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202373202382%_))))
               (_%$%g202371202427%_
                (lambda (_%$%g202373202390%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202373202390%_))
                      (let ((_%$%e202375202393%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g202373202390%_))))
                        (let ((_%$%hd202376202397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202375202393%_)))
                              (_%$%tl202377202400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202375202393%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202377202400%_))
                              (let ((_%$%e202378202403%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl202377202400%_))))
                                (let ((_%$%hd202379202407%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202378202403%_)))
                                      (_%$%tl202380202410%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202378202403%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl202380202410%_))
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
                      (cons '() (cons _%$%hd202379202407%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g202372202386%_
                                       _%$%g202373202390%_))))
                              (_%$%g202372202386%_ _%$%g202373202390%_))))
                      (_%$%g202372202386%_ _%$%g202373202390%_)))))
          (_%$%g202371202427%_ _%$stx202368%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx202431%_)
        (let* ((_%$%g202435202449%_
                (lambda (_%$%g202436202445%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g202436202445%_))))
               (_%$%g202434202490%_
                (lambda (_%$%g202436202453%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g202436202453%_))
                      (let ((_%$%e202438202456%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g202436202453%_))))
                        (let ((_%$%hd202439202460%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e202438202456%_)))
                              (_%$%tl202440202463%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e202438202456%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl202440202463%_))
                              (let ((_%$%e202441202466%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl202440202463%_))))
                                (let ((_%$%hd202442202470%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e202441202466%_)))
                                      (_%$%tl202443202473%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e202441202466%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl202443202473%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'spawn))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'lambda))
                                                        (cons '()
                                                              (cons _%$%hd202442202470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (_%$%g202435202449%_
                                       _%$%g202436202453%_))))
                              (_%$%g202435202449%_ _%$%g202436202453%_))))
                      (_%$%g202435202449%_ _%$%g202436202453%_)))))
          (_%$%g202434202490%_ _%$stx202431%_))))))
