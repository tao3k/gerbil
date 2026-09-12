(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g280789_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280796_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280798_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280800_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280802_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280804_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280816_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280818_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280820_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280822_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280824_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx274247%_)
        (let* ((_%$%g274251274269%_
                (lambda (_%$%g274252274265%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274252274265%_))))
               (_%$%g274250274324%_
                (lambda (_%$%g274252274273%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274252274273%_))
                      (let ((_%$%e274255274276%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274252274273%_))))
                        (let ((_%$%hd274256274280%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274255274276%_)))
                              (_%$%tl274257274283%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274255274276%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl274257274283%_))
                              (let ((_%$%e274258274286%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl274257274283%_))))
                                (let ((_%$%hd274259274290%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e274258274286%_)))
                                      (_%$%tl274260274293%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e274258274286%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl274260274293%_))
                                      (let ((_%$%e274261274296%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl274260274293%_))))
                                        (let ((_%$%hd274262274300%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e274261274296%_)))
                                              (_%$%tl274263274303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e274261274296%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl274263274303%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd274259274290%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-type!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd274259274290%_ '()))
                      (cons _%$%hd274262274300%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g274251274269%_
                                                   _%$%g274252274273%_))
                                              (_%$%g274251274269%_
                                               _%$%g274252274273%_))))
                                      (_%$%g274251274269%_
                                       _%$%g274252274273%_))))
                              (_%$%g274251274269%_ _%$%g274252274273%_))))
                      (_%$%g274251274269%_ _%$%g274252274273%_)))))
          (_%$%g274250274324%_ _%$stx274247%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx274328%_)
        (let* ((_%$%g274332274350%_
                (lambda (_%$%g274333274346%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274333274346%_))))
               (_%$%g274331274405%_
                (lambda (_%$%g274333274354%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274333274354%_))
                      (let ((_%$%e274336274357%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274333274354%_))))
                        (let ((_%$%hd274337274361%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274336274357%_)))
                              (_%$%tl274338274364%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274336274357%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl274338274364%_))
                              (let ((_%$%e274339274367%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl274338274364%_))))
                                (let ((_%$%hd274340274371%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e274339274367%_)))
                                      (_%$%tl274341274374%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e274339274367%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl274341274374%_))
                                      (let ((_%$%e274342274377%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl274341274374%_))))
                                        (let ((_%$%hd274343274381%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e274342274377%_)))
                                              (_%$%tl274344274384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e274342274377%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl274344274384%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd274340274371%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-class!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd274340274371%_ '()))
                      (cons _%$%hd274343274381%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g274332274350%_
                                                   _%$%g274333274354%_))
                                              (_%$%g274332274350%_
                                               _%$%g274333274354%_))))
                                      (_%$%g274332274350%_
                                       _%$%g274333274354%_))))
                              (_%$%g274332274350%_ _%$%g274333274354%_))))
                      (_%$%g274332274350%_ _%$%g274333274354%_)))))
          (_%$%g274331274405%_ _%$stx274328%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx274409%_)
        (let* ((_%$%g274413274442%_
                (lambda (_%$%g274414274438%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274414274438%_))))
               (_%$%g274412274538%_
                (lambda (_%$%g274414274446%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274414274446%_))
                      (let ((_%$%e274417274449%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274414274446%_))))
                        (let ((_%$%hd274418274453%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274417274449%_)))
                              (_%$%tl274419274456%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274417274449%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl274419274456%_))
                              (let ((_g280767_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl274419274456%_
                                        '0))))
                                (begin
                                  (let ((_g280768_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g280767_)
                                               (##values-length _g280767_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g280768_ 2)))
                                        (error "Context expects 2 values"
                                               _g280768_)))
                                  (let ((_%$%target274420274459%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280767_ 0)))
                                        (_%$%tl274422274462%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280767_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl274422274462%_))
                                        (letrec ((_%$%loop274423274465%_
                                                  (lambda (_%$%hd274421274469%_
                                                           _%$%type274427274472%_
                                                           _%$%symbol274428274473%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd274421274469%_))
                                                        (let ((_%$%e274424274475%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd274421274469%_))))
                  (let ((_%$%lp-hd274425274479%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e274424274475%_)))
                        (_%$%lp-tl274426274482%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e274424274475%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd274425274479%_))
                        (let ((_%$%e274431274485%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd274425274479%_))))
                          (let ((_%$%hd274432274489%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e274431274485%_)))
                                (_%$%tl274433274492%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e274431274485%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl274433274492%_))
                                (let ((_%$%e274434274495%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl274433274492%_))))
                                  (let ((_%$%hd274435274499%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e274434274495%_)))
                                        (_%$%tl274436274502%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e274434274495%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl274436274502%_))
                                        (_%$%loop274423274465%_
                                         _%$%lp-tl274426274482%_
                                         (cons _%$%hd274435274499%_
                                               _%$%type274427274472%_)
                                         (cons _%$%hd274432274489%_
                                               _%$%symbol274428274473%_))
                                        (_%$%g274413274442%_
                                         _%$%g274414274446%_))))
                                (_%$%g274413274442%_ _%$%g274414274446%_))))
                        (_%$%g274413274442%_ _%$%g274414274446%_))))
                (let ((_%$%type274429274505%_ (reverse _%$%type274427274472%_))
                      (_%$%symbol274430274507%_
                       (reverse _%$%symbol274428274473%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%type274429274505%_
                             _%$%symbol274430274507%_))
                          (let ((__tmp280769
                                 (lambda (_%$%g274526274530%_
                                          _%$%g274527274533%_
                                          _%$%g274528274535%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%$%g274527274533%_
                                                     (cons _%$%g274526274530%_
                                                           '())))
                                         _%$%g274528274535%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp280769
                             '()
                             _%$%type274429274505%_
                             _%$%symbol274430274507%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop274423274465%_
                                           _%$%target274420274459%_
                                           '()
                                           '()))
                                        (_%$%g274413274442%_
                                         _%$%g274414274446%_)))))
                              (_%$%g274413274442%_ _%$%g274414274446%_))))
                      (_%$%g274413274442%_ _%$%g274414274446%_)))))
          (_%$%g274412274538%_ _%$stx274409%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx274543%_)
        (let* ((_%__stx280078280079%_ _%$stx274543%_)
               (_%$%g274548274590%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx280078280079%_)))))
          (let ((_%__kont280081280082%_
                 (lambda (_%$%g274550274718%_
                          _%$%g274551274720%_
                          _%$%g274552274721%_
                          _%$%g274553274722%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g274553274722%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g274552274721%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%g274551274720%_
                                                       '()))
                                           (cons _%$%g274550274718%_ '())))))))
                (_%__kont280083280084%_
                 (lambda (_%$%g274569274637%_
                          _%$%g274570274639%_
                          _%$%g274571274640%_
                          _%$%g274572274641%_)
                   (cons _%$%g274572274641%_
                         (cons _%$%g274571274640%_
                               (cons _%$%g274570274639%_
                                     (cons _%$%g274569274637%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match280117280118%_
                   (lambda (_%$%e274554274668%_
                            _%$%hd274555274672%_
                            _%$%tl274556274675%_
                            _%$%e274557274678%_
                            _%$%hd274558274682%_
                            _%$%tl274559274685%_
                            _%$%e274560274688%_
                            _%$%hd274561274692%_
                            _%$%tl274562274695%_
                            _%$%e274563274698%_
                            _%$%hd274564274702%_
                            _%$%tl274565274705%_
                            _%$%e274566274708%_
                            _%$%hd274567274712%_
                            _%$%tl274568274715%_)
                     (let ((_%$%g274550274718%_ _%$%hd274567274712%_)
                           (_%$%g274551274720%_ _%$%hd274564274702%_)
                           (_%$%g274552274721%_ _%$%hd274561274692%_)
                           (_%$%g274553274722%_ _%$%hd274558274682%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g274553274722%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g274552274721%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g274551274720%_)))
                           (_%__kont280081280082%_
                            _%$%g274550274718%_
                            _%$%g274551274720%_
                            _%$%g274552274721%_
                            _%$%g274553274722%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g274548274590%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx280078280079%_))
                  (let ((_%$%e274554274668%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx280078280079%_))))
                    (let ((_%$%tl274556274675%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e274554274668%_)))
                          (_%$%hd274555274672%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e274554274668%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl274556274675%_))
                          (let ((_%$%e274557274678%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl274556274675%_))))
                            (let ((_%$%tl274559274685%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e274557274678%_)))
                                  (_%$%hd274558274682%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e274557274678%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl274559274685%_))
                                  (let ((_%$%e274560274688%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl274559274685%_))))
                                    (let ((_%$%tl274562274695%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e274560274688%_)))
                                          (_%$%hd274561274692%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e274560274688%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl274562274695%_))
                                          (let ((_%$%e274563274698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl274562274695%_))))
                                            (let ((_%$%tl274565274705%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e274563274698%_)))
                                                  (_%$%hd274564274702%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e274563274698%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl274565274705%_))
                                                  (let ((_%$%e274566274708%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl274565274705%_))))
                                                    (let ((_%$%tl274568274715%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e274566274708%_)))
                                                          (_%$%hd274567274712%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e274566274708%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl274568274715%_))
                                                          (_%__match280117280118%_
                                                           _%$%e274554274668%_
                                                           _%$%hd274555274672%_
                                                           _%$%tl274556274675%_
                                                           _%$%e274557274678%_
                                                           _%$%hd274558274682%_
                                                           _%$%tl274559274685%_
                                                           _%$%e274560274688%_
                                                           _%$%hd274561274692%_
                                                           _%$%tl274562274695%_
                                                           _%$%e274563274698%_
                                                           _%$%hd274564274702%_
                                                           _%$%tl274565274705%_
                                                           _%$%e274566274708%_
                                                           _%$%hd274567274712%_
                                                           _%$%tl274568274715%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g274548274590%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl274565274705%_))
                                                      (_%__kont280083280084%_
                                                       _%$%hd274564274702%_
                                                       _%$%hd274561274692%_
                                                       _%$%hd274558274682%_
                                                       _%$%hd274555274672%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g274548274590%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g274548274590%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g274548274590%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g274548274590%_)))))
                  (let () (declare (not safe)) (_%$%g274548274590%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx274747%_)
        (let* ((_%$%g274751274786%_
                (lambda (_%$%g274752274782%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274752274782%_))))
               (_%$%g274750274899%_
                (lambda (_%$%g274752274790%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274752274790%_))
                      (let ((_%$%e274756274793%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274752274790%_))))
                        (let ((_%$%hd274757274797%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274756274793%_)))
                              (_%$%tl274758274800%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274756274793%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl274758274800%_))
                              (let ((_g280770_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl274758274800%_
                                        '0))))
                                (begin
                                  (let ((_g280771_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g280770_)
                                               (##values-length _g280770_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g280771_ 2)))
                                        (error "Context expects 2 values"
                                               _g280771_)))
                                  (let ((_%$%target274759274803%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280770_ 0)))
                                        (_%$%tl274761274806%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280770_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl274761274806%_))
                                        (letrec ((_%$%loop274762274809%_
                                                  (lambda (_%$%hd274760274813%_
                                                           _%$%symbol274766274816%_
                                                           _%$%method274767274817%_
                                                           _%$%type-t274768274818%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd274760274813%_))
                                                        (let ((_%$%e274763274820%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd274760274813%_))))
                  (let ((_%$%lp-hd274764274824%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e274763274820%_)))
                        (_%$%lp-tl274765274827%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e274763274820%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd274764274824%_))
                        (let ((_%$%e274772274830%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd274764274824%_))))
                          (let ((_%$%hd274773274834%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e274772274830%_)))
                                (_%$%tl274774274837%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e274772274830%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl274774274837%_))
                                (let ((_%$%e274775274840%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl274774274837%_))))
                                  (let ((_%$%hd274776274844%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e274775274840%_)))
                                        (_%$%tl274777274847%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e274775274840%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl274777274847%_))
                                        (let ((_%$%e274778274850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl274777274847%_))))
                                          (let ((_%$%hd274779274854%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e274778274850%_)))
                                                (_%$%tl274780274857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e274778274850%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl274780274857%_))
                                                (_%$%loop274762274809%_
                                                 _%$%lp-tl274765274827%_
                                                 (cons _%$%hd274779274854%_
                                                       _%$%symbol274766274816%_)
                                                 (cons _%$%hd274776274844%_
                                                       _%$%method274767274817%_)
                                                 (cons _%$%hd274773274834%_
                                                       _%$%type-t274768274818%_))
                                                (_%$%g274751274786%_
                                                 _%$%g274752274790%_))))
                                        (_%$%g274751274786%_
                                         _%$%g274752274790%_))))
                                (_%$%g274751274786%_ _%$%g274752274790%_))))
                        (_%$%g274751274786%_ _%$%g274752274790%_))))
                (let ((_%$%symbol274769274860%_
                       (reverse _%$%symbol274766274816%_))
                      (_%$%method274770274862%_
                       (reverse _%$%method274767274817%_))
                      (_%$%type-t274771274863%_
                       (reverse _%$%type-t274768274818%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%symbol274769274860%_
                             _%$%method274770274862%_
                             _%$%type-t274771274863%_))
                          (let ((__tmp280772
                                 (lambda (_%$%g274884274889%_
                                          _%$%g274885274892%_
                                          _%$%g274886274894%_
                                          _%$%g274887274896%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-method))
                                               (cons _%$%g274886274894%_
                                                     (cons _%$%g274885274892%_
                                                           (cons _%$%g274884274889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%$%g274887274896%_))))
                            (declare (not safe))
                            (__foldr*
                             __tmp280772
                             '()
                             _%$%symbol274769274860%_
                             _%$%method274770274862%_
                             _%$%type-t274771274863%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop274762274809%_
                                           _%$%target274759274803%_
                                           '()
                                           '()
                                           '()))
                                        (_%$%g274751274786%_
                                         _%$%g274752274790%_)))))
                              (_%$%g274751274786%_ _%$%g274752274790%_))))
                      (_%$%g274751274786%_ _%$%g274752274790%_)))))
          (_%$%g274750274899%_ _%$stx274747%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx274904%_)
        (let* ((_%$%g274908274941%_
                (lambda (_%$%g274909274937%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274909274937%_))))
               (_%$%g274907275051%_
                (lambda (_%$%g274909274945%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274909274945%_))
                      (let ((_%$%e274913274948%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274909274945%_))))
                        (let ((_%$%hd274914274952%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274913274948%_)))
                              (_%$%tl274915274955%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274913274948%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl274915274955%_))
                              (let ((_%$%e274916274958%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl274915274955%_))))
                                (let ((_%$%hd274917274962%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e274916274958%_)))
                                      (_%$%tl274918274965%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e274916274958%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl274918274965%_))
                                      (let ((_g280773_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl274918274965%_
                                                '0))))
                                        (begin
                                          (let ((_g280774_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g280773_)
                                                       (##values-length
                                                        _g280773_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g280774_ 2)))
                                                (error "Context expects 2 values"
                                                       _g280774_)))
                                          (let ((_%$%target274919274968%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g280773_ 0)))
                                                (_%$%tl274921274971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g280773_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl274921274971%_))
                                                (letrec ((_%$%loop274922274974%_
                                                          (lambda (_%$%hd274920274978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%symbol274926274981%_
                           _%$%method274927274982%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd274920274978%_))
                        (let ((_%$%e274923274984%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd274920274978%_))))
                          (let ((_%$%lp-hd274924274988%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e274923274984%_)))
                                (_%$%lp-tl274925274991%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e274923274984%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd274924274988%_))
                                (let ((_%$%e274930274994%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e
                                          _%$%lp-hd274924274988%_))))
                                  (let ((_%$%hd274931274998%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e274930274994%_)))
                                        (_%$%tl274932275001%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e274930274994%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl274932275001%_))
                                        (let ((_%$%e274933275004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl274932275001%_))))
                                          (let ((_%$%hd274934275008%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e274933275004%_)))
                                                (_%$%tl274935275011%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e274933275004%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl274935275011%_))
                                                (_%$%loop274922274974%_
                                                 _%$%lp-tl274925274991%_
                                                 (cons _%$%hd274934275008%_
                                                       _%$%symbol274926274981%_)
                                                 (cons _%$%hd274931274998%_
                                                       _%$%method274927274982%_))
                                                (_%$%g274908274941%_
                                                 _%$%g274909274945%_))))
                                        (_%$%g274908274941%_
                                         _%$%g274909274945%_))))
                                (_%$%g274908274941%_ _%$%g274909274945%_))))
                        (let ((_%$%symbol274928275014%_
                               (reverse _%$%symbol274926274981%_))
                              (_%$%method274929275016%_
                               (reverse _%$%method274927274982%_)))
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'begin))
                                (begin
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-check-splice-targets
                                     _%$%symbol274928275014%_
                                     _%$%method274929275016%_))
                                  (let ((__tmp280775
                                         (lambda (_%$%g275039275043%_
                                                  _%$%g275040275046%_
                                                  _%$%g275041275048%_)
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method))
                                                       (cons _%$%hd274917274962%_
                                                             (cons _%$%g275040275046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g275039275043%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%g275041275048%_))))
                                    (declare (not safe))
                                    (foldr__1
                                     __tmp280775
                                     '()
                                     _%$%symbol274928275014%_
                                     _%$%method274929275016%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop274922274974%_
                                                   _%$%target274919274968%_
                                                   '()
                                                   '()))
                                                (_%$%g274908274941%_
                                                 _%$%g274909274945%_)))))
                                      (_%$%g274908274941%_
                                       _%$%g274909274945%_))))
                              (_%$%g274908274941%_ _%$%g274909274945%_))))
                      (_%$%g274908274941%_ _%$%g274909274945%_)))))
          (_%$%g274907275051%_ _%$stx274904%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx275056%_)
        (let* ((_%$%g275060275074%_
                (lambda (_%$%g275061275070%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275061275070%_))))
               (_%$%g275059275115%_
                (lambda (_%$%g275061275078%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275061275078%_))
                      (let ((_%$%e275063275081%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275061275078%_))))
                        (let ((_%$%hd275064275085%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275063275081%_)))
                              (_%$%tl275065275088%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275063275081%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275065275088%_))
                              (let ((_%$%e275066275091%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275065275088%_))))
                                (let ((_%$%hd275067275095%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275066275091%_)))
                                      (_%$%tl275068275098%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275066275091%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl275068275098%_))
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
                                                        (cons _%$%hd275067275095%_
                                                              '()))
                                                  '()))
                                      (_%$%g275060275074%_
                                       _%$%g275061275078%_))))
                              (_%$%g275060275074%_ _%$%g275061275078%_))))
                      (_%$%g275060275074%_ _%$%g275061275078%_)))))
          (_%$%g275059275115%_ _%$stx275056%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx275119%_)
        (let* ((_%$%g275123275177%_
                (lambda (_%$%g275124275173%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275124275173%_))))
               (_%$%g275122275358%_
                (lambda (_%$%g275124275181%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275124275181%_))
                      (let ((_%$%e275136275184%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275124275181%_))))
                        (let ((_%$%hd275137275188%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275136275184%_)))
                              (_%$%tl275138275191%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275136275184%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275138275191%_))
                              (let ((_%$%e275139275194%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275138275191%_))))
                                (let ((_%$%hd275140275198%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275139275194%_)))
                                      (_%$%tl275141275201%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275139275194%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl275141275201%_))
                                      (let ((_%$%e275142275204%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl275141275201%_))))
                                        (let ((_%$%hd275143275208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275142275204%_)))
                                              (_%$%tl275144275211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275142275204%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl275144275211%_))
                                              (let ((_%$%e275145275214%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl275144275211%_))))
                                                (let ((_%$%hd275146275218%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e275145275214%_)))
                                                      (_%$%tl275147275221%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e275145275214%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl275147275221%_))
                                                      (let ((_%$%e275148275224%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl275147275221%_))))
                (let ((_%$%hd275149275228%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e275148275224%_)))
                      (_%$%tl275150275231%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e275148275224%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl275150275231%_))
                      (let ((_%$%e275151275234%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl275150275231%_))))
                        (let ((_%$%hd275152275238%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275151275234%_)))
                              (_%$%tl275153275241%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275151275234%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275153275241%_))
                              (let ((_%$%e275154275244%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275153275241%_))))
                                (let ((_%$%hd275155275248%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275154275244%_)))
                                      (_%$%tl275156275251%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275154275244%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl275156275251%_))
                                      (let ((_%$%e275157275254%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl275156275251%_))))
                                        (let ((_%$%hd275158275258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275157275254%_)))
                                              (_%$%tl275159275261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275157275254%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl275159275261%_))
                                              (let ((_%$%e275160275264%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl275159275261%_))))
                                                (let ((_%$%hd275161275268%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e275160275264%_)))
                                                      (_%$%tl275162275271%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e275160275264%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl275162275271%_))
                                                      (let ((_%$%e275163275274%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl275162275271%_))))
                (let ((_%$%hd275164275278%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e275163275274%_)))
                      (_%$%tl275165275281%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e275163275274%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl275165275281%_))
                      (let ((_%$%e275166275284%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl275165275281%_))))
                        (let ((_%$%hd275167275288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275166275284%_)))
                              (_%$%tl275168275291%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275166275284%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275168275291%_))
                              (let ((_%$%e275169275294%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275168275291%_))))
                                (let ((_%$%hd275170275298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275169275294%_)))
                                      (_%$%tl275171275301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275169275294%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl275171275301%_))
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
                                                        (cons _%$%hd275140275198%_
                                                              '()))
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'quote))
                      (cons _%$%hd275143275208%_ '()))
                (cons (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd275146275218%_ '()))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%$%hd275149275228%_ '()))
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote))
                                        (cons _%$%hd275152275238%_ '()))
                                  (cons (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote))
                                              (cons _%$%hd275155275248%_ '()))
                                        (cons _%$%hd275158275258%_
                                              (cons _%$%hd275161275268%_
                                                    (cons _%$%hd275164275278%_
                                                          (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd275167275288%_ '()))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd275170275298%_ '()))
                              '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g275123275177%_
                                       _%$%g275124275181%_))))
                              (_%$%g275123275177%_ _%$%g275124275181%_))))
                      (_%$%g275123275177%_ _%$%g275124275181%_))))
              (_%$%g275123275177%_ _%$%g275124275181%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g275123275177%_
                                               _%$%g275124275181%_))))
                                      (_%$%g275123275177%_
                                       _%$%g275124275181%_))))
                              (_%$%g275123275177%_ _%$%g275124275181%_))))
                      (_%$%g275123275177%_ _%$%g275124275181%_))))
              (_%$%g275123275177%_ _%$%g275124275181%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g275123275177%_
                                               _%$%g275124275181%_))))
                                      (_%$%g275123275177%_
                                       _%$%g275124275181%_))))
                              (_%$%g275123275177%_ _%$%g275124275181%_))))
                      (_%$%g275123275177%_ _%$%g275124275181%_)))))
          (_%$%g275122275358%_ _%$stx275119%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx275362%_)
        (let* ((_%$%g275366275380%_
                (lambda (_%$%g275367275376%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275367275376%_))))
               (_%$%g275365275421%_
                (lambda (_%$%g275367275384%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275367275384%_))
                      (let ((_%$%e275369275387%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275367275384%_))))
                        (let ((_%$%hd275370275391%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275369275387%_)))
                              (_%$%tl275371275394%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275369275387%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275371275394%_))
                              (let ((_%$%e275372275397%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275371275394%_))))
                                (let ((_%$%hd275373275401%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275372275397%_)))
                                      (_%$%tl275374275404%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275372275397%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl275374275404%_))
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
                                                        (cons _%$%hd275373275401%_
                                                              '()))
                                                  '()))
                                      (_%$%g275366275380%_
                                       _%$%g275367275384%_))))
                              (_%$%g275366275380%_ _%$%g275367275384%_))))
                      (_%$%g275366275380%_ _%$%g275367275384%_)))))
          (_%$%g275365275421%_ _%$stx275362%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx275425%_)
        (let* ((_%$%g275429275443%_
                (lambda (_%$%g275430275439%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275430275439%_))))
               (_%$%g275428275484%_
                (lambda (_%$%g275430275447%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275430275447%_))
                      (let ((_%$%e275432275450%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275430275447%_))))
                        (let ((_%$%hd275433275454%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275432275450%_)))
                              (_%$%tl275434275457%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275432275450%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275434275457%_))
                              (let ((_%$%e275435275460%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275434275457%_))))
                                (let ((_%$%hd275436275464%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275435275460%_)))
                                      (_%$%tl275437275467%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275435275460%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl275437275467%_))
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
                                                        (cons _%$%hd275436275464%_
                                                              '()))
                                                  '()))
                                      (_%$%g275429275443%_
                                       _%$%g275430275447%_))))
                              (_%$%g275429275443%_ _%$%g275430275447%_))))
                      (_%$%g275429275443%_ _%$%g275430275447%_)))))
          (_%$%g275428275484%_ _%$stx275425%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx275488%_)
        (let* ((_%$%g275492275514%_
                (lambda (_%$%g275493275510%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275493275510%_))))
               (_%$%g275491275583%_
                (lambda (_%$%g275493275518%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275493275518%_))
                      (let ((_%$%e275497275521%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275493275518%_))))
                        (let ((_%$%hd275498275525%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275497275521%_)))
                              (_%$%tl275499275528%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275497275521%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275499275528%_))
                              (let ((_%$%e275500275531%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275499275528%_))))
                                (let ((_%$%hd275501275535%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275500275531%_)))
                                      (_%$%tl275502275538%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275500275531%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl275502275538%_))
                                      (let ((_%$%e275503275541%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl275502275538%_))))
                                        (let ((_%$%hd275504275545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275503275541%_)))
                                              (_%$%tl275505275548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275503275541%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl275505275548%_))
                                              (let ((_%$%e275506275551%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl275505275548%_))))
                                                (let ((_%$%hd275507275555%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e275506275551%_)))
                                                      (_%$%tl275508275558%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e275506275551%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl275508275558%_))
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
                                (cons _%$%hd275501275535%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd275504275545%_ '()))
                                (cons _%$%hd275507275555%_ '()))))
              (_%$%g275492275514%_ _%$%g275493275518%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g275492275514%_
                                               _%$%g275493275518%_))))
                                      (_%$%g275492275514%_
                                       _%$%g275493275518%_))))
                              (_%$%g275492275514%_ _%$%g275493275518%_))))
                      (_%$%g275492275514%_ _%$%g275493275518%_)))))
          (_%$%g275491275583%_ _%$stx275488%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx275587%_)
        (let* ((_%$%g275591275613%_
                (lambda (_%$%g275592275609%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275592275609%_))))
               (_%$%g275590275682%_
                (lambda (_%$%g275592275617%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275592275617%_))
                      (let ((_%$%e275596275620%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275592275617%_))))
                        (let ((_%$%hd275597275624%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275596275620%_)))
                              (_%$%tl275598275627%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275596275620%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275598275627%_))
                              (let ((_%$%e275599275630%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275598275627%_))))
                                (let ((_%$%hd275600275634%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275599275630%_)))
                                      (_%$%tl275601275637%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275599275630%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl275601275637%_))
                                      (let ((_%$%e275602275640%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl275601275637%_))))
                                        (let ((_%$%hd275603275644%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275602275640%_)))
                                              (_%$%tl275604275647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275602275640%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl275604275647%_))
                                              (let ((_%$%e275605275650%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl275604275647%_))))
                                                (let ((_%$%hd275606275654%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e275605275650%_)))
                                                      (_%$%tl275607275657%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e275605275650%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl275607275657%_))
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
                                (cons _%$%hd275600275634%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd275603275644%_ '()))
                                (cons _%$%hd275606275654%_ '()))))
              (_%$%g275591275613%_ _%$%g275592275617%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g275591275613%_
                                               _%$%g275592275617%_))))
                                      (_%$%g275591275613%_
                                       _%$%g275592275617%_))))
                              (_%$%g275591275613%_ _%$%g275592275617%_))))
                      (_%$%g275591275613%_ _%$%g275592275617%_)))))
          (_%$%g275590275682%_ _%$stx275587%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx275686%_)
        (let* ((_%$%g275690275704%_
                (lambda (_%$%g275691275700%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275691275700%_))))
               (_%$%g275689275745%_
                (lambda (_%$%g275691275708%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275691275708%_))
                      (let ((_%$%e275693275711%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275691275708%_))))
                        (let ((_%$%hd275694275715%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275693275711%_)))
                              (_%$%tl275695275718%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275693275711%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275695275718%_))
                              (let ((_%$%e275696275721%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275695275718%_))))
                                (let ((_%$%hd275697275725%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275696275721%_)))
                                      (_%$%tl275698275728%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275696275721%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl275698275728%_))
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
                                                        (cons _%$%hd275697275725%_
                                                              '()))
                                                  '()))
                                      (_%$%g275690275704%_
                                       _%$%g275691275708%_))))
                              (_%$%g275690275704%_ _%$%g275691275708%_))))
                      (_%$%g275690275704%_ _%$%g275691275708%_)))))
          (_%$%g275689275745%_ _%$stx275686%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx275749%_)
        (let* ((_%$%g275753275771%_
                (lambda (_%$%g275754275767%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275754275767%_))))
               (_%$%g275752275826%_
                (lambda (_%$%g275754275775%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275754275775%_))
                      (let ((_%$%e275757275778%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275754275775%_))))
                        (let ((_%$%hd275758275782%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275757275778%_)))
                              (_%$%tl275759275785%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275757275778%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275759275785%_))
                              (let ((_%$%e275760275788%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275759275785%_))))
                                (let ((_%$%hd275761275792%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275760275788%_)))
                                      (_%$%tl275762275795%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275760275788%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl275762275795%_))
                                      (let ((_%$%e275763275798%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl275762275795%_))))
                                        (let ((_%$%hd275764275802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275763275798%_)))
                                              (_%$%tl275765275805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275763275798%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl275765275805%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!interface))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd275761275792%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd275764275802%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g275753275771%_
                                               _%$%g275754275775%_))))
                                      (_%$%g275753275771%_
                                       _%$%g275754275775%_))))
                              (_%$%g275753275771%_ _%$%g275754275775%_))))
                      (_%$%g275753275771%_ _%$%g275754275775%_)))))
          (_%$%g275752275826%_ _%$stx275749%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx275830%_)
        (let* ((_%__stx280146280147%_ _%$stx275830%_)
               (_%$%g275837275898%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx280146280147%_)))))
          (let ((_%__kont280149280150%_
                 (lambda (_%$%g275839276136%_ _%$%g275840276138%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g275840276138%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g275839276136%_ '()))
                                     '())))))
                (_%__kont280151280152%_
                 (lambda (_%$%g275850276075%_
                          _%$%g275851276077%_
                          _%$%g275852276078%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g275852276078%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g275851276077%_ '()))
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
                                 (cons _%$%g275850276075%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont280153280154%_
                 (lambda (_%$%g275869275999%_ _%$%g275870276001%_)
                   (cons _%$%g275870276001%_
                         (cons _%$%g275869275999%_ (cons '#f '())))))
                (_%__kont280155280156%_
                 (lambda (_%$%g275877275949%_
                          _%$%g275878275951%_
                          _%$%g275879275952%_)
                   (cons _%$%g275879275952%_
                         (cons _%$%g275878275951%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%$%g275877275949%_
                                                 '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx280146280147%_))
                (let ((_%$%e275841276106%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx280146280147%_))))
                  (let ((_%$%tl275843276113%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e275841276106%_)))
                        (_%$%hd275842276110%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e275841276106%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl275843276113%_))
                        (let ((_%$%e275844276116%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl275843276113%_))))
                          (let ((_%$%tl275846276123%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e275844276116%_)))
                                (_%$%hd275845276120%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e275844276116%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl275846276123%_))
                                (let ((_%$%e275847276126%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl275846276123%_))))
                                  (let ((_%$%tl275849276133%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e275847276126%_)))
                                        (_%$%hd275848276130%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e275847276126%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl275849276133%_))
                                        (_%__kont280149280150%_
                                         _%$%hd275848276130%_
                                         _%$%hd275845276120%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl275849276133%_))
                                            (let ((_%$%e275862276051%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl275849276133%_))))
                                              (let ((_%$%tl275864276058%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e275862276051%_)))
                                                    (_%$%hd275863276055%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e275862276051%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd275863276055%_))
                                                    (let ((_%$%e275865276061%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd275863276055%_))))
                                                      (if (equal? _%$%e275865276061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl275864276058%_))
                      (let ((_%$%e275866276065%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl275864276058%_))))
                        (let ((_%$%tl275868276072%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275866276065%_)))
                              (_%$%hd275867276069%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275866276065%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl275868276072%_))
                              (_%__kont280151280152%_
                               _%$%hd275867276069%_
                               _%$%hd275848276130%_
                               _%$%hd275845276120%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%$%hd275848276130%_))
                                  (let ((_%$%e275889275935%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd275848276130%_))))
                                    (declare (not safe))
                                    (_%$%g275837275898%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g275837275898%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd275848276130%_))
                          (let ((_%$%e275889275935%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd275848276130%_))))
                            (if (equal? _%$%e275889275935%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl275864276058%_))
                                    (_%__kont280155280156%_
                                     _%$%hd275863276055%_
                                     _%$%hd275845276120%_
                                     _%$%hd275842276110%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g275837275898%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g275837275898%_))))
                          (let () (declare (not safe)) (_%$%g275837275898%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd275848276130%_))
                      (let ((_%$%e275889275935%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd275848276130%_))))
                        (if (equal? _%$%e275889275935%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl275864276058%_))
                                (_%__kont280155280156%_
                                 _%$%hd275863276055%_
                                 _%$%hd275845276120%_
                                 _%$%hd275842276110%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g275837275898%_)))
                            (let ()
                              (declare (not safe))
                              (_%$%g275837275898%_))))
                      (let () (declare (not safe)) (_%$%g275837275898%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%$%hd275848276130%_))
                                                        (let ((_%$%e275889275935%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd275848276130%_))))
                  (if (equal? _%$%e275889275935%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl275864276058%_))
                          (_%__kont280155280156%_
                           _%$%hd275863276055%_
                           _%$%hd275845276120%_
                           _%$%hd275842276110%_)
                          (let () (declare (not safe)) (_%$%g275837275898%_)))
                      (let () (declare (not safe)) (_%$%g275837275898%_))))
                (let () (declare (not safe)) (_%$%g275837275898%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%$%hd275848276130%_))
                                                (let ((_%$%e275889275935%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd275848276130%_))))
                                                  (declare (not safe))
                                                  (_%$%g275837275898%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g275837275898%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl275846276123%_))
                                    (_%__kont280153280154%_
                                     _%$%hd275845276120%_
                                     _%$%hd275842276110%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g275837275898%_))))))
                        (let () (declare (not safe)) (_%$%g275837275898%_)))))
                (let () (declare (not safe)) (_%$%g275837275898%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx276157%_)
        (let* ((_%$%g276161276190%_
                (lambda (_%$%g276162276186%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276162276186%_))))
               (_%$%g276160276295%_
                (lambda (_%$%g276162276194%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276162276194%_))
                      (let ((_%$%e276164276197%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276162276194%_))))
                        (let ((_%$%hd276165276201%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276164276197%_)))
                              (_%$%tl276166276204%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276164276197%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl276166276204%_))
                              (let ((_g280776_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl276166276204%_
                                        '0))))
                                (begin
                                  (let ((_g280777_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g280776_)
                                               (##values-length _g280776_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g280777_ 2)))
                                        (error "Context expects 2 values"
                                               _g280777_)))
                                  (let ((_%$%target276167276207%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280776_ 0)))
                                        (_%$%tl276169276210%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280776_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl276169276210%_))
                                        (letrec ((_%$%loop276170276213%_
                                                  (lambda (_%$%hd276168276217%_
                                                           _%$%clause276174276220%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd276168276217%_))
                                                        (let ((_%$%e276171276222%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd276168276217%_))))
                  (let ((_%$%lp-hd276172276226%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e276171276222%_)))
                        (_%$%lp-tl276173276229%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e276171276222%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%lp-hd276172276226%_))
                        (let ((_g280778_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%$%lp-hd276172276226%_
                                  '0))))
                          (begin
                            (let ((_g280779_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g280778_)
                                         (##values-length _g280778_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g280779_ 2)))
                                  (error "Context expects 2 values"
                                         _g280779_)))
                            (let ((_%$%target276176276232%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g280778_ 0)))
                                  (_%$%tl276178276235%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g280778_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl276178276235%_))
                                  (letrec ((_%$%loop276179276238%_
                                            (lambda (_%$%hd276177276242%_
                                                     _%$%clause276183276245%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd276177276242%_))
                                                  (let ((_%$%e276180276247%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd276177276242%_))))
                                                    (let ((_%$%lp-hd276181276251%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e276180276247%_)))
                                                          (_%$%lp-tl276182276254%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e276180276247%_))))
                                                      (_%$%loop276179276238%_
                                                       _%$%lp-tl276182276254%_
                                                       (cons _%$%lp-hd276181276251%_
                                                             _%$%clause276183276245%_))))
                                                  (let ((_%$%clause276184276257%_
                                                         (reverse _%$%clause276183276245%_)))
                                                    (_%$%loop276170276213%_
                                                     _%$%lp-tl276173276229%_
                                                     (cons _%$%clause276184276257%_
                                                           _%$%clause276174276220%_)))))))
                                    (_%$%loop276179276238%_
                                     _%$%target276176276232%_
                                     '()))
                                  (_%$%g276161276190%_ _%$%g276162276194%_)))))
                        (_%$%g276161276190%_ _%$%g276162276194%_))))
                (let ((_%$%clause276175276260%_
                       (reverse _%$%clause276174276220%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f '@list))
                                    (let ((__tmp280780
                                           (lambda (_%$%g276278276283%_
                                                    _%$%g276279276286%_)
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '@lambda))
                                                         (let ((__tmp280781
                                                                (lambda (_%$%g276280276289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g276281276292%_)
                          (cons _%$%g276280276289%_ _%$%g276281276292%_))))
                   (declare (not safe))
                   (foldr__0 __tmp280781 '() _%$%g276278276283%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%g276279276286%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp280780
                                       '()
                                       _%$%clause276175276260%_)))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop276170276213%_
                                           _%$%target276167276207%_
                                           '()))
                                        (_%$%g276161276190%_
                                         _%$%g276162276194%_)))))
                              (_%$%g276161276190%_ _%$%g276162276194%_))))
                      (_%$%g276161276190%_ _%$%g276162276194%_)))))
          (_%$%g276160276295%_ _%$stx276157%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx276301%_)
        (let* ((_%$%g276305276323%_
                (lambda (_%$%g276306276319%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276306276319%_))))
               (_%$%g276304276378%_
                (lambda (_%$%g276306276327%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276306276327%_))
                      (let ((_%$%e276309276330%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276306276327%_))))
                        (let ((_%$%hd276310276334%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276309276330%_)))
                              (_%$%tl276311276337%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276309276330%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276311276337%_))
                              (let ((_%$%e276312276340%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276311276337%_))))
                                (let ((_%$%hd276313276344%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276312276340%_)))
                                      (_%$%tl276314276347%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276312276340%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl276314276347%_))
                                      (let ((_%$%e276315276350%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl276314276347%_))))
                                        (let ((_%$%hd276316276354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276315276350%_)))
                                              (_%$%tl276317276357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276315276350%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl276317276357%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd276313276344%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd276316276354%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g276305276323%_
                                               _%$%g276306276327%_))))
                                      (_%$%g276305276323%_
                                       _%$%g276306276327%_))))
                              (_%$%g276305276323%_ _%$%g276306276327%_))))
                      (_%$%g276305276323%_ _%$%g276306276327%_)))))
          (_%$%g276304276378%_ _%$stx276301%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx276382%_)
        (let* ((_%$%g276386276404%_
                (lambda (_%$%g276387276400%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276387276400%_))))
               (_%$%g276385276459%_
                (lambda (_%$%g276387276408%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276387276408%_))
                      (let ((_%$%e276390276411%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276387276408%_))))
                        (let ((_%$%hd276391276415%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276390276411%_)))
                              (_%$%tl276392276418%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276390276411%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276392276418%_))
                              (let ((_%$%e276393276421%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276392276418%_))))
                                (let ((_%$%hd276394276425%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276393276421%_)))
                                      (_%$%tl276395276428%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276393276421%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl276395276428%_))
                                      (let ((_%$%e276396276431%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl276395276428%_))))
                                        (let ((_%$%hd276397276435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276396276431%_)))
                                              (_%$%tl276398276438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276396276431%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl276398276438%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda-primary))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd276394276425%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd276397276435%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g276386276404%_
                                               _%$%g276387276408%_))))
                                      (_%$%g276386276404%_
                                       _%$%g276387276408%_))))
                              (_%$%g276386276404%_ _%$%g276387276408%_))))
                      (_%$%g276386276404%_ _%$%g276387276408%_)))))
          (_%$%g276385276459%_ _%$stx276382%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx276463%_)
        (let* ((_%$%g276467276496%_
                (lambda (_%$%g276468276492%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276468276492%_))))
               (_%$%g276466276592%_
                (lambda (_%$%g276468276500%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276468276500%_))
                      (let ((_%$%e276471276503%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276468276500%_))))
                        (let ((_%$%hd276472276507%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276471276503%_)))
                              (_%$%tl276473276510%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276471276503%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl276473276510%_))
                              (let ((_g280782_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl276473276510%_
                                        '0))))
                                (begin
                                  (let ((_g280783_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g280782_)
                                               (##values-length _g280782_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g280783_ 2)))
                                        (error "Context expects 2 values"
                                               _g280783_)))
                                  (let ((_%$%target276474276513%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280782_ 0)))
                                        (_%$%tl276476276516%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280782_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl276476276516%_))
                                        (letrec ((_%$%loop276477276519%_
                                                  (lambda (_%$%hd276475276523%_
                                                           _%$%rule276481276526%_
                                                           _%$%proc276482276527%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd276475276523%_))
                                                        (let ((_%$%e276478276529%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd276475276523%_))))
                  (let ((_%$%lp-hd276479276533%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e276478276529%_)))
                        (_%$%lp-tl276480276536%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e276478276529%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd276479276533%_))
                        (let ((_%$%e276485276539%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd276479276533%_))))
                          (let ((_%$%hd276486276543%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e276485276539%_)))
                                (_%$%tl276487276546%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e276485276539%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl276487276546%_))
                                (let ((_%$%e276488276549%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl276487276546%_))))
                                  (let ((_%$%hd276489276553%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e276488276549%_)))
                                        (_%$%tl276490276556%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e276488276549%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl276490276556%_))
                                        (_%$%loop276477276519%_
                                         _%$%lp-tl276480276536%_
                                         (cons _%$%hd276489276553%_
                                               _%$%rule276481276526%_)
                                         (cons _%$%hd276486276543%_
                                               _%$%proc276482276527%_))
                                        (_%$%g276467276496%_
                                         _%$%g276468276500%_))))
                                (_%$%g276467276496%_ _%$%g276468276500%_))))
                        (_%$%g276467276496%_ _%$%g276468276500%_))))
                (let ((_%$%rule276483276559%_ (reverse _%$%rule276481276526%_))
                      (_%$%proc276484276561%_
                       (reverse _%$%proc276482276527%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%rule276483276559%_
                             _%$%proc276484276561%_))
                          (let ((__tmp280784
                                 (lambda (_%$%g276580276584%_
                                          _%$%g276581276587%_
                                          _%$%g276582276589%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-inline-rule!))
                                               (cons _%$%g276581276587%_
                                                     (cons _%$%g276580276584%_
                                                           '())))
                                         _%$%g276582276589%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp280784
                             '()
                             _%$%rule276483276559%_
                             _%$%proc276484276561%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop276477276519%_
                                           _%$%target276474276513%_
                                           '()
                                           '()))
                                        (_%$%g276467276496%_
                                         _%$%g276468276500%_)))))
                              (_%$%g276467276496%_ _%$%g276468276500%_))))
                      (_%$%g276467276496%_ _%$%g276468276500%_)))))
          (_%$%g276466276592%_ _%$stx276463%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx276597%_)
        (let* ((_%$%g276601276619%_
                (lambda (_%$%g276602276615%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276602276615%_))))
               (_%$%g276600276674%_
                (lambda (_%$%g276602276623%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276602276623%_))
                      (let ((_%$%e276605276626%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276602276623%_))))
                        (let ((_%$%hd276606276630%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276605276626%_)))
                              (_%$%tl276607276633%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276605276626%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276607276633%_))
                              (let ((_%$%e276608276636%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276607276633%_))))
                                (let ((_%$%hd276609276640%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276608276636%_)))
                                      (_%$%tl276610276643%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276608276636%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl276610276643%_))
                                      (let ((_%$%e276611276646%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl276610276643%_))))
                                        (let ((_%$%hd276612276650%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276611276646%_)))
                                              (_%$%tl276613276653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276611276646%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl276613276653%_))
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
                                                (cons _%$%hd276609276640%_
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
              (cons _%$%hd276612276650%_ '())))
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
                                (cons _%$%hd276609276640%_ '()))
                          (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g276601276619%_
                                               _%$%g276602276623%_))))
                                      (_%$%g276601276619%_
                                       _%$%g276602276623%_))))
                              (_%$%g276601276619%_ _%$%g276602276623%_))))
                      (_%$%g276601276619%_ _%$%g276602276623%_)))))
          (_%$%g276600276674%_ _%$stx276597%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx276678%_)
        (let* ((_%__stx280264280265%_ _%$stx276678%_)
               (_%$%g276683276708%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx280264280265%_)))))
          (let ((_%__kont280267280268%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont280269280270%_
                 (lambda (_%$%g276688276755%_
                          _%$%g276689276757%_
                          _%$%g276690276758%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%$%g276690276758%_
                                           (cons _%$%g276689276757%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%$%g276688276755%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx280264280265%_))
                (let ((_%$%e276685276784%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx280264280265%_))))
                  (let ((_%$%tl276687276791%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e276685276784%_)))
                        (_%$%hd276686276788%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e276685276784%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl276687276791%_))
                        (_%__kont280267280268%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl276687276791%_))
                            (let ((_%$%e276694276725%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl276687276791%_))))
                              (let ((_%$%tl276696276732%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e276694276725%_)))
                                    (_%$%hd276695276729%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e276694276725%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd276695276729%_))
                                    (let ((_%$%e276697276735%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd276695276729%_))))
                                      (let ((_%$%tl276699276742%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e276697276735%_)))
                                            (_%$%hd276698276739%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e276697276735%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl276699276742%_))
                                            (let ((_%$%e276700276745%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl276699276742%_))))
                                              (let ((_%$%tl276702276752%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e276700276745%_)))
                                                    (_%$%hd276701276749%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e276700276745%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl276702276752%_))
                                                    (_%__kont280269280270%_
                                                     _%$%tl276696276732%_
                                                     _%$%hd276701276749%_
                                                     _%$%hd276698276739%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g276683276708%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g276683276708%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g276683276708%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g276683276708%_))))))
                (let () (declare (not safe)) (_%$%g276683276708%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx276802%_)
        (let* ((_%__stx280308280309%_ _%$stx276802%_)
               (_%$%g276807276838%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx280308280309%_)))))
          (let ((_%__kont280311280312%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont280313280314%_
                 (lambda (_%$%g276812276903%_
                          _%$%g276813276905%_
                          _%$%g276814276906%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%$%g276814276906%_
                                           (let ((__tmp280785
                                                  (lambda (_%$%g276926276929%_
                                                           _%$%g276927276932%_)
                                                    (cons _%$%g276926276929%_
                                                          _%$%g276927276932%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp280785
                                              '()
                                              _%$%g276813276905%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%$%g276812276903%_)
                                     '()))))))
            (let ((_%__match280351280352%_
                   (lambda (_%$%e276815276845%_
                            _%$%hd276816276849%_
                            _%$%tl276817276852%_
                            _%$%e276818276855%_
                            _%$%hd276819276859%_
                            _%$%tl276820276862%_
                            _%$%e276821276865%_
                            _%$%hd276822276869%_
                            _%$%tl276823276872%_
                            _%__splice280315280316%_
                            _%$%target276824276875%_
                            _%$%tl276826276878%_)
                     (letrec ((_%$%loop276827276881%_
                               (lambda (_%$%hd276825276885%_
                                        _%$%sig276831276888%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd276825276885%_))
                                     (let ((_%$%e276828276890%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%hd276825276885%_))))
                                       (let ((_%$%lp-tl276830276897%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e276828276890%_)))
                                             (_%$%lp-hd276829276894%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e276828276890%_))))
                                         (_%$%loop276827276881%_
                                          _%$%lp-tl276830276897%_
                                          (cons _%$%lp-hd276829276894%_
                                                _%$%sig276831276888%_))))
                                     (let ((_%$%sig276832276900%_
                                            (reverse _%$%sig276831276888%_)))
                                       (_%__kont280313280314%_
                                        _%$%tl276820276862%_
                                        _%$%sig276832276900%_
                                        _%$%hd276822276869%_))))))
                       (_%$%loop276827276881%_
                        _%$%target276824276875%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx280308280309%_))
                  (let ((_%$%e276809276942%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx280308280309%_))))
                    (let ((_%$%tl276811276949%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e276809276942%_)))
                          (_%$%hd276810276946%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e276809276942%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl276811276949%_))
                          (_%__kont280311280312%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276811276949%_))
                              (let ((_%$%e276818276855%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276811276949%_))))
                                (let ((_%$%tl276820276862%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276818276855%_)))
                                      (_%$%hd276819276859%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276818276855%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd276819276859%_))
                                      (let ((_%$%e276821276865%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd276819276859%_))))
                                        (let ((_%$%tl276823276872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276821276865%_)))
                                              (_%$%hd276822276869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276821276865%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl276823276872%_))
                                              (let ((_%__splice280315280316%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl276823276872%_
                                                        '0))))
                                                (let ((_%$%tl276826276878%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice280315280316%_
                                                          '1)))
                                                      (_%$%target276824276875%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice280315280316%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl276826276878%_))
                                                      (_%__match280351280352%_
                                                       _%$%e276809276942%_
                                                       _%$%hd276810276946%_
                                                       _%$%tl276811276949%_
                                                       _%$%e276818276855%_
                                                       _%$%hd276819276859%_
                                                       _%$%tl276820276862%_
                                                       _%$%e276821276865%_
                                                       _%$%hd276822276869%_
                                                       _%$%tl276823276872%_
                                                       _%__splice280315280316%_
                                                       _%$%target276824276875%_
                                                       _%$%tl276826276878%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g276807276838%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g276807276838%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g276807276838%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g276807276838%_))))))
                  (let () (declare (not safe)) (_%$%g276807276838%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx276961%_)
        (let* ((_%__stx280354280355%_ _%$stx276961%_)
               (_%$%g276966277013%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx280354280355%_)))))
          (let ((_%__kont280357280358%_
                 (lambda (_%$%g276968277171%_ _%$%g276969277173%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%$%g276969277173%_
                               (let ((__tmp280786
                                      (lambda (_%$%g277193277196%_
                                               _%$%g277194277199%_)
                                        (cons _%$%g277193277196%_
                                              _%$%g277194277199%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp280786
                                  '()
                                  _%$%g276968277171%_))))))
                (_%__kont280361280362%_
                 (lambda (_%$%g276991277068%_ _%$%g276992277070%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%$%g276992277070%_
                               (let ((__tmp280787
                                      (lambda (_%$%g277087277090%_
                                               _%$%g277088277093%_)
                                        (cons _%$%g277087277090%_
                                              _%$%g277088277093%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp280787
                                  '()
                                  _%$%g276991277068%_)))))))
            (let* ((_%__match280421280422%_
                    (lambda (_%$%e276993277020%_
                             _%$%hd276994277024%_
                             _%$%tl276995277027%_
                             _%$%e276996277030%_
                             _%$%hd276997277034%_
                             _%$%tl276998277037%_
                             _%__splice280363280364%_
                             _%$%target276999277040%_
                             _%$%tl277001277043%_)
                      (letrec ((_%$%loop277002277046%_
                                (lambda (_%$%hd277000277050%_
                                         _%$%sig277006277053%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd277000277050%_))
                                      (let ((_%$%e277003277055%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd277000277050%_))))
                                        (let ((_%$%lp-tl277005277062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e277003277055%_)))
                                              (_%$%lp-hd277004277059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e277003277055%_))))
                                          (_%$%loop277002277046%_
                                           _%$%lp-tl277005277062%_
                                           (cons _%$%lp-hd277004277059%_
                                                 _%$%sig277006277053%_))))
                                      (let ((_%$%sig277007277065%_
                                             (reverse _%$%sig277006277053%_)))
                                        (_%__kont280361280362%_
                                         _%$%sig277007277065%_
                                         _%$%hd276997277034%_))))))
                        (_%$%loop277002277046%_
                         _%$%target276999277040%_
                         '()))))
                   (_%__match280413280414%_
                    (lambda (_%$%e276993277020%_
                             _%$%hd276994277024%_
                             _%$%tl276995277027%_
                             _%$%e276996277030%_
                             _%$%hd276997277034%_
                             _%$%tl276998277037%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl276998277037%_))
                          (let ((_%__splice280363280364%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl276998277037%_
                                    '0))))
                            (let ((_%$%tl277001277043%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice280363280364%_
                                      '1)))
                                  (_%$%target276999277040%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice280363280364%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl277001277043%_))
                                  (_%__match280421280422%_
                                   _%$%e276993277020%_
                                   _%$%hd276994277024%_
                                   _%$%tl276995277027%_
                                   _%$%e276996277030%_
                                   _%$%hd276997277034%_
                                   _%$%tl276998277037%_
                                   _%__splice280363280364%_
                                   _%$%target276999277040%_
                                   _%$%tl277001277043%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g276966277013%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g276966277013%_)))))
                   (_%__match280401280402%_
                    (lambda (_%$%e276970277103%_
                             _%$%hd276971277107%_
                             _%$%tl276972277110%_
                             _%$%e276973277113%_
                             _%$%hd276974277117%_
                             _%$%tl276975277120%_
                             _%$%e276976277123%_
                             _%$%hd276977277127%_
                             _%$%tl276978277130%_
                             _%$%e276979277133%_
                             _%$%hd276980277137%_
                             _%$%tl276981277140%_
                             _%__splice280359280360%_
                             _%$%target276982277143%_
                             _%$%tl276984277146%_)
                      (letrec ((_%$%loop276985277149%_
                                (lambda (_%$%hd276983277153%_
                                         _%$%sig276989277156%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd276983277153%_))
                                      (let ((_%$%e276986277158%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd276983277153%_))))
                                        (let ((_%$%lp-tl276988277165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276986277158%_)))
                                              (_%$%lp-hd276987277162%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276986277158%_))))
                                          (_%$%loop276985277149%_
                                           _%$%lp-tl276988277165%_
                                           (cons _%$%lp-hd276987277162%_
                                                 _%$%sig276989277156%_))))
                                      (let ((_%$%sig276990277168%_
                                             (reverse _%$%sig276989277156%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl276978277130%_))
                                            (_%__kont280357280358%_
                                             _%$%sig276990277168%_
                                             _%$%hd276974277117%_)
                                            (_%__match280413280414%_
                                             _%$%e276970277103%_
                                             _%$%hd276971277107%_
                                             _%$%tl276972277110%_
                                             _%$%e276973277113%_
                                             _%$%hd276974277117%_
                                             _%$%tl276975277120%_)))))))
                        (_%$%loop276985277149%_
                         _%$%target276982277143%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx280354280355%_))
                  (let ((_%$%e276970277103%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx280354280355%_))))
                    (let ((_%$%tl276972277110%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e276970277103%_)))
                          (_%$%hd276971277107%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e276970277103%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl276972277110%_))
                          (let ((_%$%e276973277113%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl276972277110%_))))
                            (let ((_%$%tl276975277120%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e276973277113%_)))
                                  (_%$%hd276974277117%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e276973277113%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl276975277120%_))
                                  (let ((_%$%e276976277123%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl276975277120%_))))
                                    (let ((_%$%tl276978277130%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e276976277123%_)))
                                          (_%$%hd276977277127%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e276976277123%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%hd276977277127%_))
                                          (let ((_%$%e276979277133%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%hd276977277127%_))))
                                            (let ((_%$%tl276981277140%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e276979277133%_)))
                                                  (_%$%hd276980277137%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e276979277133%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd276980277137%_))
                                                  (if (let ((__tmp280788
                                                             |gxc[1]#_g280789_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp280788
                                                         _%$%hd276980277137%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%$%tl276981277140%_))
                                                          (let ((_%__splice280359280360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl276981277140%_
                            '0))))
                    (let ((_%$%tl276984277146%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice280359280360%_ '1)))
                          (_%$%target276982277143%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice280359280360%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl276984277146%_))
                          (_%__match280401280402%_
                           _%$%e276970277103%_
                           _%$%hd276971277107%_
                           _%$%tl276972277110%_
                           _%$%e276973277113%_
                           _%$%hd276974277117%_
                           _%$%tl276975277120%_
                           _%$%e276976277123%_
                           _%$%hd276977277127%_
                           _%$%tl276978277130%_
                           _%$%e276979277133%_
                           _%$%hd276980277137%_
                           _%$%tl276981277140%_
                           _%__splice280359280360%_
                           _%$%target276982277143%_
                           _%$%tl276984277146%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl276975277120%_))
                              (let ((_%__splice280363280364%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%$%tl276975277120%_
                                        '0))))
                                (let ((_%$%tl277001277043%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice280363280364%_
                                          '1)))
                                      (_%$%target276999277040%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice280363280364%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl277001277043%_))
                                      (_%__match280421280422%_
                                       _%$%e276970277103%_
                                       _%$%hd276971277107%_
                                       _%$%tl276972277110%_
                                       _%$%e276973277113%_
                                       _%$%hd276974277117%_
                                       _%$%tl276975277120%_
                                       _%__splice280363280364%_
                                       _%$%target276999277040%_
                                       _%$%tl277001277043%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g276966277013%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g276966277013%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl276975277120%_))
                      (let ((_%__splice280363280364%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl276975277120%_
                                '0))))
                        (let ((_%$%tl277001277043%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice280363280364%_ '1)))
                              (_%$%target276999277040%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice280363280364%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl277001277043%_))
                              (_%__match280421280422%_
                               _%$%e276970277103%_
                               _%$%hd276971277107%_
                               _%$%tl276972277110%_
                               _%$%e276973277113%_
                               _%$%hd276974277117%_
                               _%$%tl276975277120%_
                               _%__splice280363280364%_
                               _%$%target276999277040%_
                               _%$%tl277001277043%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g276966277013%_)))))
                      (let () (declare (not safe)) (_%$%g276966277013%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl276975277120%_))
                  (let ((_%__splice280363280364%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl276975277120%_
                            '0))))
                    (let ((_%$%tl277001277043%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice280363280364%_ '1)))
                          (_%$%target276999277040%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice280363280364%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl277001277043%_))
                          (_%__match280421280422%_
                           _%$%e276970277103%_
                           _%$%hd276971277107%_
                           _%$%tl276972277110%_
                           _%$%e276973277113%_
                           _%$%hd276974277117%_
                           _%$%tl276975277120%_
                           _%__splice280363280364%_
                           _%$%target276999277040%_
                           _%$%tl277001277043%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g276966277013%_)))))
                  (let () (declare (not safe)) (_%$%g276966277013%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl276975277120%_))
                                                      (let ((_%__splice280363280364%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl276975277120%_
                        '0))))
                (let ((_%$%tl277001277043%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice280363280364%_ '1)))
                      (_%$%target276999277040%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice280363280364%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl277001277043%_))
                      (_%__match280421280422%_
                       _%$%e276970277103%_
                       _%$%hd276971277107%_
                       _%$%tl276972277110%_
                       _%$%e276973277113%_
                       _%$%hd276974277117%_
                       _%$%tl276975277120%_
                       _%__splice280363280364%_
                       _%$%target276999277040%_
                       _%$%tl277001277043%_)
                      (let () (declare (not safe)) (_%$%g276966277013%_)))))
              (let () (declare (not safe)) (_%$%g276966277013%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl276975277120%_))
                                              (let ((_%__splice280363280364%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl276975277120%_
                                                        '0))))
                                                (let ((_%$%tl277001277043%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice280363280364%_
                                                          '1)))
                                                      (_%$%target276999277040%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice280363280364%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl277001277043%_))
                                                      (_%__match280421280422%_
                                                       _%$%e276970277103%_
                                                       _%$%hd276971277107%_
                                                       _%$%tl276972277110%_
                                                       _%$%e276973277113%_
                                                       _%$%hd276974277117%_
                                                       _%$%tl276975277120%_
                                                       _%__splice280363280364%_
                                                       _%$%target276999277040%_
                                                       _%$%tl277001277043%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g276966277013%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g276966277013%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl276975277120%_))
                                      (let ((_%__splice280363280364%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl276975277120%_
                                                '0))))
                                        (let ((_%$%tl277001277043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice280363280364%_
                                                  '1)))
                                              (_%$%target276999277040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice280363280364%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl277001277043%_))
                                              (_%__match280421280422%_
                                               _%$%e276970277103%_
                                               _%$%hd276971277107%_
                                               _%$%tl276972277110%_
                                               _%$%e276973277113%_
                                               _%$%hd276974277117%_
                                               _%$%tl276975277120%_
                                               _%__splice280363280364%_
                                               _%$%target276999277040%_
                                               _%$%tl277001277043%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g276966277013%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g276966277013%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g276966277013%_)))))
                  (let () (declare (not safe)) (_%$%g276966277013%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx278356%_ _%id278358%_)
        (let ((_%proc278362%_
               (let ((__tmp280790
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id278358%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp280790))))
          (if (procedure? _%proc278362%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx278356%_
                 _%id278358%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx278347%_ _%id278349%_)
        (let ((_%klass278353%_
               (let ((__tmp280791
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id278349%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp280791))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass278353%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx278347%_
                 _%id278349%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx277597%_ _%proc277599%_ _%sig277600%_)
        (letrec ((_%signature-arity277602%_
                  (lambda (_%args278279%_)
                    (let _%loop278282%_ ((_%rest278285%_ _%args278279%_)
                                         (_%count278287%_ '0))
                      (let* ((_%$%rest278288278299%_ _%rest278285%_)
                             (_%$%E278292278305%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%rest278288278299%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%$%K278295278336%_
                               (lambda (_%rest278333%_)
                                 (_%loop278282%_
                                  _%rest278333%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count278287%_ '1)))))
                              (_%$%K278294278325%_ (lambda () _%count278287%_))
                              (_%$%K278293278313%_
                               (lambda () (cons _%count278287%_ '()))))
                          (let ((_%$%try-match278290278329%_
                                 (lambda ()
                                   (if (null? _%$%rest278288278299%_)
                                       (_%$%K278294278325%_)
                                       (_%$%K278293278313%_)))))
                            (if (pair? _%$%rest278288278299%_)
                                (let* ((_%$%tl278297278340%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest278288278299%_)))
                                       (_%rest278344%_ _%$%tl278297278340%_))
                                  (_%$%K278295278336%_ _%rest278344%_))
                                (_%$%try-match278290278329%_))))))))
                 (_%make-signature277604%_
                  (lambda (_%args278161%_
                           _%return278163%_
                           _%effect278164%_
                           _%unchecked278165%_)
                    (let ((__tmp280792
                           (lambda (_%$%g278166278168%_)
                             (|gxc[1]#verify-class!|
                              _%ctx277597%_
                              _%$%g278166278168%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp280792 _%args278161%_))
                    (|gxc[1]#verify-class!| _%ctx277597%_ _%return278163%_)
                    (if _%unchecked278165%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx277597%_
                         _%unchecked278165%_)
                        '#!void)
                    (let ((_%arity278172%_
                           (_%signature-arity277602%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args278161%_)))))
                      (if _%effect278164%_
                          (let ((_%effect278175%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect278164%_))))
                            (if (and (list? _%effect278175%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect278175%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx277597%_
                                   _%proc277599%_
                                   _%effect278175%_))))
                          '#!void)
                      (cons _%arity278172%_
                            (cons (let* ((_%$%g278178278201%_
                                          (lambda (_%$%g278179278197%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g278179278197%_))))
                                         (_%$%g278177278275%_
                                          (lambda (_%$%g278179278205%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g278179278205%_))
                                                (let ((_%$%e278184278208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%g278179278205%_))))
                                                  (let ((_%$%hd278185278212%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e278184278208%_)))
                                                        (_%$%tl278186278215%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e278184278208%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl278186278215%_))
                                                        (let ((_%$%e278187278218%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl278186278215%_))))
                  (let ((_%$%hd278188278222%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e278187278218%_)))
                        (_%$%tl278189278225%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e278187278218%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl278189278225%_))
                        (let ((_%$%e278190278228%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl278189278225%_))))
                          (let ((_%$%hd278191278232%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e278190278228%_)))
                                (_%$%tl278192278235%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e278190278228%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl278192278235%_))
                                (let ((_%$%e278193278238%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl278192278235%_))))
                                  (let ((_%$%hd278194278242%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e278193278238%_)))
                                        (_%$%tl278195278245%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e278193278238%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl278195278245%_))
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
                        (cons _%$%hd278185278212%_ '()))
                  (cons 'return:
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd278188278222%_ '()))
                              (cons 'effect:
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd278191278232%_
                                                      '()))
                                          (cons 'unchecked:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%$%hd278194278242%_
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
                                        (_%$%g278178278201%_
                                         _%$%g278179278205%_))))
                                (_%$%g278178278201%_ _%$%g278179278205%_))))
                        (_%$%g278178278201%_ _%$%g278179278205%_))))
                (_%$%g278178278201%_ _%$%g278179278205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g278178278201%_
                                                 _%$%g278179278205%_)))))
                                    (_%$%g278177278275%_
                                     (list _%args278161%_
                                           _%return278163%_
                                           _%effect278164%_
                                           _%unchecked278165%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx277597%_ _%proc277599%_)
          (let* ((_%__stx280432280433%_ _%sig277600%_)
                 (_%$%g277611277714%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx280432280433%_)))))
            (let ((_%__kont280435280436%_
                   (lambda (_%$%g277613278142%_ _%$%g277614278144%_)
                     (_%make-signature277604%_
                      _%$%g277614278144%_
                      _%$%g277613278142%_
                      '#f
                      '#f)))
                  (_%__kont280437280438%_
                   (lambda (_%$%g277621278093%_
                            _%$%g277622278095%_
                            _%$%g277623278096%_)
                     (_%make-signature277604%_
                      _%$%g277623278096%_
                      _%$%g277622278095%_
                      _%$%g277621278093%_
                      '#f)))
                  (_%__kont280439280440%_
                   (lambda (_%$%g277637278017%_
                            _%$%g277638278019%_
                            _%$%g277639278020%_)
                     (_%make-signature277604%_
                      _%$%g277639278020%_
                      _%$%g277638278019%_
                      _%$%g277637278017%_
                      (let ((__tmp280793
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc277599%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp280793)))))
                  (_%__kont280441280442%_
                   (lambda (_%$%g277657277923%_
                            _%$%g277658277925%_
                            _%$%g277659277926%_
                            _%$%g277660277927%_)
                     (_%make-signature277604%_
                      _%$%g277660277927%_
                      _%$%g277659277926%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g277657277923%_)))))
                  (_%__kont280443280444%_
                   (lambda (_%$%g277681277830%_ _%$%g277682277832%_)
                     (_%make-signature277604%_
                      _%$%g277682277832%_
                      _%$%g277681277830%_
                      '#f
                      (let ((__tmp280794
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc277599%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp280794)))))
                  (_%__kont280445280446%_
                   (lambda (_%$%g277693277765%_
                            _%$%g277694277767%_
                            _%$%g277695277768%_)
                     (_%make-signature277604%_
                      _%$%g277695277768%_
                      _%$%g277694277767%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g277693277765%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx280432280433%_))
                  (let ((_%$%e277615278122%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx280432280433%_))))
                    (let ((_%$%tl277617278129%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e277615278122%_)))
                          (_%$%hd277616278126%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e277615278122%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl277617278129%_))
                          (let ((_%$%e277618278132%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl277617278129%_))))
                            (let ((_%$%tl277620278139%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e277618278132%_)))
                                  (_%$%hd277619278136%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e277618278132%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl277620278139%_))
                                  (_%__kont280435280436%_
                                   _%$%hd277619278136%_
                                   _%$%hd277616278126%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl277620278139%_))
                                      (let ((_%$%e277630278069%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl277620278139%_))))
                                        (let ((_%$%tl277632278076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e277630278069%_)))
                                              (_%$%hd277631278073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e277630278069%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd277631278073%_))
                                              (let ((_%$%e277633278079%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd277631278073%_))))
                                                (if (equal? _%$%e277633278079%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl277632278076%_))
                                                        (let ((_%$%e277634278083%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl277632278076%_))))
                  (let ((_%$%tl277636278090%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e277634278083%_)))
                        (_%$%hd277635278087%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e277634278083%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl277636278090%_))
                        (_%__kont280437280438%_
                         _%$%hd277635278087%_
                         _%$%hd277619278136%_
                         _%$%hd277616278126%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl277636278090%_))
                            (let ((_%$%e277653278003%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl277636278090%_))))
                              (let ((_%$%tl277655278010%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e277653278003%_)))
                                    (_%$%hd277654278007%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e277653278003%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%$%hd277654278007%_))
                                    (let ((_%$%e277656278013%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd277654278007%_))))
                                      (if (equal? _%$%e277656278013%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl277655278010%_))
                                              (_%__kont280439280440%_
                                               _%$%hd277635278087%_
                                               _%$%hd277619278136%_
                                               _%$%hd277616278126%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl277655278010%_))
                                                  (let ((_%$%e277678277913%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl277655278010%_))))
                                                    (let ((_%$%tl277680277920%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e277678277913%_)))
                                                          (_%$%hd277679277917%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e277678277913%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl277680277920%_))
                                                          (_%__kont280441280442%_
                                                           _%$%hd277679277917%_
                                                           _%$%hd277635278087%_
                                                           _%$%hd277619278136%_
                                                           _%$%hd277616278126%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g277611277714%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g277611277714%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g277611277714%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g277611277714%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g277611277714%_))))))
                (let () (declare (not safe)) (_%$%g277611277714%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%$%e277633278079%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl277632278076%_))
                                                            (_%__kont280443280444%_
                                                             _%$%hd277619278136%_
                                                             _%$%hd277616278126%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl277632278076%_))
                        (let ((_%$%e277706277755%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl277632278076%_))))
                          (let ((_%$%tl277708277762%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e277706277755%_)))
                                (_%$%hd277707277759%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e277706277755%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl277708277762%_))
                                (_%__kont280445280446%_
                                 _%$%hd277707277759%_
                                 _%$%hd277619278136%_
                                 _%$%hd277616278126%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g277611277714%_)))))
                        (let () (declare (not safe)) (_%$%g277611277714%_))))
                (let () (declare (not safe)) (_%$%g277611277714%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g277611277714%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g277611277714%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g277611277714%_)))))
                  (let () (declare (not safe)) (_%$%g277611277714%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig277208%_)
        (let* ((_%$%g277211277291%_
                (lambda (_%$%g277212277287%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277212277287%_))))
               (_%$%g277210277593%_
                (lambda (_%$%g277212277295%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277212277295%_))
                      (let ((_%$%e277218277298%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277212277295%_))))
                        (let ((_%$%hd277219277302%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277218277298%_)))
                              (_%$%tl277220277305%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277218277298%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277220277305%_))
                              (let ((_%$%e277221277308%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277220277305%_))))
                                (let ((_%$%hd277222277312%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277221277308%_)))
                                      (_%$%tl277223277315%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277221277308%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%$%hd277222277312%_))
                                      (let ((_%$%e277224277318%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd277222277312%_))))
                                        (if (equal? _%$%e277224277318%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl277223277315%_))
                                                (let ((_%$%e277225277322%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl277223277315%_))))
                                                  (let ((_%$%hd277226277326%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e277225277322%_)))
                                                        (_%$%tl277227277329%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e277225277322%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd277226277326%_))
                                                        (let ((_%$%e277228277332%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd277226277326%_))))
                  (let ((_%$%hd277229277336%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e277228277332%_)))
                        (_%$%tl277230277339%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e277228277332%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd277229277336%_))
                        (if (let ((__tmp280795 |gxc[1]#_g280796_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp280795
                               _%$%hd277229277336%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl277230277339%_))
                                (let ((_%$%e277231277342%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl277230277339%_))))
                                  (let ((_%$%hd277232277346%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e277231277342%_)))
                                        (_%$%tl277233277349%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e277231277342%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl277233277349%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl277227277329%_))
                                            (let ((_%$%e277234277352%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl277227277329%_))))
                                              (let ((_%$%hd277235277356%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e277234277352%_)))
                                                    (_%$%tl277236277359%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e277234277352%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd277235277356%_))
                                                    (let ((_%$%e277237277362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd277235277356%_))))
                                                      (if (equal? _%$%e277237277362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl277236277359%_))
                      (let ((_%$%e277238277366%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl277236277359%_))))
                        (let ((_%$%hd277239277370%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277238277366%_)))
                              (_%$%tl277240277373%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277238277366%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd277239277370%_))
                              (let ((_%$%e277241277376%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd277239277370%_))))
                                (let ((_%$%hd277242277380%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277241277376%_)))
                                      (_%$%tl277243277383%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277241277376%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd277242277380%_))
                                      (if (let ((__tmp280797
                                                 |gxc[1]#_g280798_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp280797
                                             _%$%hd277242277380%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl277243277383%_))
                                              (let ((_%$%e277244277386%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl277243277383%_))))
                                                (let ((_%$%hd277245277390%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e277244277386%_)))
                                                      (_%$%tl277246277393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e277244277386%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl277246277393%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl277240277373%_))
                                                          (let ((_%$%e277247277396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl277240277373%_))))
                    (let ((_%$%hd277248277400%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e277247277396%_)))
                          (_%$%tl277249277403%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e277247277396%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd277248277400%_))
                          (let ((_%$%e277250277406%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd277248277400%_))))
                            (if (equal? _%$%e277250277406%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl277249277403%_))
                                    (let ((_%$%e277251277410%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl277249277403%_))))
                                      (let ((_%$%hd277252277414%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e277251277410%_)))
                                            (_%$%tl277253277417%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e277251277410%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd277252277414%_))
                                            (let ((_%$%e277254277420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%hd277252277414%_))))
                                              (let ((_%$%hd277255277424%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e277254277420%_)))
                                                    (_%$%tl277256277427%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e277254277420%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd277255277424%_))
                                                    (if (let ((__tmp280799
                                                               |gxc[1]#_g280800_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp280799
                                                           _%$%hd277255277424%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl277256277427%_))
                                                            (let ((_%$%e277257277430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%$%tl277256277427%_))))
                      (let ((_%$%hd277258277434%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e277257277430%_)))
                            (_%$%tl277259277437%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e277257277430%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl277259277437%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl277253277417%_))
                                (let ((_%$%e277260277440%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl277253277417%_))))
                                  (let ((_%$%hd277261277444%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e277260277440%_)))
                                        (_%$%tl277262277447%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e277260277440%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%$%hd277261277444%_))
                                        (let ((_%$%e277263277450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd277261277444%_))))
                                          (if (equal? _%$%e277263277450%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl277262277447%_))
                                                  (let ((_%$%e277264277454%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl277262277447%_))))
                                                    (let ((_%$%hd277265277458%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e277264277454%_)))
                                                          (_%$%tl277266277461%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e277264277454%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd277265277458%_))
                                                          (let ((_%$%e277267277464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%hd277265277458%_))))
                    (let ((_%$%hd277268277468%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e277267277464%_)))
                          (_%$%tl277269277471%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e277267277464%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd277268277468%_))
                          (if (let ((__tmp280801 |gxc[1]#_g280802_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp280801
                                 _%$%hd277268277468%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl277269277471%_))
                                  (let ((_%$%e277270277474%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl277269277471%_))))
                                    (let ((_%$%hd277271277478%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e277270277474%_)))
                                          (_%$%tl277272277481%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e277270277474%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl277272277481%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl277266277461%_))
                                              (let ((_%$%e277273277484%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl277266277461%_))))
                                                (let ((_%$%hd277274277488%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e277273277484%_)))
                                                      (_%$%tl277275277491%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e277273277484%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%$%hd277274277488%_))
                                                      (let ((_%$%e277276277494%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd277274277488%_))))
                (if (equal? _%$%e277276277494%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl277275277491%_))
                        (let ((_%$%e277277277498%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl277275277491%_))))
                          (let ((_%$%hd277278277502%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e277277277498%_)))
                                (_%$%tl277279277505%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e277277277498%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd277278277502%_))
                                (let ((_%$%e277280277508%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%hd277278277502%_))))
                                  (let ((_%$%hd277281277512%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e277280277508%_)))
                                        (_%$%tl277282277515%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e277280277508%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd277281277512%_))
                                        (if (let ((__tmp280803
                                                   |gxc[1]#_g280804_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp280803
                                               _%$%hd277281277512%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl277282277515%_))
                                                (let ((_%$%e277283277518%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl277282277515%_))))
                                                  (let ((_%$%hd277284277522%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e277283277518%_)))
                                                        (_%$%tl277285277525%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e277283277518%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl277285277525%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl277279277505%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd277271277478%_))
                        (cons _%$%hd277271277478%_
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
                                                            (cons _%$%hd277245277390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd277284277522%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '#f)
                    (_%$%g277211277291%_ _%$%g277212277295%_))
                (_%$%g277211277291%_ _%$%g277212277295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g277211277291%_
                                                 _%$%g277212277295%_))
                                            (_%$%g277211277291%_
                                             _%$%g277212277295%_))
                                        (_%$%g277211277291%_
                                         _%$%g277212277295%_))))
                                (_%$%g277211277291%_ _%$%g277212277295%_))))
                        (_%$%g277211277291%_ _%$%g277212277295%_))
                    (_%$%g277211277291%_ _%$%g277212277295%_)))
              (_%$%g277211277291%_ _%$%g277212277295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g277211277291%_
                                               _%$%g277212277295%_))
                                          (_%$%g277211277291%_
                                           _%$%g277212277295%_))))
                                  (_%$%g277211277291%_ _%$%g277212277295%_))
                              (_%$%g277211277291%_ _%$%g277212277295%_))
                          (_%$%g277211277291%_ _%$%g277212277295%_))))
                  (_%$%g277211277291%_ _%$%g277212277295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g277211277291%_
                                                   _%$%g277212277295%_))
                                              (_%$%g277211277291%_
                                               _%$%g277212277295%_)))
                                        (_%$%g277211277291%_
                                         _%$%g277212277295%_))))
                                (_%$%g277211277291%_ _%$%g277212277295%_))
                            (_%$%g277211277291%_ _%$%g277212277295%_))))
                    (_%$%g277211277291%_ _%$%g277212277295%_))
                (_%$%g277211277291%_ _%$%g277212277295%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g277211277291%_
                                                     _%$%g277212277295%_))))
                                            (_%$%g277211277291%_
                                             _%$%g277212277295%_))))
                                    (_%$%g277211277291%_ _%$%g277212277295%_))
                                (_%$%g277211277291%_ _%$%g277212277295%_)))
                          (_%$%g277211277291%_ _%$%g277212277295%_))))
                  (_%$%g277211277291%_ _%$%g277212277295%_))
              (_%$%g277211277291%_ _%$%g277212277295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g277211277291%_
                                               _%$%g277212277295%_))
                                          (_%$%g277211277291%_
                                           _%$%g277212277295%_))
                                      (_%$%g277211277291%_
                                       _%$%g277212277295%_))))
                              (_%$%g277211277291%_ _%$%g277212277295%_))))
                      (_%$%g277211277291%_ _%$%g277212277295%_))
                  (_%$%g277211277291%_ _%$%g277212277295%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g277211277291%_
                                                     _%$%g277212277295%_))))
                                            (_%$%g277211277291%_
                                             _%$%g277212277295%_))
                                        (_%$%g277211277291%_
                                         _%$%g277212277295%_))))
                                (_%$%g277211277291%_ _%$%g277212277295%_))
                            (_%$%g277211277291%_ _%$%g277212277295%_))
                        (_%$%g277211277291%_ _%$%g277212277295%_))))
                (_%$%g277211277291%_ _%$%g277212277295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g277211277291%_
                                                 _%$%g277212277295%_))
                                            (_%$%g277211277291%_
                                             _%$%g277212277295%_)))
                                      (_%$%g277211277291%_
                                       _%$%g277212277295%_))))
                              (_%$%g277211277291%_ _%$%g277212277295%_))))
                      (_%$%g277211277291%_ _%$%g277212277295%_)))))
          (_%$%g277210277593%_ _%sig277208%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx278365%_)
        (let* ((_%$%g278368278386%_
                (lambda (_%$%g278369278382%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278369278382%_))))
               (_%$%g278367278441%_
                (lambda (_%$%g278369278390%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278369278390%_))
                      (let ((_%$%e278372278393%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278369278390%_))))
                        (let ((_%$%hd278373278397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278372278393%_)))
                              (_%$%tl278374278400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278372278393%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278374278400%_))
                              (let ((_%$%e278375278403%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278374278400%_))))
                                (let ((_%$%hd278376278407%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278375278403%_)))
                                      (_%$%tl278377278410%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278375278403%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl278377278410%_))
                                      (let ((_%$%e278378278413%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl278377278410%_))))
                                        (let ((_%$%hd278379278417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278378278413%_)))
                                              (_%$%tl278380278420%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278378278413%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl278380278420%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd278376278407%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd278379278417%_)))
                                                  (begin
                                                    (|gxc[1]#verify-procedure!|
                                                     _%stx278365%_
                                                     _%$%hd278376278407%_)
                                                    (|gxc[1]#verify-class!|
                                                     _%stx278365%_
                                                     _%$%hd278379278417%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-type))
                                                          (cons _%$%hd278376278407%_
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
                                                (cons _%$%hd278379278417%_
                                                      '()))
                                          '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g278368278386%_
                                                   _%$%g278369278390%_))
                                              (_%$%g278368278386%_
                                               _%$%g278369278390%_))))
                                      (_%$%g278368278386%_
                                       _%$%g278369278390%_))))
                              (_%$%g278368278386%_ _%$%g278369278390%_))))
                      (_%$%g278368278386%_ _%$%g278369278390%_)))))
          (_%$%g278367278441%_ _%stx278365%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx278445%_)
        (let* ((_%$%g278448278472%_
                (lambda (_%$%g278449278468%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278449278468%_))))
               (_%$%g278447278753%_
                (lambda (_%$%g278449278476%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278449278476%_))
                      (let ((_%$%e278452278479%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278449278476%_))))
                        (let ((_%$%hd278453278483%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278452278479%_)))
                              (_%$%tl278454278486%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278452278479%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278454278486%_))
                              (let ((_%$%e278455278489%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278454278486%_))))
                                (let ((_%$%hd278456278493%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278455278489%_)))
                                      (_%$%tl278457278496%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278455278489%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl278457278496%_))
                                      (let ((_g280805_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl278457278496%_
                                                '0))))
                                        (begin
                                          (let ((_g280806_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g280805_)
                                                       (##values-length
                                                        _g280805_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g280806_ 2)))
                                                (error "Context expects 2 values"
                                                       _g280806_)))
                                          (let ((_%$%target278458278499%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g280805_ 0)))
                                                (_%$%tl278460278502%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g280805_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl278460278502%_))
                                                (letrec ((_%$%loop278461278505%_
                                                          (lambda (_%$%hd278459278509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%signature278465278512%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd278459278509%_))
                        (let ((_%$%e278462278514%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd278459278509%_))))
                          (let ((_%$%lp-hd278463278518%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e278462278514%_)))
                                (_%$%lp-tl278464278521%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e278462278514%_))))
                            (_%$%loop278461278505%_
                             _%$%lp-tl278464278521%_
                             (cons _%$%lp-hd278463278518%_
                                   _%$%signature278465278512%_))))
                        (let ((_%$%signature278466278524%_
                               (reverse _%$%signature278465278512%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd278456278493%_))
                              (let* ((_%$%g278547278562%_
                                      (lambda (_%$%g278548278558%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g278548278558%_))))
                                     (_%$%g278546278741%_
                                      (lambda (_%$%g278548278566%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%g278548278566%_))
                                            (let ((_%$%e278551278569%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%g278548278566%_))))
                                              (let ((_%$%hd278552278573%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e278551278569%_)))
                                                    (_%$%tl278553278576%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e278551278569%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl278553278576%_))
                                                    (let ((_%$%e278554278579%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl278553278576%_))))
                                                      (let ((_%$%hd278555278583%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e278554278579%_)))
                    (_%$%tl278556278586%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e278554278579%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl278556278586%_))
                    (let* ((_%$%g278607278615%_
                            (lambda (_%$%g278608278611%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g278608278611%_))))
                           (_%$%g278606278737%_
                            (lambda (_%$%g278608278619%_)
                              (let* ((_%unchecked278635%_
                                      (|gxc[1]#signature->unchecked-signature|
                                       _%$%hd278555278583%_))
                                     (_%$%g278638278646%_
                                      (lambda (_%$%g278639278642%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g278639278642%_))))
                                     (_%$%g278637278669%_
                                      (lambda (_%$%g278639278650%_)
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'begin))
                                              (cons _%$%g278608278619%_
                                                    (cons _%$%g278639278650%_
                                                          '()))))))
                                (_%$%g278637278669%_
                                 (if _%unchecked278635%_
                                     (let* ((_%$%g278673278688%_
                                             (lambda (_%$%g278674278684%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g278674278684%_))))
                                            (_%$%g278672278733%_
                                             (lambda (_%$%g278674278692%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g278674278692%_))
                                                   (let ((_%$%e278677278695%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%$%g278674278692%_))))
                                                     (let ((_%$%hd278678278699%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e278677278695%_)))
                                                           (_%$%tl278679278702%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e278677278695%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl278679278702%_))
                                                           (let ((_%$%e278680278705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%$%tl278679278702%_))))
                     (let ((_%$%hd278681278709%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e278680278705%_)))
                           (_%$%tl278682278712%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e278680278705%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl278682278712%_))
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'declare-type))
                                 (cons _%$%hd278678278699%_
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-!primitive-lambda))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%$%hd278552278573%_ '()))
                 (cons '#f
                       (cons 'signature: (cons _%$%hd278681278709%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (_%$%g278673278688%_ _%$%g278674278692%_))))
                   (_%$%g278673278688%_ _%$%g278674278692%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g278673278688%_
                                                    _%$%g278674278692%_)))))
                                       (_%$%g278672278733%_
                                        _%unchecked278635%_))
                                     '(begin)))))))
                      (_%$%g278606278737%_
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'declare-type))
                             (cons _%$%hd278456278493%_
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
                                                           (cons _%$%hd278552278573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons 'signature:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%hd278555278583%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                    (_%$%g278547278562%_ _%$%g278548278566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g278547278562%_
                                                     _%$%g278548278566%_))))
                                            (_%$%g278547278562%_
                                             _%$%g278548278566%_)))))
                                (_%$%g278546278741%_
                                 (|gxc[1]#parse-signature|
                                  _%stx278445%_
                                  _%$%hd278456278493%_
                                  (let ((__tmp280807
                                         (lambda (_%$%g278744278747%_
                                                  _%$%g278745278750%_)
                                           (cons _%$%g278744278747%_
                                                 _%$%g278745278750%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp280807
                                     '()
                                     _%$%signature278466278524%_)))))
                              (_%$%g278448278472%_ _%$%g278449278476%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop278461278505%_
                                                   _%$%target278458278499%_
                                                   '()))
                                                (_%$%g278448278472%_
                                                 _%$%g278449278476%_)))))
                                      (_%$%g278448278472%_
                                       _%$%g278449278476%_))))
                              (_%$%g278448278472%_ _%$%g278449278476%_))))
                      (_%$%g278448278472%_ _%$%g278449278476%_)))))
          (_%$%g278447278753%_ _%stx278445%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx278758%_)
        (let* ((_%$%g278761278785%_
                (lambda (_%$%g278762278781%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278762278781%_))))
               (_%$%g278760279660%_
                (lambda (_%$%g278762278789%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278762278789%_))
                      (let ((_%$%e278765278792%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278762278789%_))))
                        (let ((_%$%hd278766278796%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278765278792%_)))
                              (_%$%tl278767278799%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278765278792%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278767278799%_))
                              (let ((_%$%e278768278802%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278767278799%_))))
                                (let ((_%$%hd278769278806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278768278802%_)))
                                      (_%$%tl278770278809%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278768278802%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl278770278809%_))
                                      (let ((_g280808_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl278770278809%_
                                                '0))))
                                        (begin
                                          (let ((_g280809_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g280808_)
                                                       (##values-length
                                                        _g280808_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g280809_ 2)))
                                                (error "Context expects 2 values"
                                                       _g280809_)))
                                          (let ((_%$%target278771278812%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g280808_ 0)))
                                                (_%$%tl278773278815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g280808_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl278773278815%_))
                                                (letrec ((_%$%loop278774278818%_
                                                          (lambda (_%$%hd278772278822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%case-signature278778278825%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd278772278822%_))
                        (let ((_%$%e278775278827%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd278772278822%_))))
                          (let ((_%$%lp-hd278776278831%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e278775278827%_)))
                                (_%$%lp-tl278777278834%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e278775278827%_))))
                            (_%$%loop278774278818%_
                             _%$%lp-tl278777278834%_
                             (cons _%$%lp-hd278776278831%_
                                   _%$%case-signature278778278825%_))))
                        (let ((_%$%case-signature278779278837%_
                               (reverse _%$%case-signature278778278825%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd278769278806%_))
                              (let* ((_%signatures278873%_
                                      (map (lambda (_%$%g278859278861%_)
                                             (|gxc[1]#parse-signature|
                                              _%stx278758%_
                                              _%$%hd278769278806%_
                                              _%$%g278859278861%_))
                                           (let ((__tmp280810
                                                  (lambda (_%$%g278864278867%_
                                                           _%$%g278865278870%_)
                                                    (cons _%$%g278864278867%_
                                                          _%$%g278865278870%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp280810
                                              '()
                                              _%$%case-signature278779278837%_))))
                                     (_%$%g278876278902%_
                                      (lambda (_%$%g278877278898%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g278877278898%_))))
                                     (_%$%g278875279656%_
                                      (lambda (_%$%g278877278906%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g278877278906%_))
                                            (let ((_g280811_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g278877278906%_
                                                      '0))))
                                              (begin
                                                (let ((_g280812_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g280811_)
                                                             (##values-length
                                                              _g280811_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g280812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g280812_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target278880278909%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g280811_
                                                          0)))
                                                      (_%$%tl278882278912%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g280811_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl278882278912%_))
                                                      (letrec ((_%$%loop278883278915%_
                                                                (lambda (_%$%hd278881278919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%sig278887278922%_
                                 _%$%arity278888278923%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd278881278919%_))
                              (let ((_%$%e278884278925%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd278881278919%_))))
                                (let ((_%$%lp-hd278885278929%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278884278925%_)))
                                      (_%$%lp-tl278886278932%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278884278925%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%lp-hd278885278929%_))
                                      (let ((_%$%e278891278935%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%lp-hd278885278929%_))))
                                        (let ((_%$%hd278892278939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278891278935%_)))
                                              (_%$%tl278893278942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278891278935%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl278893278942%_))
                                              (let ((_%$%e278894278945%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl278893278942%_))))
                                                (let ((_%$%hd278895278949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e278894278945%_)))
                                                      (_%$%tl278896278952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e278894278945%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl278896278952%_))
                                                      (_%$%loop278883278915%_
                                                       _%$%lp-tl278886278932%_
                                                       (cons _%$%hd278895278949%_
                                                             _%$%sig278887278922%_)
                                                       (cons _%$%hd278892278939%_
                                                             _%$%arity278888278923%_))
                                                      (_%$%g278876278902%_
                                                       _%$%g278877278906%_))))
                                              (_%$%g278876278902%_
                                               _%$%g278877278906%_))))
                                      (_%$%g278876278902%_
                                       _%$%g278877278906%_))))
                              (let ((_%$%sig278889278955%_
                                     (reverse _%$%sig278887278922%_))
                                    (_%$%arity278890278957%_
                                     (reverse _%$%arity278888278923%_)))
                                (let* ((_%$%g278978278986%_
                                        (lambda (_%$%g278979278982%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g278979278982%_))))
                                       (_%$%g278977279641%_
                                        (lambda (_%$%g278979278990%_)
                                          (let* ((_%$%g279006279014%_
                                                  (lambda (_%$%g279007279010%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g279007279010%_))))
                                                 (_%$%g279005279036%_
                                                  (lambda (_%$%g279007279018%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%$%g278979278990%_
                                                                (cons _%$%g279007279018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g279005279036%_
                                             (let ((_g280813_
                                                    (let _%loop279040%_ ((_%rest279043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%signatures278873%_)
                                 (_%unchecked-proc279045%_ '#f)
                                 (_%unchecked-clauses279046%_ '()))
              (let* ((_%$%rest279047279055%_ _%rest279043%_)
                     (_%$%else279049279067%_
                      (lambda ()
                        (values _%unchecked-proc279045%_
                                (reverse! _%unchecked-clauses279046%_))))
                     (_%$%K279051279508%_
                      (lambda (_%rest279071%_ _%hd279073%_)
                        (let* ((_%$%g279075279162%_
                                (lambda (_%$%g279076279158%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g279076279158%_))))
                               (_%$%g279074279504%_
                                (lambda (_%$%g279076279166%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%g279076279166%_))
                                      (let ((_%$%e279083279169%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%g279076279166%_))))
                                        (let ((_%$%hd279084279173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e279083279169%_)))
                                              (_%$%tl279085279176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e279083279169%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl279085279176%_))
                                              (let ((_%$%e279086279179%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl279085279176%_))))
                                                (let ((_%$%hd279087279183%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e279086279179%_)))
                                                      (_%$%tl279088279186%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e279086279179%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd279087279183%_))
                                                      (let ((_%$%e279089279189%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%hd279087279183%_))))
                (let ((_%$%hd279090279193%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e279089279189%_)))
                      (_%$%tl279091279196%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e279089279189%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl279091279196%_))
                      (let ((_%$%e279092279199%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl279091279196%_))))
                        (let ((_%$%hd279093279203%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e279092279199%_)))
                              (_%$%tl279094279206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e279092279199%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-datum? _%$%hd279093279203%_))
                              (let ((_%$%e279095279209%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd279093279203%_))))
                                (if (equal? _%$%e279095279209%_ 'arguments:)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl279094279206%_))
                                        (let ((_%$%e279096279213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl279094279206%_))))
                                          (let ((_%$%hd279097279217%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e279096279213%_)))
                                                (_%$%tl279098279220%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e279096279213%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd279097279217%_))
                                                (let ((_%$%e279099279223%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%hd279097279217%_))))
                                                  (let ((_%$%hd279100279227%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e279099279223%_)))
                                                        (_%$%tl279101279230%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e279099279223%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd279100279227%_))
                                                        (if (let ((__tmp280815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gxc[1]#_g280816_|))
                      (declare (not safe))
                      (gx#free-identifier=? __tmp280815 _%$%hd279100279227%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl279101279230%_))
                        (let ((_%$%e279102279233%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl279101279230%_))))
                          (let ((_%$%hd279103279237%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e279102279233%_)))
                                (_%$%tl279104279240%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e279102279233%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl279104279240%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl279098279220%_))
                                    (let ((_%$%e279105279243%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl279098279220%_))))
                                      (let ((_%$%hd279106279247%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e279105279243%_)))
                                            (_%$%tl279107279250%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e279105279243%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-datum?
                                               _%$%hd279106279247%_))
                                            (let ((_%$%e279108279253%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd279106279247%_))))
                                              (if (equal? _%$%e279108279253%_
                                                          'return:)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl279107279250%_))
                                                      (let ((_%$%e279109279257%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl279107279250%_))))
                (let ((_%$%hd279110279261%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e279109279257%_)))
                      (_%$%tl279111279264%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e279109279257%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd279110279261%_))
                      (let ((_%$%e279112279267%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%hd279110279261%_))))
                        (let ((_%$%hd279113279271%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e279112279267%_)))
                              (_%$%tl279114279274%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e279112279267%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd279113279271%_))
                              (if (let ((__tmp280817 |gxc[1]#_g280818_|))
                                    (declare (not safe))
                                    (gx#free-identifier=?
                                     __tmp280817
                                     _%$%hd279113279271%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl279114279274%_))
                                      (let ((_%$%e279115279277%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl279114279274%_))))
                                        (let ((_%$%hd279116279281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e279115279277%_)))
                                              (_%$%tl279117279284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e279115279277%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl279117279284%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl279111279264%_))
                                                  (let ((_%$%e279118279287%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl279111279264%_))))
                                                    (let ((_%$%hd279119279291%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e279118279287%_)))
                                                          (_%$%tl279120279294%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e279118279287%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-datum?
                                                             _%$%hd279119279291%_))
                                                          (let ((_%$%e279121279297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd279119279291%_))))
                    (if (equal? _%$%e279121279297%_ 'effect:)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl279120279294%_))
                            (let ((_%$%e279122279301%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl279120279294%_))))
                              (let ((_%$%hd279123279305%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e279122279301%_)))
                                    (_%$%tl279124279308%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e279122279301%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd279123279305%_))
                                    (let ((_%$%e279125279311%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd279123279305%_))))
                                      (let ((_%$%hd279126279315%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e279125279311%_)))
                                            (_%$%tl279127279318%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e279125279311%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd279126279315%_))
                                            (if (let ((__tmp280819
                                                       |gxc[1]#_g280820_|))
                                                  (declare (not safe))
                                                  (gx#free-identifier=?
                                                   __tmp280819
                                                   _%$%hd279126279315%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl279127279318%_))
                                                    (let ((_%$%e279128279321%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl279127279318%_))))
                                                      (let ((_%$%hd279129279325%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e279128279321%_)))
                    (_%$%tl279130279328%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e279128279321%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl279130279328%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl279124279308%_))
                        (let ((_%$%e279131279331%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl279124279308%_))))
                          (let ((_%$%hd279132279335%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e279131279331%_)))
                                (_%$%tl279133279338%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e279131279331%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd279132279335%_))
                                (let ((_%$%e279134279341%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd279132279335%_))))
                                  (if (equal? _%$%e279134279341%_ 'unchecked:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl279133279338%_))
                                          (let ((_%$%e279135279345%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl279133279338%_))))
                                            (let ((_%$%hd279136279349%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e279135279345%_)))
                                                  (_%$%tl279137279352%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e279135279345%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd279136279349%_))
                                                  (let ((_%$%e279138279355%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd279136279349%_))))
                                                    (let ((_%$%hd279139279359%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e279138279355%_)))
                                                          (_%$%tl279140279362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e279138279355%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd279139279359%_))
                                                          (if (let ((__tmp280821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             |gxc[1]#_g280822_|))
                        (declare (not safe))
                        (gx#free-identifier=?
                         __tmp280821
                         _%$%hd279139279359%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl279140279362%_))
                          (let ((_%$%e279141279365%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl279140279362%_))))
                            (let ((_%$%hd279142279369%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e279141279365%_)))
                                  (_%$%tl279143279372%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e279141279365%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl279143279372%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl279137279352%_))
                                      (let ((_%$%e279144279375%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl279137279352%_))))
                                        (let ((_%$%hd279145279379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e279144279375%_)))
                                              (_%$%tl279146279382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e279144279375%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd279145279379%_))
                                              (let ((_%$%e279147279385%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd279145279379%_))))
                                                (if (equal? _%$%e279147279385%_
                                                            'origin:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl279146279382%_))
                                                        (let ((_%$%e279148279389%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl279146279382%_))))
                  (let ((_%$%hd279149279393%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e279148279389%_)))
                        (_%$%tl279150279396%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e279148279389%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd279149279393%_))
                        (let ((_%$%e279151279399%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd279149279393%_))))
                          (let ((_%$%hd279152279403%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e279151279399%_)))
                                (_%$%tl279153279406%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e279151279399%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd279152279403%_))
                                (if (let ((__tmp280823 |gxc[1]#_g280824_|))
                                      (declare (not safe))
                                      (gx#free-identifier=?
                                       __tmp280823
                                       _%$%hd279152279403%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl279153279406%_))
                                        (let ((_%$%e279154279409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl279153279406%_))))
                                          (let ((_%$%hd279155279413%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e279154279409%_)))
                                                (_%$%tl279156279416%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e279154279409%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl279156279416%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl279150279396%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl279088279186%_))
                                                        (let ((_%clause279496%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%$%hd279084279173%_ '()))
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
                                     (cons _%$%hd279116279281%_ '()))
                               (cons 'origin:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%hd279155279413%_
                                                       '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                      (_%unchecked279498%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%$%hd279142279369%_))))
                  (_%loop279040%_
                   _%rest279071%_
                   (let ((_%$e279500%_ _%unchecked279498%_))
                     (if _%$e279500%_ _%$e279500%_ _%unchecked-proc279045%_))
                   (cons _%clause279496%_ _%unchecked-clauses279046%_)))
                (_%$%g279075279162%_ _%$%g279076279166%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g279075279162%_
                                                     _%$%g279076279166%_))
                                                (_%$%g279075279162%_
                                                 _%$%g279076279166%_))))
                                        (_%$%g279075279162%_
                                         _%$%g279076279166%_))
                                    (_%$%g279075279162%_ _%$%g279076279166%_))
                                (_%$%g279075279162%_ _%$%g279076279166%_))))
                        (_%$%g279075279162%_ _%$%g279076279166%_))))
                (_%$%g279075279162%_ _%$%g279076279166%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g279075279162%_
                                                     _%$%g279076279166%_)))
                                              (_%$%g279075279162%_
                                               _%$%g279076279166%_))))
                                      (_%$%g279075279162%_
                                       _%$%g279076279166%_))
                                  (_%$%g279075279162%_ _%$%g279076279166%_))))
                          (_%$%g279075279162%_ _%$%g279076279166%_))
                      (_%$%g279075279162%_ _%$%g279076279166%_))
                  (_%$%g279075279162%_ _%$%g279076279166%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g279075279162%_
                                                   _%$%g279076279166%_))))
                                          (_%$%g279075279162%_
                                           _%$%g279076279166%_))
                                      (_%$%g279075279162%_
                                       _%$%g279076279166%_)))
                                (_%$%g279075279162%_ _%$%g279076279166%_))))
                        (_%$%g279075279162%_ _%$%g279076279166%_))
                    (_%$%g279075279162%_ _%$%g279076279166%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g279075279162%_
                                                     _%$%g279076279166%_))
                                                (_%$%g279075279162%_
                                                 _%$%g279076279166%_))
                                            (_%$%g279075279162%_
                                             _%$%g279076279166%_))))
                                    (_%$%g279075279162%_
                                     _%$%g279076279166%_))))
                            (_%$%g279075279162%_ _%$%g279076279166%_))
                        (_%$%g279075279162%_ _%$%g279076279166%_)))
                  (_%$%g279075279162%_ _%$%g279076279166%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g279075279162%_
                                                   _%$%g279076279166%_))
                                              (_%$%g279075279162%_
                                               _%$%g279076279166%_))))
                                      (_%$%g279075279162%_
                                       _%$%g279076279166%_))
                                  (_%$%g279075279162%_ _%$%g279076279166%_))
                              (_%$%g279075279162%_ _%$%g279076279166%_))))
                      (_%$%g279075279162%_ _%$%g279076279166%_))))
              (_%$%g279075279162%_ _%$%g279076279166%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g279075279162%_
                                                   _%$%g279076279166%_)))
                                            (_%$%g279075279162%_
                                             _%$%g279076279166%_))))
                                    (_%$%g279075279162%_ _%$%g279076279166%_))
                                (_%$%g279075279162%_ _%$%g279076279166%_))))
                        (_%$%g279075279162%_ _%$%g279076279166%_))
                    (_%$%g279075279162%_ _%$%g279076279166%_))
                (_%$%g279075279162%_ _%$%g279076279166%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g279075279162%_
                                                 _%$%g279076279166%_))))
                                        (_%$%g279075279162%_
                                         _%$%g279076279166%_))
                                    (_%$%g279075279162%_ _%$%g279076279166%_)))
                              (_%$%g279075279162%_ _%$%g279076279166%_))))
                      (_%$%g279075279162%_ _%$%g279076279166%_))))
              (_%$%g279075279162%_ _%$%g279076279166%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g279075279162%_
                                               _%$%g279076279166%_))))
                                      (_%$%g279075279162%_
                                       _%$%g279076279166%_)))))
                          (_%$%g279074279504%_ _%hd279073%_)))))
                (if (pair? _%$%rest279047279055%_)
                    (let ((_%$%hd279052279512%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest279047279055%_)))
                          (_%$%tl279053279515%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest279047279055%_))))
                      (let* ((_%hd279518%_ _%$%hd279052279512%_)
                             (_%rest279521%_ _%$%tl279053279515%_))
                        (_%$%K279051279508%_ _%rest279521%_ _%hd279518%_)))
                    (_%$%else279049279067%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 (let ((_g280814_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g280813_)
                                                              (##values-length
                                                               _g280813_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g280814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g280814_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%unchecked-proc279524%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g280813_
                                                           0)))
                                                       (_%unchecked-clauses279526%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g280813_
                                                           1))))
                                                   (if _%unchecked-proc279524%_
                                                       (let* ((_%$%g279528279552%_
                                                               (lambda (_%$%g279529279548%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g279529279548%_))))
                      (_%$%g279527279637%_
                       (lambda (_%$%g279529279556%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%g279529279556%_))
                             (let ((_%$%e279532279559%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%$%g279529279556%_))))
                               (let ((_%$%hd279533279563%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e279532279559%_)))
                                     (_%$%tl279534279566%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e279532279559%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%tl279534279566%_))
                                     (let ((_%$%e279535279569%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%tl279534279566%_))))
                                       (let ((_%$%hd279536279573%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e279535279569%_)))
                                             (_%$%tl279537279576%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e279535279569%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair/null?
                                                _%$%hd279536279573%_))
                                             (let ((_g280825_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-split-splice
                                                       _%$%hd279536279573%_
                                                       '0))))
                                               (begin
                                                 (let ((_g280826_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g280825_)
                                                              (##values-length
                                                               _g280825_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g280826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g280826_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$%target279538279579%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g280825_
                                                           0)))
                                                       (_%$%tl279540279582%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g280825_
                                                           1))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl279540279582%_))
                                                       (letrec ((_%$%loop279541279585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%hd279539279589%_
                                  _%$%clause279545279592%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd279539279589%_))
                               (let ((_%$%e279542279594%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%$%hd279539279589%_))))
                                 (let ((_%$%lp-hd279543279598%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e279542279594%_)))
                                       (_%$%lp-tl279544279601%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e279542279594%_))))
                                   (_%$%loop279541279585%_
                                    _%$%lp-tl279544279601%_
                                    (cons _%$%lp-hd279543279598%_
                                          _%$%clause279545279592%_))))
                               (let ((_%$%clause279546279604%_
                                      (reverse _%$%clause279545279592%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl279537279576%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-type))
                                           (cons _%$%hd279533279563%_
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!primitive-case-lambda))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '@list))
                                 (let ((__tmp280827
                                        (lambda (_%$%g279628279631%_
                                                 _%$%g279629279634%_)
                                          (cons _%$%g279628279631%_
                                                _%$%g279629279634%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp280827
                                    '()
                                    _%$%clause279546279604%_)))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%g279528279552%_
                                      _%$%g279529279556%_)))))))
                 (_%$%loop279541279585%_ _%$%target279538279579%_ '()))
               (_%$%g279528279552%_ _%$%g279529279556%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g279528279552%_
                                              _%$%g279529279556%_))))
                                     (_%$%g279528279552%_
                                      _%$%g279529279556%_))))
                             (_%$%g279528279552%_ _%$%g279529279556%_)))))
                 (_%$%g279527279637%_
                  (list _%unchecked-proc279524%_ _%unchecked-clauses279526%_)))
               '(begin))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g278977279641%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'declare-type))
                                         (cons _%$%hd278769278806%_
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
                                    _%$%sig278889278955%_
                                    _%$%arity278890278957%_))
                                 (let ((__tmp280828
                                        (lambda (_%$%g279644279648%_
                                                 _%$%g279645279651%_
                                                 _%$%g279646279653%_)
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!primitive-lambda))
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote))
                          (cons _%$%g279645279651%_ '()))
                    (cons '#f
                          (cons 'signature: (cons _%$%g279644279648%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%g279646279653%_))))
                                   (declare (not safe))
                                   (foldr__1
                                    __tmp280828
                                    '()
                                    _%$%sig278889278955%_
                                    _%$%arity278890278957%_))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))))))
                (_%$%loop278883278915%_ _%$%target278880278909%_ '() '()))
              (_%$%g278876278902%_ _%$%g278877278906%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g278876278902%_
                                             _%$%g278877278906%_)))))
                                (_%$%g278875279656%_ _%signatures278873%_))
                              (_%$%g278761278785%_ _%$%g278762278789%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop278774278818%_
                                                   _%$%target278771278812%_
                                                   '()))
                                                (_%$%g278761278785%_
                                                 _%$%g278762278789%_)))))
                                      (_%$%g278761278785%_
                                       _%$%g278762278789%_))))
                              (_%$%g278761278785%_ _%$%g278762278789%_))))
                      (_%$%g278761278785%_ _%$%g278762278789%_)))))
          (_%$%g278760279660%_ _%stx278758%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx279668%_)
        (let* ((_%__stx280648280649%_ _%$stx279668%_)
               (_%$%g279674279734%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx280648280649%_)))))
          (let ((_%__kont280651280652%_
                 (lambda (_%$%g279676279956%_ _%$%g279677279958%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g279677279958%_ '()))
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
                                                       (cons _%$%g279677279958%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g279676279956%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont280653280654%_
                 (lambda (_%$%g279691279881%_
                          _%$%g279692279883%_
                          _%$%g279693279884%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g279693279884%_ '()))
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
                                                       (cons _%$%g279693279884%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g279692279883%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g279691279881%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont280655280656%_
                 (lambda (_%$%g279710279795%_
                          _%$%g279711279797%_
                          _%$%g279712279798%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g279712279798%_ '()))
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
                                                       (cons _%$%g279712279798%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g279711279797%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g279710279795%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx280648280649%_))
                (let ((_%$%e279678279912%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx280648280649%_))))
                  (let ((_%$%tl279680279919%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e279678279912%_)))
                        (_%$%hd279679279916%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e279678279912%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl279680279919%_))
                        (let ((_%$%e279681279922%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl279680279919%_))))
                          (let ((_%$%tl279683279929%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e279681279922%_)))
                                (_%$%hd279682279926%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e279681279922%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd279682279926%_))
                                (let ((_%$%e279684279932%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd279682279926%_))))
                                  (if (equal? _%$%e279684279932%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl279683279929%_))
                                          (let ((_%$%e279685279936%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl279683279929%_))))
                                            (let ((_%$%tl279687279943%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e279685279936%_)))
                                                  (_%$%hd279686279940%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e279685279936%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl279687279943%_))
                                                  (let ((_%$%e279688279946%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl279687279943%_))))
                                                    (let ((_%$%tl279690279953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e279688279946%_)))
                                                          (_%$%hd279689279950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e279688279946%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl279690279953%_))
                                                          (_%__kont280651280652%_
                                                           _%$%hd279689279950%_
                                                           _%$%hd279686279940%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g279674279734%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g279674279734%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g279674279734%_)))
                                      (if (equal? _%$%e279684279932%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl279683279929%_))
                                              (let ((_%$%e279701279851%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl279683279929%_))))
                                                (let ((_%$%tl279703279858%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e279701279851%_)))
                                                      (_%$%hd279702279855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e279701279851%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl279703279858%_))
                                                      (let ((_%$%e279704279861%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl279703279858%_))))
                (let ((_%$%tl279706279868%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e279704279861%_)))
                      (_%$%hd279705279865%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e279704279861%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl279706279868%_))
                      (let ((_%$%e279707279871%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl279706279868%_))))
                        (let ((_%$%tl279709279878%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e279707279871%_)))
                              (_%$%hd279708279875%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e279707279871%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl279709279878%_))
                              (_%__kont280653280654%_
                               _%$%hd279708279875%_
                               _%$%hd279705279865%_
                               _%$%hd279702279855%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g279674279734%_)))))
                      (let () (declare (not safe)) (_%$%g279674279734%_)))))
              (let () (declare (not safe)) (_%$%g279674279734%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g279674279734%_)))
                                          (if (equal? _%$%e279684279932%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl279683279929%_))
                                                  (let ((_%$%e279720279765%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl279683279929%_))))
                                                    (let ((_%$%tl279722279772%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e279720279765%_)))
                                                          (_%$%hd279721279769%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e279720279765%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl279722279772%_))
                                                          (let ((_%$%e279723279775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl279722279772%_))))
                    (let ((_%$%tl279725279782%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e279723279775%_)))
                          (_%$%hd279724279779%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e279723279775%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl279725279782%_))
                          (let ((_%$%e279726279785%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl279725279782%_))))
                            (let ((_%$%tl279728279792%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e279726279785%_)))
                                  (_%$%hd279727279789%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e279726279785%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl279728279792%_))
                                  (_%__kont280655280656%_
                                   _%$%hd279727279789%_
                                   _%$%hd279724279779%_
                                   _%$%hd279721279769%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g279674279734%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g279674279734%_)))))
                  (let () (declare (not safe)) (_%$%g279674279734%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g279674279734%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g279674279734%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g279674279734%_)))))
                        (let () (declare (not safe)) (_%$%g279674279734%_)))))
                (let () (declare (not safe)) (_%$%g279674279734%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx279980%_)
        (let* ((_%$%g279984280004%_
                (lambda (_%$%g279985280000%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g279985280000%_))))
               (_%$%g279983280073%_
                (lambda (_%$%g279985280008%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g279985280008%_))
                      (let ((_%$%e279987280011%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g279985280008%_))))
                        (let ((_%$%hd279988280015%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e279987280011%_)))
                              (_%$%tl279989280018%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e279987280011%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl279989280018%_))
                              (let ((_g280829_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl279989280018%_
                                        '0))))
                                (begin
                                  (let ((_g280830_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g280829_)
                                               (##values-length _g280829_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g280830_ 2)))
                                        (error "Context expects 2 values"
                                               _g280830_)))
                                  (let ((_%$%target279990280021%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280829_ 0)))
                                        (_%$%tl279992280024%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280829_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl279992280024%_))
                                        (letrec ((_%$%loop279993280027%_
                                                  (lambda (_%$%hd279991280031%_
                                                           _%$%decl279997280034%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd279991280031%_))
                                                        (let ((_%$%e279994280036%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd279991280031%_))))
                  (let ((_%$%lp-hd279995280040%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e279994280036%_)))
                        (_%$%lp-tl279996280043%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e279994280036%_))))
                    (_%$%loop279993280027%_
                     _%$%lp-tl279996280043%_
                     (cons _%$%lp-hd279995280040%_ _%$%decl279997280034%_))))
                (let ((_%$%decl279998280046%_
                       (reverse _%$%decl279997280034%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (let ((__tmp280831
                               (lambda (_%$%g280064280067%_
                                        _%$%g280065280070%_)
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-builtin-class))
                                             _%$%g280064280067%_)
                                       _%$%g280065280070%_))))
                          (declare (not safe))
                          (foldr__0
                           __tmp280831
                           '()
                           _%$%decl279998280046%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop279993280027%_
                                           _%$%target279990280021%_
                                           '()))
                                        (_%$%g279984280004%_
                                         _%$%g279985280008%_)))))
                              (_%$%g279984280004%_ _%$%g279985280008%_))))
                      (_%$%g279984280004%_ _%$%g279985280008%_)))))
          (_%$%g279983280073%_ _%$stx279980%_))))))
