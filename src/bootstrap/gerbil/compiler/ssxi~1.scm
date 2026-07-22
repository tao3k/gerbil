(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g280585_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280592_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280594_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280596_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280598_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280600_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280612_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280614_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280616_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280618_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280620_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx274043%_)
        (let* ((_%$%g274047274065%_
                (lambda (_%$%g274048274061%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274048274061%_))))
               (_%$%g274046274120%_
                (lambda (_%$%g274048274069%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274048274069%_))
                      (let ((_%$%e274051274072%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274048274069%_))))
                        (let ((_%$%hd274052274076%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274051274072%_)))
                              (_%$%tl274053274079%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274051274072%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl274053274079%_))
                              (let ((_%$%e274054274082%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl274053274079%_))))
                                (let ((_%$%hd274055274086%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e274054274082%_)))
                                      (_%$%tl274056274089%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e274054274082%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl274056274089%_))
                                      (let ((_%$%e274057274092%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl274056274089%_))))
                                        (let ((_%$%hd274058274096%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e274057274092%_)))
                                              (_%$%tl274059274099%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e274057274092%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl274059274099%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd274055274086%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-type!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd274055274086%_ '()))
                      (cons _%$%hd274058274096%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g274047274065%_
                                                   _%$%g274048274069%_))
                                              (_%$%g274047274065%_
                                               _%$%g274048274069%_))))
                                      (_%$%g274047274065%_
                                       _%$%g274048274069%_))))
                              (_%$%g274047274065%_ _%$%g274048274069%_))))
                      (_%$%g274047274065%_ _%$%g274048274069%_)))))
          (_%$%g274046274120%_ _%$stx274043%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx274124%_)
        (let* ((_%$%g274128274146%_
                (lambda (_%$%g274129274142%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274129274142%_))))
               (_%$%g274127274201%_
                (lambda (_%$%g274129274150%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274129274150%_))
                      (let ((_%$%e274132274153%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274129274150%_))))
                        (let ((_%$%hd274133274157%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274132274153%_)))
                              (_%$%tl274134274160%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274132274153%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl274134274160%_))
                              (let ((_%$%e274135274163%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl274134274160%_))))
                                (let ((_%$%hd274136274167%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e274135274163%_)))
                                      (_%$%tl274137274170%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e274135274163%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl274137274170%_))
                                      (let ((_%$%e274138274173%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl274137274170%_))))
                                        (let ((_%$%hd274139274177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e274138274173%_)))
                                              (_%$%tl274140274180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e274138274173%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl274140274180%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd274136274167%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-class!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd274136274167%_ '()))
                      (cons _%$%hd274139274177%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g274128274146%_
                                                   _%$%g274129274150%_))
                                              (_%$%g274128274146%_
                                               _%$%g274129274150%_))))
                                      (_%$%g274128274146%_
                                       _%$%g274129274150%_))))
                              (_%$%g274128274146%_ _%$%g274129274150%_))))
                      (_%$%g274128274146%_ _%$%g274129274150%_)))))
          (_%$%g274127274201%_ _%$stx274124%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx274205%_)
        (let* ((_%$%g274209274238%_
                (lambda (_%$%g274210274234%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274210274234%_))))
               (_%$%g274208274334%_
                (lambda (_%$%g274210274242%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274210274242%_))
                      (let ((_%$%e274213274245%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274210274242%_))))
                        (let ((_%$%hd274214274249%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274213274245%_)))
                              (_%$%tl274215274252%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274213274245%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl274215274252%_))
                              (let ((_g280563_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl274215274252%_
                                        '0))))
                                (begin
                                  (let ((_g280564_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g280563_)
                                               (##values-length _g280563_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g280564_ 2)))
                                        (error "Context expects 2 values"
                                               _g280564_)))
                                  (let ((_%$%target274216274255%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280563_ 0)))
                                        (_%$%tl274218274258%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280563_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl274218274258%_))
                                        (letrec ((_%$%loop274219274261%_
                                                  (lambda (_%$%hd274217274265%_
                                                           _%$%type274223274268%_
                                                           _%$%symbol274224274269%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd274217274265%_))
                                                        (let ((_%$%e274220274271%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd274217274265%_))))
                  (let ((_%$%lp-hd274221274275%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e274220274271%_)))
                        (_%$%lp-tl274222274278%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e274220274271%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd274221274275%_))
                        (let ((_%$%e274227274281%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd274221274275%_))))
                          (let ((_%$%hd274228274285%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e274227274281%_)))
                                (_%$%tl274229274288%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e274227274281%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl274229274288%_))
                                (let ((_%$%e274230274291%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl274229274288%_))))
                                  (let ((_%$%hd274231274295%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e274230274291%_)))
                                        (_%$%tl274232274298%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e274230274291%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl274232274298%_))
                                        (_%$%loop274219274261%_
                                         _%$%lp-tl274222274278%_
                                         (cons _%$%hd274231274295%_
                                               _%$%type274223274268%_)
                                         (cons _%$%hd274228274285%_
                                               _%$%symbol274224274269%_))
                                        (_%$%g274209274238%_
                                         _%$%g274210274242%_))))
                                (_%$%g274209274238%_ _%$%g274210274242%_))))
                        (_%$%g274209274238%_ _%$%g274210274242%_))))
                (let ((_%$%type274225274301%_ (reverse _%$%type274223274268%_))
                      (_%$%symbol274226274303%_
                       (reverse _%$%symbol274224274269%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%type274225274301%_
                             _%$%symbol274226274303%_))
                          (let ((__tmp280565
                                 (lambda (_%$%g274322274326%_
                                          _%$%g274323274329%_
                                          _%$%g274324274331%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%$%g274323274329%_
                                                     (cons _%$%g274322274326%_
                                                           '())))
                                         _%$%g274324274331%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp280565
                             '()
                             _%$%type274225274301%_
                             _%$%symbol274226274303%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop274219274261%_
                                           _%$%target274216274255%_
                                           '()
                                           '()))
                                        (_%$%g274209274238%_
                                         _%$%g274210274242%_)))))
                              (_%$%g274209274238%_ _%$%g274210274242%_))))
                      (_%$%g274209274238%_ _%$%g274210274242%_)))))
          (_%$%g274208274334%_ _%$stx274205%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx274339%_)
        (let* ((_%__stx279874279875%_ _%$stx274339%_)
               (_%$%g274344274386%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx279874279875%_)))))
          (let ((_%__kont279877279878%_
                 (lambda (_%$%g274346274514%_
                          _%$%g274347274516%_
                          _%$%g274348274517%_
                          _%$%g274349274518%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g274349274518%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g274348274517%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%g274347274516%_
                                                       '()))
                                           (cons _%$%g274346274514%_ '())))))))
                (_%__kont279879279880%_
                 (lambda (_%$%g274365274433%_
                          _%$%g274366274435%_
                          _%$%g274367274436%_
                          _%$%g274368274437%_)
                   (cons _%$%g274368274437%_
                         (cons _%$%g274367274436%_
                               (cons _%$%g274366274435%_
                                     (cons _%$%g274365274433%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match279913279914%_
                   (lambda (_%$%e274350274464%_
                            _%$%hd274351274468%_
                            _%$%tl274352274471%_
                            _%$%e274353274474%_
                            _%$%hd274354274478%_
                            _%$%tl274355274481%_
                            _%$%e274356274484%_
                            _%$%hd274357274488%_
                            _%$%tl274358274491%_
                            _%$%e274359274494%_
                            _%$%hd274360274498%_
                            _%$%tl274361274501%_
                            _%$%e274362274504%_
                            _%$%hd274363274508%_
                            _%$%tl274364274511%_)
                     (let ((_%$%g274346274514%_ _%$%hd274363274508%_)
                           (_%$%g274347274516%_ _%$%hd274360274498%_)
                           (_%$%g274348274517%_ _%$%hd274357274488%_)
                           (_%$%g274349274518%_ _%$%hd274354274478%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g274349274518%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g274348274517%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g274347274516%_)))
                           (_%__kont279877279878%_
                            _%$%g274346274514%_
                            _%$%g274347274516%_
                            _%$%g274348274517%_
                            _%$%g274349274518%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g274344274386%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx279874279875%_))
                  (let ((_%$%e274350274464%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx279874279875%_))))
                    (let ((_%$%tl274352274471%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e274350274464%_)))
                          (_%$%hd274351274468%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e274350274464%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl274352274471%_))
                          (let ((_%$%e274353274474%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl274352274471%_))))
                            (let ((_%$%tl274355274481%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e274353274474%_)))
                                  (_%$%hd274354274478%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e274353274474%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl274355274481%_))
                                  (let ((_%$%e274356274484%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl274355274481%_))))
                                    (let ((_%$%tl274358274491%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e274356274484%_)))
                                          (_%$%hd274357274488%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e274356274484%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl274358274491%_))
                                          (let ((_%$%e274359274494%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl274358274491%_))))
                                            (let ((_%$%tl274361274501%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e274359274494%_)))
                                                  (_%$%hd274360274498%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e274359274494%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl274361274501%_))
                                                  (let ((_%$%e274362274504%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl274361274501%_))))
                                                    (let ((_%$%tl274364274511%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e274362274504%_)))
                                                          (_%$%hd274363274508%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e274362274504%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl274364274511%_))
                                                          (_%__match279913279914%_
                                                           _%$%e274350274464%_
                                                           _%$%hd274351274468%_
                                                           _%$%tl274352274471%_
                                                           _%$%e274353274474%_
                                                           _%$%hd274354274478%_
                                                           _%$%tl274355274481%_
                                                           _%$%e274356274484%_
                                                           _%$%hd274357274488%_
                                                           _%$%tl274358274491%_
                                                           _%$%e274359274494%_
                                                           _%$%hd274360274498%_
                                                           _%$%tl274361274501%_
                                                           _%$%e274362274504%_
                                                           _%$%hd274363274508%_
                                                           _%$%tl274364274511%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g274344274386%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl274361274501%_))
                                                      (_%__kont279879279880%_
                                                       _%$%hd274360274498%_
                                                       _%$%hd274357274488%_
                                                       _%$%hd274354274478%_
                                                       _%$%hd274351274468%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g274344274386%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g274344274386%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g274344274386%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g274344274386%_)))))
                  (let () (declare (not safe)) (_%$%g274344274386%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx274543%_)
        (let* ((_%$%g274547274582%_
                (lambda (_%$%g274548274578%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274548274578%_))))
               (_%$%g274546274695%_
                (lambda (_%$%g274548274586%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274548274586%_))
                      (let ((_%$%e274552274589%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274548274586%_))))
                        (let ((_%$%hd274553274593%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274552274589%_)))
                              (_%$%tl274554274596%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274552274589%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl274554274596%_))
                              (let ((_g280566_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl274554274596%_
                                        '0))))
                                (begin
                                  (let ((_g280567_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g280566_)
                                               (##values-length _g280566_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g280567_ 2)))
                                        (error "Context expects 2 values"
                                               _g280567_)))
                                  (let ((_%$%target274555274599%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280566_ 0)))
                                        (_%$%tl274557274602%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280566_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl274557274602%_))
                                        (letrec ((_%$%loop274558274605%_
                                                  (lambda (_%$%hd274556274609%_
                                                           _%$%symbol274562274612%_
                                                           _%$%method274563274613%_
                                                           _%$%type-t274564274614%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd274556274609%_))
                                                        (let ((_%$%e274559274616%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd274556274609%_))))
                  (let ((_%$%lp-hd274560274620%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e274559274616%_)))
                        (_%$%lp-tl274561274623%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e274559274616%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd274560274620%_))
                        (let ((_%$%e274568274626%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd274560274620%_))))
                          (let ((_%$%hd274569274630%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e274568274626%_)))
                                (_%$%tl274570274633%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e274568274626%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl274570274633%_))
                                (let ((_%$%e274571274636%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl274570274633%_))))
                                  (let ((_%$%hd274572274640%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e274571274636%_)))
                                        (_%$%tl274573274643%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e274571274636%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl274573274643%_))
                                        (let ((_%$%e274574274646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl274573274643%_))))
                                          (let ((_%$%hd274575274650%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e274574274646%_)))
                                                (_%$%tl274576274653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e274574274646%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl274576274653%_))
                                                (_%$%loop274558274605%_
                                                 _%$%lp-tl274561274623%_
                                                 (cons _%$%hd274575274650%_
                                                       _%$%symbol274562274612%_)
                                                 (cons _%$%hd274572274640%_
                                                       _%$%method274563274613%_)
                                                 (cons _%$%hd274569274630%_
                                                       _%$%type-t274564274614%_))
                                                (_%$%g274547274582%_
                                                 _%$%g274548274586%_))))
                                        (_%$%g274547274582%_
                                         _%$%g274548274586%_))))
                                (_%$%g274547274582%_ _%$%g274548274586%_))))
                        (_%$%g274547274582%_ _%$%g274548274586%_))))
                (let ((_%$%symbol274565274656%_
                       (reverse _%$%symbol274562274612%_))
                      (_%$%method274566274658%_
                       (reverse _%$%method274563274613%_))
                      (_%$%type-t274567274659%_
                       (reverse _%$%type-t274564274614%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%symbol274565274656%_
                             _%$%method274566274658%_
                             _%$%type-t274567274659%_))
                          (let ((__tmp280568
                                 (lambda (_%$%g274680274685%_
                                          _%$%g274681274688%_
                                          _%$%g274682274690%_
                                          _%$%g274683274692%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-method))
                                               (cons _%$%g274682274690%_
                                                     (cons _%$%g274681274688%_
                                                           (cons _%$%g274680274685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%$%g274683274692%_))))
                            (declare (not safe))
                            (__foldr*
                             __tmp280568
                             '()
                             _%$%symbol274565274656%_
                             _%$%method274566274658%_
                             _%$%type-t274567274659%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop274558274605%_
                                           _%$%target274555274599%_
                                           '()
                                           '()
                                           '()))
                                        (_%$%g274547274582%_
                                         _%$%g274548274586%_)))))
                              (_%$%g274547274582%_ _%$%g274548274586%_))))
                      (_%$%g274547274582%_ _%$%g274548274586%_)))))
          (_%$%g274546274695%_ _%$stx274543%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx274700%_)
        (let* ((_%$%g274704274737%_
                (lambda (_%$%g274705274733%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274705274733%_))))
               (_%$%g274703274847%_
                (lambda (_%$%g274705274741%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274705274741%_))
                      (let ((_%$%e274709274744%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274705274741%_))))
                        (let ((_%$%hd274710274748%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274709274744%_)))
                              (_%$%tl274711274751%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274709274744%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl274711274751%_))
                              (let ((_%$%e274712274754%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl274711274751%_))))
                                (let ((_%$%hd274713274758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e274712274754%_)))
                                      (_%$%tl274714274761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e274712274754%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl274714274761%_))
                                      (let ((_g280569_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl274714274761%_
                                                '0))))
                                        (begin
                                          (let ((_g280570_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g280569_)
                                                       (##values-length
                                                        _g280569_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g280570_ 2)))
                                                (error "Context expects 2 values"
                                                       _g280570_)))
                                          (let ((_%$%target274715274764%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g280569_ 0)))
                                                (_%$%tl274717274767%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g280569_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl274717274767%_))
                                                (letrec ((_%$%loop274718274770%_
                                                          (lambda (_%$%hd274716274774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%symbol274722274777%_
                           _%$%method274723274778%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd274716274774%_))
                        (let ((_%$%e274719274780%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd274716274774%_))))
                          (let ((_%$%lp-hd274720274784%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e274719274780%_)))
                                (_%$%lp-tl274721274787%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e274719274780%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd274720274784%_))
                                (let ((_%$%e274726274790%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e
                                          _%$%lp-hd274720274784%_))))
                                  (let ((_%$%hd274727274794%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e274726274790%_)))
                                        (_%$%tl274728274797%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e274726274790%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl274728274797%_))
                                        (let ((_%$%e274729274800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl274728274797%_))))
                                          (let ((_%$%hd274730274804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e274729274800%_)))
                                                (_%$%tl274731274807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e274729274800%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl274731274807%_))
                                                (_%$%loop274718274770%_
                                                 _%$%lp-tl274721274787%_
                                                 (cons _%$%hd274730274804%_
                                                       _%$%symbol274722274777%_)
                                                 (cons _%$%hd274727274794%_
                                                       _%$%method274723274778%_))
                                                (_%$%g274704274737%_
                                                 _%$%g274705274741%_))))
                                        (_%$%g274704274737%_
                                         _%$%g274705274741%_))))
                                (_%$%g274704274737%_ _%$%g274705274741%_))))
                        (let ((_%$%symbol274724274810%_
                               (reverse _%$%symbol274722274777%_))
                              (_%$%method274725274812%_
                               (reverse _%$%method274723274778%_)))
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'begin))
                                (begin
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-check-splice-targets
                                     _%$%symbol274724274810%_
                                     _%$%method274725274812%_))
                                  (let ((__tmp280571
                                         (lambda (_%$%g274835274839%_
                                                  _%$%g274836274842%_
                                                  _%$%g274837274844%_)
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method))
                                                       (cons _%$%hd274713274758%_
                                                             (cons _%$%g274836274842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g274835274839%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%g274837274844%_))))
                                    (declare (not safe))
                                    (foldr__1
                                     __tmp280571
                                     '()
                                     _%$%symbol274724274810%_
                                     _%$%method274725274812%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop274718274770%_
                                                   _%$%target274715274764%_
                                                   '()
                                                   '()))
                                                (_%$%g274704274737%_
                                                 _%$%g274705274741%_)))))
                                      (_%$%g274704274737%_
                                       _%$%g274705274741%_))))
                              (_%$%g274704274737%_ _%$%g274705274741%_))))
                      (_%$%g274704274737%_ _%$%g274705274741%_)))))
          (_%$%g274703274847%_ _%$stx274700%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx274852%_)
        (let* ((_%$%g274856274870%_
                (lambda (_%$%g274857274866%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274857274866%_))))
               (_%$%g274855274911%_
                (lambda (_%$%g274857274874%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274857274874%_))
                      (let ((_%$%e274859274877%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274857274874%_))))
                        (let ((_%$%hd274860274881%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274859274877%_)))
                              (_%$%tl274861274884%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274859274877%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl274861274884%_))
                              (let ((_%$%e274862274887%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl274861274884%_))))
                                (let ((_%$%hd274863274891%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e274862274887%_)))
                                      (_%$%tl274864274894%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e274862274887%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl274864274894%_))
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
                                                        (cons _%$%hd274863274891%_
                                                              '()))
                                                  '()))
                                      (_%$%g274856274870%_
                                       _%$%g274857274874%_))))
                              (_%$%g274856274870%_ _%$%g274857274874%_))))
                      (_%$%g274856274870%_ _%$%g274857274874%_)))))
          (_%$%g274855274911%_ _%$stx274852%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx274915%_)
        (let* ((_%$%g274919274973%_
                (lambda (_%$%g274920274969%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274920274969%_))))
               (_%$%g274918275154%_
                (lambda (_%$%g274920274977%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274920274977%_))
                      (let ((_%$%e274932274980%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274920274977%_))))
                        (let ((_%$%hd274933274984%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274932274980%_)))
                              (_%$%tl274934274987%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274932274980%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl274934274987%_))
                              (let ((_%$%e274935274990%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl274934274987%_))))
                                (let ((_%$%hd274936274994%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e274935274990%_)))
                                      (_%$%tl274937274997%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e274935274990%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl274937274997%_))
                                      (let ((_%$%e274938275000%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl274937274997%_))))
                                        (let ((_%$%hd274939275004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e274938275000%_)))
                                              (_%$%tl274940275007%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e274938275000%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl274940275007%_))
                                              (let ((_%$%e274941275010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl274940275007%_))))
                                                (let ((_%$%hd274942275014%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e274941275010%_)))
                                                      (_%$%tl274943275017%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e274941275010%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl274943275017%_))
                                                      (let ((_%$%e274944275020%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl274943275017%_))))
                (let ((_%$%hd274945275024%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e274944275020%_)))
                      (_%$%tl274946275027%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e274944275020%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl274946275027%_))
                      (let ((_%$%e274947275030%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl274946275027%_))))
                        (let ((_%$%hd274948275034%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274947275030%_)))
                              (_%$%tl274949275037%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274947275030%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl274949275037%_))
                              (let ((_%$%e274950275040%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl274949275037%_))))
                                (let ((_%$%hd274951275044%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e274950275040%_)))
                                      (_%$%tl274952275047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e274950275040%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl274952275047%_))
                                      (let ((_%$%e274953275050%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl274952275047%_))))
                                        (let ((_%$%hd274954275054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e274953275050%_)))
                                              (_%$%tl274955275057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e274953275050%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl274955275057%_))
                                              (let ((_%$%e274956275060%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl274955275057%_))))
                                                (let ((_%$%hd274957275064%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e274956275060%_)))
                                                      (_%$%tl274958275067%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e274956275060%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl274958275067%_))
                                                      (let ((_%$%e274959275070%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl274958275067%_))))
                (let ((_%$%hd274960275074%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e274959275070%_)))
                      (_%$%tl274961275077%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e274959275070%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl274961275077%_))
                      (let ((_%$%e274962275080%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl274961275077%_))))
                        (let ((_%$%hd274963275084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274962275080%_)))
                              (_%$%tl274964275087%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274962275080%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl274964275087%_))
                              (let ((_%$%e274965275090%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl274964275087%_))))
                                (let ((_%$%hd274966275094%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e274965275090%_)))
                                      (_%$%tl274967275097%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e274965275090%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl274967275097%_))
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
                                                        (cons _%$%hd274936274994%_
                                                              '()))
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'quote))
                      (cons _%$%hd274939275004%_ '()))
                (cons (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd274942275014%_ '()))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%$%hd274945275024%_ '()))
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote))
                                        (cons _%$%hd274948275034%_ '()))
                                  (cons (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote))
                                              (cons _%$%hd274951275044%_ '()))
                                        (cons _%$%hd274954275054%_
                                              (cons _%$%hd274957275064%_
                                                    (cons _%$%hd274960275074%_
                                                          (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd274963275084%_ '()))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd274966275094%_ '()))
                              '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g274919274973%_
                                       _%$%g274920274977%_))))
                              (_%$%g274919274973%_ _%$%g274920274977%_))))
                      (_%$%g274919274973%_ _%$%g274920274977%_))))
              (_%$%g274919274973%_ _%$%g274920274977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g274919274973%_
                                               _%$%g274920274977%_))))
                                      (_%$%g274919274973%_
                                       _%$%g274920274977%_))))
                              (_%$%g274919274973%_ _%$%g274920274977%_))))
                      (_%$%g274919274973%_ _%$%g274920274977%_))))
              (_%$%g274919274973%_ _%$%g274920274977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g274919274973%_
                                               _%$%g274920274977%_))))
                                      (_%$%g274919274973%_
                                       _%$%g274920274977%_))))
                              (_%$%g274919274973%_ _%$%g274920274977%_))))
                      (_%$%g274919274973%_ _%$%g274920274977%_)))))
          (_%$%g274918275154%_ _%$stx274915%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx275158%_)
        (let* ((_%$%g275162275176%_
                (lambda (_%$%g275163275172%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275163275172%_))))
               (_%$%g275161275217%_
                (lambda (_%$%g275163275180%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275163275180%_))
                      (let ((_%$%e275165275183%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275163275180%_))))
                        (let ((_%$%hd275166275187%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275165275183%_)))
                              (_%$%tl275167275190%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275165275183%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275167275190%_))
                              (let ((_%$%e275168275193%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275167275190%_))))
                                (let ((_%$%hd275169275197%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275168275193%_)))
                                      (_%$%tl275170275200%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275168275193%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl275170275200%_))
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
                                                        (cons _%$%hd275169275197%_
                                                              '()))
                                                  '()))
                                      (_%$%g275162275176%_
                                       _%$%g275163275180%_))))
                              (_%$%g275162275176%_ _%$%g275163275180%_))))
                      (_%$%g275162275176%_ _%$%g275163275180%_)))))
          (_%$%g275161275217%_ _%$stx275158%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx275221%_)
        (let* ((_%$%g275225275239%_
                (lambda (_%$%g275226275235%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275226275235%_))))
               (_%$%g275224275280%_
                (lambda (_%$%g275226275243%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275226275243%_))
                      (let ((_%$%e275228275246%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275226275243%_))))
                        (let ((_%$%hd275229275250%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275228275246%_)))
                              (_%$%tl275230275253%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275228275246%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275230275253%_))
                              (let ((_%$%e275231275256%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275230275253%_))))
                                (let ((_%$%hd275232275260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275231275256%_)))
                                      (_%$%tl275233275263%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275231275256%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl275233275263%_))
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
                                                        (cons _%$%hd275232275260%_
                                                              '()))
                                                  '()))
                                      (_%$%g275225275239%_
                                       _%$%g275226275243%_))))
                              (_%$%g275225275239%_ _%$%g275226275243%_))))
                      (_%$%g275225275239%_ _%$%g275226275243%_)))))
          (_%$%g275224275280%_ _%$stx275221%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx275284%_)
        (let* ((_%$%g275288275310%_
                (lambda (_%$%g275289275306%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275289275306%_))))
               (_%$%g275287275379%_
                (lambda (_%$%g275289275314%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275289275314%_))
                      (let ((_%$%e275293275317%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275289275314%_))))
                        (let ((_%$%hd275294275321%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275293275317%_)))
                              (_%$%tl275295275324%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275293275317%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275295275324%_))
                              (let ((_%$%e275296275327%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275295275324%_))))
                                (let ((_%$%hd275297275331%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275296275327%_)))
                                      (_%$%tl275298275334%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275296275327%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl275298275334%_))
                                      (let ((_%$%e275299275337%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl275298275334%_))))
                                        (let ((_%$%hd275300275341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275299275337%_)))
                                              (_%$%tl275301275344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275299275337%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl275301275344%_))
                                              (let ((_%$%e275302275347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl275301275344%_))))
                                                (let ((_%$%hd275303275351%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e275302275347%_)))
                                                      (_%$%tl275304275354%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e275302275347%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl275304275354%_))
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
                                (cons _%$%hd275297275331%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd275300275341%_ '()))
                                (cons _%$%hd275303275351%_ '()))))
              (_%$%g275288275310%_ _%$%g275289275314%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g275288275310%_
                                               _%$%g275289275314%_))))
                                      (_%$%g275288275310%_
                                       _%$%g275289275314%_))))
                              (_%$%g275288275310%_ _%$%g275289275314%_))))
                      (_%$%g275288275310%_ _%$%g275289275314%_)))))
          (_%$%g275287275379%_ _%$stx275284%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx275383%_)
        (let* ((_%$%g275387275409%_
                (lambda (_%$%g275388275405%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275388275405%_))))
               (_%$%g275386275478%_
                (lambda (_%$%g275388275413%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275388275413%_))
                      (let ((_%$%e275392275416%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275388275413%_))))
                        (let ((_%$%hd275393275420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275392275416%_)))
                              (_%$%tl275394275423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275392275416%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275394275423%_))
                              (let ((_%$%e275395275426%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275394275423%_))))
                                (let ((_%$%hd275396275430%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275395275426%_)))
                                      (_%$%tl275397275433%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275395275426%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl275397275433%_))
                                      (let ((_%$%e275398275436%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl275397275433%_))))
                                        (let ((_%$%hd275399275440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275398275436%_)))
                                              (_%$%tl275400275443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275398275436%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl275400275443%_))
                                              (let ((_%$%e275401275446%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl275400275443%_))))
                                                (let ((_%$%hd275402275450%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e275401275446%_)))
                                                      (_%$%tl275403275453%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e275401275446%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl275403275453%_))
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
                                (cons _%$%hd275396275430%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd275399275440%_ '()))
                                (cons _%$%hd275402275450%_ '()))))
              (_%$%g275387275409%_ _%$%g275388275413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g275387275409%_
                                               _%$%g275388275413%_))))
                                      (_%$%g275387275409%_
                                       _%$%g275388275413%_))))
                              (_%$%g275387275409%_ _%$%g275388275413%_))))
                      (_%$%g275387275409%_ _%$%g275388275413%_)))))
          (_%$%g275386275478%_ _%$stx275383%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx275482%_)
        (let* ((_%$%g275486275500%_
                (lambda (_%$%g275487275496%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275487275496%_))))
               (_%$%g275485275541%_
                (lambda (_%$%g275487275504%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275487275504%_))
                      (let ((_%$%e275489275507%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275487275504%_))))
                        (let ((_%$%hd275490275511%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275489275507%_)))
                              (_%$%tl275491275514%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275489275507%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275491275514%_))
                              (let ((_%$%e275492275517%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275491275514%_))))
                                (let ((_%$%hd275493275521%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275492275517%_)))
                                      (_%$%tl275494275524%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275492275517%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl275494275524%_))
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
                                                        (cons _%$%hd275493275521%_
                                                              '()))
                                                  '()))
                                      (_%$%g275486275500%_
                                       _%$%g275487275504%_))))
                              (_%$%g275486275500%_ _%$%g275487275504%_))))
                      (_%$%g275486275500%_ _%$%g275487275504%_)))))
          (_%$%g275485275541%_ _%$stx275482%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx275545%_)
        (let* ((_%$%g275549275567%_
                (lambda (_%$%g275550275563%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275550275563%_))))
               (_%$%g275548275622%_
                (lambda (_%$%g275550275571%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275550275571%_))
                      (let ((_%$%e275553275574%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275550275571%_))))
                        (let ((_%$%hd275554275578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275553275574%_)))
                              (_%$%tl275555275581%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275553275574%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275555275581%_))
                              (let ((_%$%e275556275584%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275555275581%_))))
                                (let ((_%$%hd275557275588%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275556275584%_)))
                                      (_%$%tl275558275591%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275556275584%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl275558275591%_))
                                      (let ((_%$%e275559275594%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl275558275591%_))))
                                        (let ((_%$%hd275560275598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275559275594%_)))
                                              (_%$%tl275561275601%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275559275594%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl275561275601%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!interface))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd275557275588%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd275560275598%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g275549275567%_
                                               _%$%g275550275571%_))))
                                      (_%$%g275549275567%_
                                       _%$%g275550275571%_))))
                              (_%$%g275549275567%_ _%$%g275550275571%_))))
                      (_%$%g275549275567%_ _%$%g275550275571%_)))))
          (_%$%g275548275622%_ _%$stx275545%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx275626%_)
        (let* ((_%__stx279942279943%_ _%$stx275626%_)
               (_%$%g275633275694%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx279942279943%_)))))
          (let ((_%__kont279945279946%_
                 (lambda (_%$%g275635275932%_ _%$%g275636275934%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g275636275934%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g275635275932%_ '()))
                                     '())))))
                (_%__kont279947279948%_
                 (lambda (_%$%g275646275871%_
                          _%$%g275647275873%_
                          _%$%g275648275874%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g275648275874%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g275647275873%_ '()))
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
                                 (cons _%$%g275646275871%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont279949279950%_
                 (lambda (_%$%g275665275795%_ _%$%g275666275797%_)
                   (cons _%$%g275666275797%_
                         (cons _%$%g275665275795%_ (cons '#f '())))))
                (_%__kont279951279952%_
                 (lambda (_%$%g275673275745%_
                          _%$%g275674275747%_
                          _%$%g275675275748%_)
                   (cons _%$%g275675275748%_
                         (cons _%$%g275674275747%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%$%g275673275745%_
                                                 '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx279942279943%_))
                (let ((_%$%e275637275902%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx279942279943%_))))
                  (let ((_%$%tl275639275909%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e275637275902%_)))
                        (_%$%hd275638275906%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e275637275902%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl275639275909%_))
                        (let ((_%$%e275640275912%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl275639275909%_))))
                          (let ((_%$%tl275642275919%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e275640275912%_)))
                                (_%$%hd275641275916%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e275640275912%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl275642275919%_))
                                (let ((_%$%e275643275922%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl275642275919%_))))
                                  (let ((_%$%tl275645275929%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e275643275922%_)))
                                        (_%$%hd275644275926%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e275643275922%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl275645275929%_))
                                        (_%__kont279945279946%_
                                         _%$%hd275644275926%_
                                         _%$%hd275641275916%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl275645275929%_))
                                            (let ((_%$%e275658275847%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl275645275929%_))))
                                              (let ((_%$%tl275660275854%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e275658275847%_)))
                                                    (_%$%hd275659275851%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e275658275847%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd275659275851%_))
                                                    (let ((_%$%e275661275857%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd275659275851%_))))
                                                      (if (equal? _%$%e275661275857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl275660275854%_))
                      (let ((_%$%e275662275861%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl275660275854%_))))
                        (let ((_%$%tl275664275868%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275662275861%_)))
                              (_%$%hd275663275865%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275662275861%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl275664275868%_))
                              (_%__kont279947279948%_
                               _%$%hd275663275865%_
                               _%$%hd275644275926%_
                               _%$%hd275641275916%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%$%hd275644275926%_))
                                  (let ((_%$%e275685275731%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd275644275926%_))))
                                    (declare (not safe))
                                    (_%$%g275633275694%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g275633275694%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd275644275926%_))
                          (let ((_%$%e275685275731%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd275644275926%_))))
                            (if (equal? _%$%e275685275731%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl275660275854%_))
                                    (_%__kont279951279952%_
                                     _%$%hd275659275851%_
                                     _%$%hd275641275916%_
                                     _%$%hd275638275906%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g275633275694%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g275633275694%_))))
                          (let () (declare (not safe)) (_%$%g275633275694%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd275644275926%_))
                      (let ((_%$%e275685275731%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd275644275926%_))))
                        (if (equal? _%$%e275685275731%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl275660275854%_))
                                (_%__kont279951279952%_
                                 _%$%hd275659275851%_
                                 _%$%hd275641275916%_
                                 _%$%hd275638275906%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g275633275694%_)))
                            (let ()
                              (declare (not safe))
                              (_%$%g275633275694%_))))
                      (let () (declare (not safe)) (_%$%g275633275694%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%$%hd275644275926%_))
                                                        (let ((_%$%e275685275731%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd275644275926%_))))
                  (if (equal? _%$%e275685275731%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl275660275854%_))
                          (_%__kont279951279952%_
                           _%$%hd275659275851%_
                           _%$%hd275641275916%_
                           _%$%hd275638275906%_)
                          (let () (declare (not safe)) (_%$%g275633275694%_)))
                      (let () (declare (not safe)) (_%$%g275633275694%_))))
                (let () (declare (not safe)) (_%$%g275633275694%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%$%hd275644275926%_))
                                                (let ((_%$%e275685275731%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd275644275926%_))))
                                                  (declare (not safe))
                                                  (_%$%g275633275694%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g275633275694%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl275642275919%_))
                                    (_%__kont279949279950%_
                                     _%$%hd275641275916%_
                                     _%$%hd275638275906%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g275633275694%_))))))
                        (let () (declare (not safe)) (_%$%g275633275694%_)))))
                (let () (declare (not safe)) (_%$%g275633275694%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx275953%_)
        (let* ((_%$%g275957275986%_
                (lambda (_%$%g275958275982%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275958275982%_))))
               (_%$%g275956276091%_
                (lambda (_%$%g275958275990%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275958275990%_))
                      (let ((_%$%e275960275993%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275958275990%_))))
                        (let ((_%$%hd275961275997%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275960275993%_)))
                              (_%$%tl275962276000%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275960275993%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl275962276000%_))
                              (let ((_g280572_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl275962276000%_
                                        '0))))
                                (begin
                                  (let ((_g280573_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g280572_)
                                               (##values-length _g280572_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g280573_ 2)))
                                        (error "Context expects 2 values"
                                               _g280573_)))
                                  (let ((_%$%target275963276003%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280572_ 0)))
                                        (_%$%tl275965276006%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280572_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl275965276006%_))
                                        (letrec ((_%$%loop275966276009%_
                                                  (lambda (_%$%hd275964276013%_
                                                           _%$%clause275970276016%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd275964276013%_))
                                                        (let ((_%$%e275967276018%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd275964276013%_))))
                  (let ((_%$%lp-hd275968276022%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e275967276018%_)))
                        (_%$%lp-tl275969276025%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e275967276018%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%lp-hd275968276022%_))
                        (let ((_g280574_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%$%lp-hd275968276022%_
                                  '0))))
                          (begin
                            (let ((_g280575_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g280574_)
                                         (##values-length _g280574_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g280575_ 2)))
                                  (error "Context expects 2 values"
                                         _g280575_)))
                            (let ((_%$%target275972276028%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g280574_ 0)))
                                  (_%$%tl275974276031%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g280574_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl275974276031%_))
                                  (letrec ((_%$%loop275975276034%_
                                            (lambda (_%$%hd275973276038%_
                                                     _%$%clause275979276041%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd275973276038%_))
                                                  (let ((_%$%e275976276043%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd275973276038%_))))
                                                    (let ((_%$%lp-hd275977276047%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e275976276043%_)))
                                                          (_%$%lp-tl275978276050%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e275976276043%_))))
                                                      (_%$%loop275975276034%_
                                                       _%$%lp-tl275978276050%_
                                                       (cons _%$%lp-hd275977276047%_
                                                             _%$%clause275979276041%_))))
                                                  (let ((_%$%clause275980276053%_
                                                         (reverse _%$%clause275979276041%_)))
                                                    (_%$%loop275966276009%_
                                                     _%$%lp-tl275969276025%_
                                                     (cons _%$%clause275980276053%_
                                                           _%$%clause275970276016%_)))))))
                                    (_%$%loop275975276034%_
                                     _%$%target275972276028%_
                                     '()))
                                  (_%$%g275957275986%_ _%$%g275958275990%_)))))
                        (_%$%g275957275986%_ _%$%g275958275990%_))))
                (let ((_%$%clause275971276056%_
                       (reverse _%$%clause275970276016%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f '@list))
                                    (let ((__tmp280576
                                           (lambda (_%$%g276074276079%_
                                                    _%$%g276075276082%_)
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '@lambda))
                                                         (let ((__tmp280577
                                                                (lambda (_%$%g276076276085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g276077276088%_)
                          (cons _%$%g276076276085%_ _%$%g276077276088%_))))
                   (declare (not safe))
                   (foldr__0 __tmp280577 '() _%$%g276074276079%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%g276075276082%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp280576
                                       '()
                                       _%$%clause275971276056%_)))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop275966276009%_
                                           _%$%target275963276003%_
                                           '()))
                                        (_%$%g275957275986%_
                                         _%$%g275958275990%_)))))
                              (_%$%g275957275986%_ _%$%g275958275990%_))))
                      (_%$%g275957275986%_ _%$%g275958275990%_)))))
          (_%$%g275956276091%_ _%$stx275953%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx276097%_)
        (let* ((_%$%g276101276119%_
                (lambda (_%$%g276102276115%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276102276115%_))))
               (_%$%g276100276174%_
                (lambda (_%$%g276102276123%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276102276123%_))
                      (let ((_%$%e276105276126%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276102276123%_))))
                        (let ((_%$%hd276106276130%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276105276126%_)))
                              (_%$%tl276107276133%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276105276126%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276107276133%_))
                              (let ((_%$%e276108276136%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276107276133%_))))
                                (let ((_%$%hd276109276140%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276108276136%_)))
                                      (_%$%tl276110276143%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276108276136%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl276110276143%_))
                                      (let ((_%$%e276111276146%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl276110276143%_))))
                                        (let ((_%$%hd276112276150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276111276146%_)))
                                              (_%$%tl276113276153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276111276146%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl276113276153%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd276109276140%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd276112276150%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g276101276119%_
                                               _%$%g276102276123%_))))
                                      (_%$%g276101276119%_
                                       _%$%g276102276123%_))))
                              (_%$%g276101276119%_ _%$%g276102276123%_))))
                      (_%$%g276101276119%_ _%$%g276102276123%_)))))
          (_%$%g276100276174%_ _%$stx276097%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx276178%_)
        (let* ((_%$%g276182276200%_
                (lambda (_%$%g276183276196%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276183276196%_))))
               (_%$%g276181276255%_
                (lambda (_%$%g276183276204%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276183276204%_))
                      (let ((_%$%e276186276207%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276183276204%_))))
                        (let ((_%$%hd276187276211%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276186276207%_)))
                              (_%$%tl276188276214%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276186276207%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276188276214%_))
                              (let ((_%$%e276189276217%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276188276214%_))))
                                (let ((_%$%hd276190276221%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276189276217%_)))
                                      (_%$%tl276191276224%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276189276217%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl276191276224%_))
                                      (let ((_%$%e276192276227%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl276191276224%_))))
                                        (let ((_%$%hd276193276231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276192276227%_)))
                                              (_%$%tl276194276234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276192276227%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl276194276234%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda-primary))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd276190276221%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd276193276231%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g276182276200%_
                                               _%$%g276183276204%_))))
                                      (_%$%g276182276200%_
                                       _%$%g276183276204%_))))
                              (_%$%g276182276200%_ _%$%g276183276204%_))))
                      (_%$%g276182276200%_ _%$%g276183276204%_)))))
          (_%$%g276181276255%_ _%$stx276178%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx276259%_)
        (let* ((_%$%g276263276292%_
                (lambda (_%$%g276264276288%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276264276288%_))))
               (_%$%g276262276388%_
                (lambda (_%$%g276264276296%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276264276296%_))
                      (let ((_%$%e276267276299%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276264276296%_))))
                        (let ((_%$%hd276268276303%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276267276299%_)))
                              (_%$%tl276269276306%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276267276299%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl276269276306%_))
                              (let ((_g280578_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl276269276306%_
                                        '0))))
                                (begin
                                  (let ((_g280579_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g280578_)
                                               (##values-length _g280578_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g280579_ 2)))
                                        (error "Context expects 2 values"
                                               _g280579_)))
                                  (let ((_%$%target276270276309%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280578_ 0)))
                                        (_%$%tl276272276312%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280578_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl276272276312%_))
                                        (letrec ((_%$%loop276273276315%_
                                                  (lambda (_%$%hd276271276319%_
                                                           _%$%rule276277276322%_
                                                           _%$%proc276278276323%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd276271276319%_))
                                                        (let ((_%$%e276274276325%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd276271276319%_))))
                  (let ((_%$%lp-hd276275276329%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e276274276325%_)))
                        (_%$%lp-tl276276276332%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e276274276325%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd276275276329%_))
                        (let ((_%$%e276281276335%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd276275276329%_))))
                          (let ((_%$%hd276282276339%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e276281276335%_)))
                                (_%$%tl276283276342%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e276281276335%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl276283276342%_))
                                (let ((_%$%e276284276345%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl276283276342%_))))
                                  (let ((_%$%hd276285276349%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e276284276345%_)))
                                        (_%$%tl276286276352%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e276284276345%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl276286276352%_))
                                        (_%$%loop276273276315%_
                                         _%$%lp-tl276276276332%_
                                         (cons _%$%hd276285276349%_
                                               _%$%rule276277276322%_)
                                         (cons _%$%hd276282276339%_
                                               _%$%proc276278276323%_))
                                        (_%$%g276263276292%_
                                         _%$%g276264276296%_))))
                                (_%$%g276263276292%_ _%$%g276264276296%_))))
                        (_%$%g276263276292%_ _%$%g276264276296%_))))
                (let ((_%$%rule276279276355%_ (reverse _%$%rule276277276322%_))
                      (_%$%proc276280276357%_
                       (reverse _%$%proc276278276323%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%rule276279276355%_
                             _%$%proc276280276357%_))
                          (let ((__tmp280580
                                 (lambda (_%$%g276376276380%_
                                          _%$%g276377276383%_
                                          _%$%g276378276385%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-inline-rule!))
                                               (cons _%$%g276377276383%_
                                                     (cons _%$%g276376276380%_
                                                           '())))
                                         _%$%g276378276385%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp280580
                             '()
                             _%$%rule276279276355%_
                             _%$%proc276280276357%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop276273276315%_
                                           _%$%target276270276309%_
                                           '()
                                           '()))
                                        (_%$%g276263276292%_
                                         _%$%g276264276296%_)))))
                              (_%$%g276263276292%_ _%$%g276264276296%_))))
                      (_%$%g276263276292%_ _%$%g276264276296%_)))))
          (_%$%g276262276388%_ _%$stx276259%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx276393%_)
        (let* ((_%$%g276397276415%_
                (lambda (_%$%g276398276411%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276398276411%_))))
               (_%$%g276396276470%_
                (lambda (_%$%g276398276419%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276398276419%_))
                      (let ((_%$%e276401276422%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276398276419%_))))
                        (let ((_%$%hd276402276426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276401276422%_)))
                              (_%$%tl276403276429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276401276422%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276403276429%_))
                              (let ((_%$%e276404276432%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276403276429%_))))
                                (let ((_%$%hd276405276436%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276404276432%_)))
                                      (_%$%tl276406276439%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276404276432%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl276406276439%_))
                                      (let ((_%$%e276407276442%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl276406276439%_))))
                                        (let ((_%$%hd276408276446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276407276442%_)))
                                              (_%$%tl276409276449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276407276442%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl276409276449%_))
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
                                                (cons _%$%hd276405276436%_
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
              (cons _%$%hd276408276446%_ '())))
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
                                (cons _%$%hd276405276436%_ '()))
                          (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g276397276415%_
                                               _%$%g276398276419%_))))
                                      (_%$%g276397276415%_
                                       _%$%g276398276419%_))))
                              (_%$%g276397276415%_ _%$%g276398276419%_))))
                      (_%$%g276397276415%_ _%$%g276398276419%_)))))
          (_%$%g276396276470%_ _%$stx276393%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx276474%_)
        (let* ((_%__stx280060280061%_ _%$stx276474%_)
               (_%$%g276479276504%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx280060280061%_)))))
          (let ((_%__kont280063280064%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont280065280066%_
                 (lambda (_%$%g276484276551%_
                          _%$%g276485276553%_
                          _%$%g276486276554%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%$%g276486276554%_
                                           (cons _%$%g276485276553%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%$%g276484276551%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx280060280061%_))
                (let ((_%$%e276481276580%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx280060280061%_))))
                  (let ((_%$%tl276483276587%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e276481276580%_)))
                        (_%$%hd276482276584%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e276481276580%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl276483276587%_))
                        (_%__kont280063280064%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl276483276587%_))
                            (let ((_%$%e276490276521%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl276483276587%_))))
                              (let ((_%$%tl276492276528%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e276490276521%_)))
                                    (_%$%hd276491276525%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e276490276521%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd276491276525%_))
                                    (let ((_%$%e276493276531%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd276491276525%_))))
                                      (let ((_%$%tl276495276538%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e276493276531%_)))
                                            (_%$%hd276494276535%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e276493276531%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl276495276538%_))
                                            (let ((_%$%e276496276541%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl276495276538%_))))
                                              (let ((_%$%tl276498276548%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e276496276541%_)))
                                                    (_%$%hd276497276545%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e276496276541%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl276498276548%_))
                                                    (_%__kont280065280066%_
                                                     _%$%tl276492276528%_
                                                     _%$%hd276497276545%_
                                                     _%$%hd276494276535%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g276479276504%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g276479276504%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g276479276504%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g276479276504%_))))))
                (let () (declare (not safe)) (_%$%g276479276504%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx276598%_)
        (let* ((_%__stx280104280105%_ _%$stx276598%_)
               (_%$%g276603276634%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx280104280105%_)))))
          (let ((_%__kont280107280108%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont280109280110%_
                 (lambda (_%$%g276608276699%_
                          _%$%g276609276701%_
                          _%$%g276610276702%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%$%g276610276702%_
                                           (let ((__tmp280581
                                                  (lambda (_%$%g276722276725%_
                                                           _%$%g276723276728%_)
                                                    (cons _%$%g276722276725%_
                                                          _%$%g276723276728%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp280581
                                              '()
                                              _%$%g276609276701%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%$%g276608276699%_)
                                     '()))))))
            (let ((_%__match280147280148%_
                   (lambda (_%$%e276611276641%_
                            _%$%hd276612276645%_
                            _%$%tl276613276648%_
                            _%$%e276614276651%_
                            _%$%hd276615276655%_
                            _%$%tl276616276658%_
                            _%$%e276617276661%_
                            _%$%hd276618276665%_
                            _%$%tl276619276668%_
                            _%__splice280111280112%_
                            _%$%target276620276671%_
                            _%$%tl276622276674%_)
                     (letrec ((_%$%loop276623276677%_
                               (lambda (_%$%hd276621276681%_
                                        _%$%sig276627276684%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd276621276681%_))
                                     (let ((_%$%e276624276686%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%hd276621276681%_))))
                                       (let ((_%$%lp-tl276626276693%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e276624276686%_)))
                                             (_%$%lp-hd276625276690%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e276624276686%_))))
                                         (_%$%loop276623276677%_
                                          _%$%lp-tl276626276693%_
                                          (cons _%$%lp-hd276625276690%_
                                                _%$%sig276627276684%_))))
                                     (let ((_%$%sig276628276696%_
                                            (reverse _%$%sig276627276684%_)))
                                       (_%__kont280109280110%_
                                        _%$%tl276616276658%_
                                        _%$%sig276628276696%_
                                        _%$%hd276618276665%_))))))
                       (_%$%loop276623276677%_
                        _%$%target276620276671%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx280104280105%_))
                  (let ((_%$%e276605276738%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx280104280105%_))))
                    (let ((_%$%tl276607276745%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e276605276738%_)))
                          (_%$%hd276606276742%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e276605276738%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl276607276745%_))
                          (_%__kont280107280108%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276607276745%_))
                              (let ((_%$%e276614276651%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276607276745%_))))
                                (let ((_%$%tl276616276658%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276614276651%_)))
                                      (_%$%hd276615276655%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276614276651%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd276615276655%_))
                                      (let ((_%$%e276617276661%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd276615276655%_))))
                                        (let ((_%$%tl276619276668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276617276661%_)))
                                              (_%$%hd276618276665%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276617276661%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl276619276668%_))
                                              (let ((_%__splice280111280112%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl276619276668%_
                                                        '0))))
                                                (let ((_%$%tl276622276674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice280111280112%_
                                                          '1)))
                                                      (_%$%target276620276671%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice280111280112%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl276622276674%_))
                                                      (_%__match280147280148%_
                                                       _%$%e276605276738%_
                                                       _%$%hd276606276742%_
                                                       _%$%tl276607276745%_
                                                       _%$%e276614276651%_
                                                       _%$%hd276615276655%_
                                                       _%$%tl276616276658%_
                                                       _%$%e276617276661%_
                                                       _%$%hd276618276665%_
                                                       _%$%tl276619276668%_
                                                       _%__splice280111280112%_
                                                       _%$%target276620276671%_
                                                       _%$%tl276622276674%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g276603276634%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g276603276634%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g276603276634%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g276603276634%_))))))
                  (let () (declare (not safe)) (_%$%g276603276634%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx276757%_)
        (let* ((_%__stx280150280151%_ _%$stx276757%_)
               (_%$%g276762276809%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx280150280151%_)))))
          (let ((_%__kont280153280154%_
                 (lambda (_%$%g276764276967%_ _%$%g276765276969%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%$%g276765276969%_
                               (let ((__tmp280582
                                      (lambda (_%$%g276989276992%_
                                               _%$%g276990276995%_)
                                        (cons _%$%g276989276992%_
                                              _%$%g276990276995%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp280582
                                  '()
                                  _%$%g276764276967%_))))))
                (_%__kont280157280158%_
                 (lambda (_%$%g276787276864%_ _%$%g276788276866%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%$%g276788276866%_
                               (let ((__tmp280583
                                      (lambda (_%$%g276883276886%_
                                               _%$%g276884276889%_)
                                        (cons _%$%g276883276886%_
                                              _%$%g276884276889%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp280583
                                  '()
                                  _%$%g276787276864%_)))))))
            (let* ((_%__match280217280218%_
                    (lambda (_%$%e276789276816%_
                             _%$%hd276790276820%_
                             _%$%tl276791276823%_
                             _%$%e276792276826%_
                             _%$%hd276793276830%_
                             _%$%tl276794276833%_
                             _%__splice280159280160%_
                             _%$%target276795276836%_
                             _%$%tl276797276839%_)
                      (letrec ((_%$%loop276798276842%_
                                (lambda (_%$%hd276796276846%_
                                         _%$%sig276802276849%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd276796276846%_))
                                      (let ((_%$%e276799276851%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd276796276846%_))))
                                        (let ((_%$%lp-tl276801276858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276799276851%_)))
                                              (_%$%lp-hd276800276855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276799276851%_))))
                                          (_%$%loop276798276842%_
                                           _%$%lp-tl276801276858%_
                                           (cons _%$%lp-hd276800276855%_
                                                 _%$%sig276802276849%_))))
                                      (let ((_%$%sig276803276861%_
                                             (reverse _%$%sig276802276849%_)))
                                        (_%__kont280157280158%_
                                         _%$%sig276803276861%_
                                         _%$%hd276793276830%_))))))
                        (_%$%loop276798276842%_
                         _%$%target276795276836%_
                         '()))))
                   (_%__match280209280210%_
                    (lambda (_%$%e276789276816%_
                             _%$%hd276790276820%_
                             _%$%tl276791276823%_
                             _%$%e276792276826%_
                             _%$%hd276793276830%_
                             _%$%tl276794276833%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl276794276833%_))
                          (let ((_%__splice280159280160%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl276794276833%_
                                    '0))))
                            (let ((_%$%tl276797276839%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice280159280160%_
                                      '1)))
                                  (_%$%target276795276836%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice280159280160%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl276797276839%_))
                                  (_%__match280217280218%_
                                   _%$%e276789276816%_
                                   _%$%hd276790276820%_
                                   _%$%tl276791276823%_
                                   _%$%e276792276826%_
                                   _%$%hd276793276830%_
                                   _%$%tl276794276833%_
                                   _%__splice280159280160%_
                                   _%$%target276795276836%_
                                   _%$%tl276797276839%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g276762276809%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g276762276809%_)))))
                   (_%__match280197280198%_
                    (lambda (_%$%e276766276899%_
                             _%$%hd276767276903%_
                             _%$%tl276768276906%_
                             _%$%e276769276909%_
                             _%$%hd276770276913%_
                             _%$%tl276771276916%_
                             _%$%e276772276919%_
                             _%$%hd276773276923%_
                             _%$%tl276774276926%_
                             _%$%e276775276929%_
                             _%$%hd276776276933%_
                             _%$%tl276777276936%_
                             _%__splice280155280156%_
                             _%$%target276778276939%_
                             _%$%tl276780276942%_)
                      (letrec ((_%$%loop276781276945%_
                                (lambda (_%$%hd276779276949%_
                                         _%$%sig276785276952%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd276779276949%_))
                                      (let ((_%$%e276782276954%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd276779276949%_))))
                                        (let ((_%$%lp-tl276784276961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276782276954%_)))
                                              (_%$%lp-hd276783276958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276782276954%_))))
                                          (_%$%loop276781276945%_
                                           _%$%lp-tl276784276961%_
                                           (cons _%$%lp-hd276783276958%_
                                                 _%$%sig276785276952%_))))
                                      (let ((_%$%sig276786276964%_
                                             (reverse _%$%sig276785276952%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl276774276926%_))
                                            (_%__kont280153280154%_
                                             _%$%sig276786276964%_
                                             _%$%hd276770276913%_)
                                            (_%__match280209280210%_
                                             _%$%e276766276899%_
                                             _%$%hd276767276903%_
                                             _%$%tl276768276906%_
                                             _%$%e276769276909%_
                                             _%$%hd276770276913%_
                                             _%$%tl276771276916%_)))))))
                        (_%$%loop276781276945%_
                         _%$%target276778276939%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx280150280151%_))
                  (let ((_%$%e276766276899%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx280150280151%_))))
                    (let ((_%$%tl276768276906%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e276766276899%_)))
                          (_%$%hd276767276903%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e276766276899%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl276768276906%_))
                          (let ((_%$%e276769276909%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl276768276906%_))))
                            (let ((_%$%tl276771276916%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e276769276909%_)))
                                  (_%$%hd276770276913%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e276769276909%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl276771276916%_))
                                  (let ((_%$%e276772276919%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl276771276916%_))))
                                    (let ((_%$%tl276774276926%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e276772276919%_)))
                                          (_%$%hd276773276923%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e276772276919%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%hd276773276923%_))
                                          (let ((_%$%e276775276929%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%hd276773276923%_))))
                                            (let ((_%$%tl276777276936%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e276775276929%_)))
                                                  (_%$%hd276776276933%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e276775276929%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd276776276933%_))
                                                  (if (let ((__tmp280584
                                                             |gxc[1]#_g280585_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp280584
                                                         _%$%hd276776276933%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%$%tl276777276936%_))
                                                          (let ((_%__splice280155280156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl276777276936%_
                            '0))))
                    (let ((_%$%tl276780276942%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice280155280156%_ '1)))
                          (_%$%target276778276939%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice280155280156%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl276780276942%_))
                          (_%__match280197280198%_
                           _%$%e276766276899%_
                           _%$%hd276767276903%_
                           _%$%tl276768276906%_
                           _%$%e276769276909%_
                           _%$%hd276770276913%_
                           _%$%tl276771276916%_
                           _%$%e276772276919%_
                           _%$%hd276773276923%_
                           _%$%tl276774276926%_
                           _%$%e276775276929%_
                           _%$%hd276776276933%_
                           _%$%tl276777276936%_
                           _%__splice280155280156%_
                           _%$%target276778276939%_
                           _%$%tl276780276942%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl276771276916%_))
                              (let ((_%__splice280159280160%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%$%tl276771276916%_
                                        '0))))
                                (let ((_%$%tl276797276839%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice280159280160%_
                                          '1)))
                                      (_%$%target276795276836%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice280159280160%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl276797276839%_))
                                      (_%__match280217280218%_
                                       _%$%e276766276899%_
                                       _%$%hd276767276903%_
                                       _%$%tl276768276906%_
                                       _%$%e276769276909%_
                                       _%$%hd276770276913%_
                                       _%$%tl276771276916%_
                                       _%__splice280159280160%_
                                       _%$%target276795276836%_
                                       _%$%tl276797276839%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g276762276809%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g276762276809%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl276771276916%_))
                      (let ((_%__splice280159280160%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl276771276916%_
                                '0))))
                        (let ((_%$%tl276797276839%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice280159280160%_ '1)))
                              (_%$%target276795276836%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice280159280160%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl276797276839%_))
                              (_%__match280217280218%_
                               _%$%e276766276899%_
                               _%$%hd276767276903%_
                               _%$%tl276768276906%_
                               _%$%e276769276909%_
                               _%$%hd276770276913%_
                               _%$%tl276771276916%_
                               _%__splice280159280160%_
                               _%$%target276795276836%_
                               _%$%tl276797276839%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g276762276809%_)))))
                      (let () (declare (not safe)) (_%$%g276762276809%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl276771276916%_))
                  (let ((_%__splice280159280160%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl276771276916%_
                            '0))))
                    (let ((_%$%tl276797276839%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice280159280160%_ '1)))
                          (_%$%target276795276836%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice280159280160%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl276797276839%_))
                          (_%__match280217280218%_
                           _%$%e276766276899%_
                           _%$%hd276767276903%_
                           _%$%tl276768276906%_
                           _%$%e276769276909%_
                           _%$%hd276770276913%_
                           _%$%tl276771276916%_
                           _%__splice280159280160%_
                           _%$%target276795276836%_
                           _%$%tl276797276839%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g276762276809%_)))))
                  (let () (declare (not safe)) (_%$%g276762276809%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl276771276916%_))
                                                      (let ((_%__splice280159280160%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl276771276916%_
                        '0))))
                (let ((_%$%tl276797276839%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice280159280160%_ '1)))
                      (_%$%target276795276836%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice280159280160%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl276797276839%_))
                      (_%__match280217280218%_
                       _%$%e276766276899%_
                       _%$%hd276767276903%_
                       _%$%tl276768276906%_
                       _%$%e276769276909%_
                       _%$%hd276770276913%_
                       _%$%tl276771276916%_
                       _%__splice280159280160%_
                       _%$%target276795276836%_
                       _%$%tl276797276839%_)
                      (let () (declare (not safe)) (_%$%g276762276809%_)))))
              (let () (declare (not safe)) (_%$%g276762276809%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl276771276916%_))
                                              (let ((_%__splice280159280160%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl276771276916%_
                                                        '0))))
                                                (let ((_%$%tl276797276839%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice280159280160%_
                                                          '1)))
                                                      (_%$%target276795276836%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice280159280160%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl276797276839%_))
                                                      (_%__match280217280218%_
                                                       _%$%e276766276899%_
                                                       _%$%hd276767276903%_
                                                       _%$%tl276768276906%_
                                                       _%$%e276769276909%_
                                                       _%$%hd276770276913%_
                                                       _%$%tl276771276916%_
                                                       _%__splice280159280160%_
                                                       _%$%target276795276836%_
                                                       _%$%tl276797276839%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g276762276809%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g276762276809%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl276771276916%_))
                                      (let ((_%__splice280159280160%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl276771276916%_
                                                '0))))
                                        (let ((_%$%tl276797276839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice280159280160%_
                                                  '1)))
                                              (_%$%target276795276836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice280159280160%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl276797276839%_))
                                              (_%__match280217280218%_
                                               _%$%e276766276899%_
                                               _%$%hd276767276903%_
                                               _%$%tl276768276906%_
                                               _%$%e276769276909%_
                                               _%$%hd276770276913%_
                                               _%$%tl276771276916%_
                                               _%__splice280159280160%_
                                               _%$%target276795276836%_
                                               _%$%tl276797276839%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g276762276809%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g276762276809%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g276762276809%_)))))
                  (let () (declare (not safe)) (_%$%g276762276809%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx278152%_ _%id278154%_)
        (let ((_%proc278158%_
               (let ((__tmp280586
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id278154%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp280586))))
          (if (procedure? _%proc278158%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx278152%_
                 _%id278154%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx278143%_ _%id278145%_)
        (let ((_%klass278149%_
               (let ((__tmp280587
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id278145%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp280587))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass278149%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx278143%_
                 _%id278145%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx277393%_ _%proc277395%_ _%sig277396%_)
        (letrec ((_%signature-arity277398%_
                  (lambda (_%args278075%_)
                    (let _%loop278078%_ ((_%rest278081%_ _%args278075%_)
                                         (_%count278083%_ '0))
                      (let* ((_%$%rest278084278095%_ _%rest278081%_)
                             (_%$%E278088278101%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%rest278084278095%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%$%K278091278132%_
                               (lambda (_%rest278129%_)
                                 (_%loop278078%_
                                  _%rest278129%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count278083%_ '1)))))
                              (_%$%K278090278121%_ (lambda () _%count278083%_))
                              (_%$%K278089278109%_
                               (lambda () (cons _%count278083%_ '()))))
                          (let ((_%$%try-match278086278125%_
                                 (lambda ()
                                   (if (null? _%$%rest278084278095%_)
                                       (_%$%K278090278121%_)
                                       (_%$%K278089278109%_)))))
                            (if (pair? _%$%rest278084278095%_)
                                (let* ((_%$%tl278093278136%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest278084278095%_)))
                                       (_%rest278140%_ _%$%tl278093278136%_))
                                  (_%$%K278091278132%_ _%rest278140%_))
                                (_%$%try-match278086278125%_))))))))
                 (_%make-signature277400%_
                  (lambda (_%args277957%_
                           _%return277959%_
                           _%effect277960%_
                           _%unchecked277961%_)
                    (let ((__tmp280588
                           (lambda (_%$%g277962277964%_)
                             (|gxc[1]#verify-class!|
                              _%ctx277393%_
                              _%$%g277962277964%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp280588 _%args277957%_))
                    (|gxc[1]#verify-class!| _%ctx277393%_ _%return277959%_)
                    (if _%unchecked277961%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx277393%_
                         _%unchecked277961%_)
                        '#!void)
                    (let ((_%arity277968%_
                           (_%signature-arity277398%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args277957%_)))))
                      (if _%effect277960%_
                          (let ((_%effect277971%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect277960%_))))
                            (if (and (list? _%effect277971%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect277971%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx277393%_
                                   _%proc277395%_
                                   _%effect277971%_))))
                          '#!void)
                      (cons _%arity277968%_
                            (cons (let* ((_%$%g277974277997%_
                                          (lambda (_%$%g277975277993%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g277975277993%_))))
                                         (_%$%g277973278071%_
                                          (lambda (_%$%g277975278001%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g277975278001%_))
                                                (let ((_%$%e277980278004%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%g277975278001%_))))
                                                  (let ((_%$%hd277981278008%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e277980278004%_)))
                                                        (_%$%tl277982278011%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e277980278004%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl277982278011%_))
                                                        (let ((_%$%e277983278014%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl277982278011%_))))
                  (let ((_%$%hd277984278018%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e277983278014%_)))
                        (_%$%tl277985278021%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e277983278014%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl277985278021%_))
                        (let ((_%$%e277986278024%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl277985278021%_))))
                          (let ((_%$%hd277987278028%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e277986278024%_)))
                                (_%$%tl277988278031%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e277986278024%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl277988278031%_))
                                (let ((_%$%e277989278034%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl277988278031%_))))
                                  (let ((_%$%hd277990278038%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e277989278034%_)))
                                        (_%$%tl277991278041%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e277989278034%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl277991278041%_))
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
                        (cons _%$%hd277981278008%_ '()))
                  (cons 'return:
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd277984278018%_ '()))
                              (cons 'effect:
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd277987278028%_
                                                      '()))
                                          (cons 'unchecked:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%$%hd277990278038%_
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
                                        (_%$%g277974277997%_
                                         _%$%g277975278001%_))))
                                (_%$%g277974277997%_ _%$%g277975278001%_))))
                        (_%$%g277974277997%_ _%$%g277975278001%_))))
                (_%$%g277974277997%_ _%$%g277975278001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g277974277997%_
                                                 _%$%g277975278001%_)))))
                                    (_%$%g277973278071%_
                                     (list _%args277957%_
                                           _%return277959%_
                                           _%effect277960%_
                                           _%unchecked277961%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx277393%_ _%proc277395%_)
          (let* ((_%__stx280228280229%_ _%sig277396%_)
                 (_%$%g277407277510%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx280228280229%_)))))
            (let ((_%__kont280231280232%_
                   (lambda (_%$%g277409277938%_ _%$%g277410277940%_)
                     (_%make-signature277400%_
                      _%$%g277410277940%_
                      _%$%g277409277938%_
                      '#f
                      '#f)))
                  (_%__kont280233280234%_
                   (lambda (_%$%g277417277889%_
                            _%$%g277418277891%_
                            _%$%g277419277892%_)
                     (_%make-signature277400%_
                      _%$%g277419277892%_
                      _%$%g277418277891%_
                      _%$%g277417277889%_
                      '#f)))
                  (_%__kont280235280236%_
                   (lambda (_%$%g277433277813%_
                            _%$%g277434277815%_
                            _%$%g277435277816%_)
                     (_%make-signature277400%_
                      _%$%g277435277816%_
                      _%$%g277434277815%_
                      _%$%g277433277813%_
                      (let ((__tmp280589
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc277395%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp280589)))))
                  (_%__kont280237280238%_
                   (lambda (_%$%g277453277719%_
                            _%$%g277454277721%_
                            _%$%g277455277722%_
                            _%$%g277456277723%_)
                     (_%make-signature277400%_
                      _%$%g277456277723%_
                      _%$%g277455277722%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g277453277719%_)))))
                  (_%__kont280239280240%_
                   (lambda (_%$%g277477277626%_ _%$%g277478277628%_)
                     (_%make-signature277400%_
                      _%$%g277478277628%_
                      _%$%g277477277626%_
                      '#f
                      (let ((__tmp280590
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc277395%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp280590)))))
                  (_%__kont280241280242%_
                   (lambda (_%$%g277489277561%_
                            _%$%g277490277563%_
                            _%$%g277491277564%_)
                     (_%make-signature277400%_
                      _%$%g277491277564%_
                      _%$%g277490277563%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g277489277561%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx280228280229%_))
                  (let ((_%$%e277411277918%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx280228280229%_))))
                    (let ((_%$%tl277413277925%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e277411277918%_)))
                          (_%$%hd277412277922%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e277411277918%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl277413277925%_))
                          (let ((_%$%e277414277928%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl277413277925%_))))
                            (let ((_%$%tl277416277935%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e277414277928%_)))
                                  (_%$%hd277415277932%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e277414277928%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl277416277935%_))
                                  (_%__kont280231280232%_
                                   _%$%hd277415277932%_
                                   _%$%hd277412277922%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl277416277935%_))
                                      (let ((_%$%e277426277865%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl277416277935%_))))
                                        (let ((_%$%tl277428277872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e277426277865%_)))
                                              (_%$%hd277427277869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e277426277865%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd277427277869%_))
                                              (let ((_%$%e277429277875%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd277427277869%_))))
                                                (if (equal? _%$%e277429277875%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl277428277872%_))
                                                        (let ((_%$%e277430277879%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl277428277872%_))))
                  (let ((_%$%tl277432277886%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e277430277879%_)))
                        (_%$%hd277431277883%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e277430277879%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl277432277886%_))
                        (_%__kont280233280234%_
                         _%$%hd277431277883%_
                         _%$%hd277415277932%_
                         _%$%hd277412277922%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl277432277886%_))
                            (let ((_%$%e277449277799%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl277432277886%_))))
                              (let ((_%$%tl277451277806%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e277449277799%_)))
                                    (_%$%hd277450277803%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e277449277799%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%$%hd277450277803%_))
                                    (let ((_%$%e277452277809%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd277450277803%_))))
                                      (if (equal? _%$%e277452277809%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl277451277806%_))
                                              (_%__kont280235280236%_
                                               _%$%hd277431277883%_
                                               _%$%hd277415277932%_
                                               _%$%hd277412277922%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl277451277806%_))
                                                  (let ((_%$%e277474277709%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl277451277806%_))))
                                                    (let ((_%$%tl277476277716%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e277474277709%_)))
                                                          (_%$%hd277475277713%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e277474277709%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl277476277716%_))
                                                          (_%__kont280237280238%_
                                                           _%$%hd277475277713%_
                                                           _%$%hd277431277883%_
                                                           _%$%hd277415277932%_
                                                           _%$%hd277412277922%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g277407277510%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g277407277510%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g277407277510%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g277407277510%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g277407277510%_))))))
                (let () (declare (not safe)) (_%$%g277407277510%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%$%e277429277875%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl277428277872%_))
                                                            (_%__kont280239280240%_
                                                             _%$%hd277415277932%_
                                                             _%$%hd277412277922%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl277428277872%_))
                        (let ((_%$%e277502277551%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl277428277872%_))))
                          (let ((_%$%tl277504277558%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e277502277551%_)))
                                (_%$%hd277503277555%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e277502277551%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl277504277558%_))
                                (_%__kont280241280242%_
                                 _%$%hd277503277555%_
                                 _%$%hd277415277932%_
                                 _%$%hd277412277922%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g277407277510%_)))))
                        (let () (declare (not safe)) (_%$%g277407277510%_))))
                (let () (declare (not safe)) (_%$%g277407277510%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g277407277510%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g277407277510%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g277407277510%_)))))
                  (let () (declare (not safe)) (_%$%g277407277510%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig277004%_)
        (let* ((_%$%g277007277087%_
                (lambda (_%$%g277008277083%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277008277083%_))))
               (_%$%g277006277389%_
                (lambda (_%$%g277008277091%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277008277091%_))
                      (let ((_%$%e277014277094%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277008277091%_))))
                        (let ((_%$%hd277015277098%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277014277094%_)))
                              (_%$%tl277016277101%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277014277094%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277016277101%_))
                              (let ((_%$%e277017277104%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277016277101%_))))
                                (let ((_%$%hd277018277108%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277017277104%_)))
                                      (_%$%tl277019277111%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277017277104%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%$%hd277018277108%_))
                                      (let ((_%$%e277020277114%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd277018277108%_))))
                                        (if (equal? _%$%e277020277114%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl277019277111%_))
                                                (let ((_%$%e277021277118%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl277019277111%_))))
                                                  (let ((_%$%hd277022277122%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e277021277118%_)))
                                                        (_%$%tl277023277125%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e277021277118%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd277022277122%_))
                                                        (let ((_%$%e277024277128%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd277022277122%_))))
                  (let ((_%$%hd277025277132%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e277024277128%_)))
                        (_%$%tl277026277135%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e277024277128%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd277025277132%_))
                        (if (let ((__tmp280591 |gxc[1]#_g280592_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp280591
                               _%$%hd277025277132%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl277026277135%_))
                                (let ((_%$%e277027277138%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl277026277135%_))))
                                  (let ((_%$%hd277028277142%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e277027277138%_)))
                                        (_%$%tl277029277145%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e277027277138%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl277029277145%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl277023277125%_))
                                            (let ((_%$%e277030277148%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl277023277125%_))))
                                              (let ((_%$%hd277031277152%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e277030277148%_)))
                                                    (_%$%tl277032277155%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e277030277148%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd277031277152%_))
                                                    (let ((_%$%e277033277158%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd277031277152%_))))
                                                      (if (equal? _%$%e277033277158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl277032277155%_))
                      (let ((_%$%e277034277162%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl277032277155%_))))
                        (let ((_%$%hd277035277166%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277034277162%_)))
                              (_%$%tl277036277169%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277034277162%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd277035277166%_))
                              (let ((_%$%e277037277172%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd277035277166%_))))
                                (let ((_%$%hd277038277176%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277037277172%_)))
                                      (_%$%tl277039277179%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277037277172%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd277038277176%_))
                                      (if (let ((__tmp280593
                                                 |gxc[1]#_g280594_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp280593
                                             _%$%hd277038277176%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl277039277179%_))
                                              (let ((_%$%e277040277182%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl277039277179%_))))
                                                (let ((_%$%hd277041277186%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e277040277182%_)))
                                                      (_%$%tl277042277189%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e277040277182%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl277042277189%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl277036277169%_))
                                                          (let ((_%$%e277043277192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl277036277169%_))))
                    (let ((_%$%hd277044277196%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e277043277192%_)))
                          (_%$%tl277045277199%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e277043277192%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd277044277196%_))
                          (let ((_%$%e277046277202%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd277044277196%_))))
                            (if (equal? _%$%e277046277202%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl277045277199%_))
                                    (let ((_%$%e277047277206%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl277045277199%_))))
                                      (let ((_%$%hd277048277210%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e277047277206%_)))
                                            (_%$%tl277049277213%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e277047277206%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd277048277210%_))
                                            (let ((_%$%e277050277216%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%hd277048277210%_))))
                                              (let ((_%$%hd277051277220%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e277050277216%_)))
                                                    (_%$%tl277052277223%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e277050277216%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd277051277220%_))
                                                    (if (let ((__tmp280595
                                                               |gxc[1]#_g280596_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp280595
                                                           _%$%hd277051277220%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl277052277223%_))
                                                            (let ((_%$%e277053277226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%$%tl277052277223%_))))
                      (let ((_%$%hd277054277230%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e277053277226%_)))
                            (_%$%tl277055277233%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e277053277226%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl277055277233%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl277049277213%_))
                                (let ((_%$%e277056277236%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl277049277213%_))))
                                  (let ((_%$%hd277057277240%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e277056277236%_)))
                                        (_%$%tl277058277243%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e277056277236%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%$%hd277057277240%_))
                                        (let ((_%$%e277059277246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd277057277240%_))))
                                          (if (equal? _%$%e277059277246%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl277058277243%_))
                                                  (let ((_%$%e277060277250%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl277058277243%_))))
                                                    (let ((_%$%hd277061277254%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e277060277250%_)))
                                                          (_%$%tl277062277257%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e277060277250%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd277061277254%_))
                                                          (let ((_%$%e277063277260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%hd277061277254%_))))
                    (let ((_%$%hd277064277264%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e277063277260%_)))
                          (_%$%tl277065277267%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e277063277260%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd277064277264%_))
                          (if (let ((__tmp280597 |gxc[1]#_g280598_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp280597
                                 _%$%hd277064277264%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl277065277267%_))
                                  (let ((_%$%e277066277270%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl277065277267%_))))
                                    (let ((_%$%hd277067277274%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e277066277270%_)))
                                          (_%$%tl277068277277%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e277066277270%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl277068277277%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl277062277257%_))
                                              (let ((_%$%e277069277280%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl277062277257%_))))
                                                (let ((_%$%hd277070277284%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e277069277280%_)))
                                                      (_%$%tl277071277287%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e277069277280%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%$%hd277070277284%_))
                                                      (let ((_%$%e277072277290%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd277070277284%_))))
                (if (equal? _%$%e277072277290%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl277071277287%_))
                        (let ((_%$%e277073277294%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl277071277287%_))))
                          (let ((_%$%hd277074277298%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e277073277294%_)))
                                (_%$%tl277075277301%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e277073277294%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd277074277298%_))
                                (let ((_%$%e277076277304%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%hd277074277298%_))))
                                  (let ((_%$%hd277077277308%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e277076277304%_)))
                                        (_%$%tl277078277311%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e277076277304%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd277077277308%_))
                                        (if (let ((__tmp280599
                                                   |gxc[1]#_g280600_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp280599
                                               _%$%hd277077277308%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl277078277311%_))
                                                (let ((_%$%e277079277314%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl277078277311%_))))
                                                  (let ((_%$%hd277080277318%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e277079277314%_)))
                                                        (_%$%tl277081277321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e277079277314%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl277081277321%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl277075277301%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd277067277274%_))
                        (cons _%$%hd277067277274%_
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
                                                            (cons _%$%hd277041277186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd277080277318%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '#f)
                    (_%$%g277007277087%_ _%$%g277008277091%_))
                (_%$%g277007277087%_ _%$%g277008277091%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g277007277087%_
                                                 _%$%g277008277091%_))
                                            (_%$%g277007277087%_
                                             _%$%g277008277091%_))
                                        (_%$%g277007277087%_
                                         _%$%g277008277091%_))))
                                (_%$%g277007277087%_ _%$%g277008277091%_))))
                        (_%$%g277007277087%_ _%$%g277008277091%_))
                    (_%$%g277007277087%_ _%$%g277008277091%_)))
              (_%$%g277007277087%_ _%$%g277008277091%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g277007277087%_
                                               _%$%g277008277091%_))
                                          (_%$%g277007277087%_
                                           _%$%g277008277091%_))))
                                  (_%$%g277007277087%_ _%$%g277008277091%_))
                              (_%$%g277007277087%_ _%$%g277008277091%_))
                          (_%$%g277007277087%_ _%$%g277008277091%_))))
                  (_%$%g277007277087%_ _%$%g277008277091%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g277007277087%_
                                                   _%$%g277008277091%_))
                                              (_%$%g277007277087%_
                                               _%$%g277008277091%_)))
                                        (_%$%g277007277087%_
                                         _%$%g277008277091%_))))
                                (_%$%g277007277087%_ _%$%g277008277091%_))
                            (_%$%g277007277087%_ _%$%g277008277091%_))))
                    (_%$%g277007277087%_ _%$%g277008277091%_))
                (_%$%g277007277087%_ _%$%g277008277091%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g277007277087%_
                                                     _%$%g277008277091%_))))
                                            (_%$%g277007277087%_
                                             _%$%g277008277091%_))))
                                    (_%$%g277007277087%_ _%$%g277008277091%_))
                                (_%$%g277007277087%_ _%$%g277008277091%_)))
                          (_%$%g277007277087%_ _%$%g277008277091%_))))
                  (_%$%g277007277087%_ _%$%g277008277091%_))
              (_%$%g277007277087%_ _%$%g277008277091%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g277007277087%_
                                               _%$%g277008277091%_))
                                          (_%$%g277007277087%_
                                           _%$%g277008277091%_))
                                      (_%$%g277007277087%_
                                       _%$%g277008277091%_))))
                              (_%$%g277007277087%_ _%$%g277008277091%_))))
                      (_%$%g277007277087%_ _%$%g277008277091%_))
                  (_%$%g277007277087%_ _%$%g277008277091%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g277007277087%_
                                                     _%$%g277008277091%_))))
                                            (_%$%g277007277087%_
                                             _%$%g277008277091%_))
                                        (_%$%g277007277087%_
                                         _%$%g277008277091%_))))
                                (_%$%g277007277087%_ _%$%g277008277091%_))
                            (_%$%g277007277087%_ _%$%g277008277091%_))
                        (_%$%g277007277087%_ _%$%g277008277091%_))))
                (_%$%g277007277087%_ _%$%g277008277091%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g277007277087%_
                                                 _%$%g277008277091%_))
                                            (_%$%g277007277087%_
                                             _%$%g277008277091%_)))
                                      (_%$%g277007277087%_
                                       _%$%g277008277091%_))))
                              (_%$%g277007277087%_ _%$%g277008277091%_))))
                      (_%$%g277007277087%_ _%$%g277008277091%_)))))
          (_%$%g277006277389%_ _%sig277004%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx278161%_)
        (let* ((_%$%g278164278182%_
                (lambda (_%$%g278165278178%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278165278178%_))))
               (_%$%g278163278237%_
                (lambda (_%$%g278165278186%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278165278186%_))
                      (let ((_%$%e278168278189%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278165278186%_))))
                        (let ((_%$%hd278169278193%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278168278189%_)))
                              (_%$%tl278170278196%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278168278189%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278170278196%_))
                              (let ((_%$%e278171278199%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278170278196%_))))
                                (let ((_%$%hd278172278203%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278171278199%_)))
                                      (_%$%tl278173278206%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278171278199%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl278173278206%_))
                                      (let ((_%$%e278174278209%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl278173278206%_))))
                                        (let ((_%$%hd278175278213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278174278209%_)))
                                              (_%$%tl278176278216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278174278209%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl278176278216%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd278172278203%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd278175278213%_)))
                                                  (begin
                                                    (|gxc[1]#verify-procedure!|
                                                     _%stx278161%_
                                                     _%$%hd278172278203%_)
                                                    (|gxc[1]#verify-class!|
                                                     _%stx278161%_
                                                     _%$%hd278175278213%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-type))
                                                          (cons _%$%hd278172278203%_
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
                                                (cons _%$%hd278175278213%_
                                                      '()))
                                          '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g278164278182%_
                                                   _%$%g278165278186%_))
                                              (_%$%g278164278182%_
                                               _%$%g278165278186%_))))
                                      (_%$%g278164278182%_
                                       _%$%g278165278186%_))))
                              (_%$%g278164278182%_ _%$%g278165278186%_))))
                      (_%$%g278164278182%_ _%$%g278165278186%_)))))
          (_%$%g278163278237%_ _%stx278161%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx278241%_)
        (let* ((_%$%g278244278268%_
                (lambda (_%$%g278245278264%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278245278264%_))))
               (_%$%g278243278549%_
                (lambda (_%$%g278245278272%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278245278272%_))
                      (let ((_%$%e278248278275%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278245278272%_))))
                        (let ((_%$%hd278249278279%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278248278275%_)))
                              (_%$%tl278250278282%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278248278275%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278250278282%_))
                              (let ((_%$%e278251278285%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278250278282%_))))
                                (let ((_%$%hd278252278289%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278251278285%_)))
                                      (_%$%tl278253278292%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278251278285%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl278253278292%_))
                                      (let ((_g280601_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl278253278292%_
                                                '0))))
                                        (begin
                                          (let ((_g280602_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g280601_)
                                                       (##values-length
                                                        _g280601_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g280602_ 2)))
                                                (error "Context expects 2 values"
                                                       _g280602_)))
                                          (let ((_%$%target278254278295%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g280601_ 0)))
                                                (_%$%tl278256278298%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g280601_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl278256278298%_))
                                                (letrec ((_%$%loop278257278301%_
                                                          (lambda (_%$%hd278255278305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%signature278261278308%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd278255278305%_))
                        (let ((_%$%e278258278310%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd278255278305%_))))
                          (let ((_%$%lp-hd278259278314%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e278258278310%_)))
                                (_%$%lp-tl278260278317%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e278258278310%_))))
                            (_%$%loop278257278301%_
                             _%$%lp-tl278260278317%_
                             (cons _%$%lp-hd278259278314%_
                                   _%$%signature278261278308%_))))
                        (let ((_%$%signature278262278320%_
                               (reverse _%$%signature278261278308%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd278252278289%_))
                              (let* ((_%$%g278343278358%_
                                      (lambda (_%$%g278344278354%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g278344278354%_))))
                                     (_%$%g278342278537%_
                                      (lambda (_%$%g278344278362%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%g278344278362%_))
                                            (let ((_%$%e278347278365%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%g278344278362%_))))
                                              (let ((_%$%hd278348278369%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e278347278365%_)))
                                                    (_%$%tl278349278372%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e278347278365%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl278349278372%_))
                                                    (let ((_%$%e278350278375%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl278349278372%_))))
                                                      (let ((_%$%hd278351278379%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e278350278375%_)))
                    (_%$%tl278352278382%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e278350278375%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl278352278382%_))
                    (let* ((_%$%g278403278411%_
                            (lambda (_%$%g278404278407%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g278404278407%_))))
                           (_%$%g278402278533%_
                            (lambda (_%$%g278404278415%_)
                              (let* ((_%unchecked278431%_
                                      (|gxc[1]#signature->unchecked-signature|
                                       _%$%hd278351278379%_))
                                     (_%$%g278434278442%_
                                      (lambda (_%$%g278435278438%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g278435278438%_))))
                                     (_%$%g278433278465%_
                                      (lambda (_%$%g278435278446%_)
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'begin))
                                              (cons _%$%g278404278415%_
                                                    (cons _%$%g278435278446%_
                                                          '()))))))
                                (_%$%g278433278465%_
                                 (if _%unchecked278431%_
                                     (let* ((_%$%g278469278484%_
                                             (lambda (_%$%g278470278480%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g278470278480%_))))
                                            (_%$%g278468278529%_
                                             (lambda (_%$%g278470278488%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g278470278488%_))
                                                   (let ((_%$%e278473278491%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%$%g278470278488%_))))
                                                     (let ((_%$%hd278474278495%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e278473278491%_)))
                                                           (_%$%tl278475278498%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e278473278491%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl278475278498%_))
                                                           (let ((_%$%e278476278501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%$%tl278475278498%_))))
                     (let ((_%$%hd278477278505%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e278476278501%_)))
                           (_%$%tl278478278508%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e278476278501%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl278478278508%_))
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'declare-type))
                                 (cons _%$%hd278474278495%_
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-!primitive-lambda))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%$%hd278348278369%_ '()))
                 (cons '#f
                       (cons 'signature: (cons _%$%hd278477278505%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (_%$%g278469278484%_ _%$%g278470278488%_))))
                   (_%$%g278469278484%_ _%$%g278470278488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g278469278484%_
                                                    _%$%g278470278488%_)))))
                                       (_%$%g278468278529%_
                                        _%unchecked278431%_))
                                     '(begin)))))))
                      (_%$%g278402278533%_
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'declare-type))
                             (cons _%$%hd278252278289%_
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
                                                           (cons _%$%hd278348278369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons 'signature:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%hd278351278379%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                    (_%$%g278343278358%_ _%$%g278344278362%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g278343278358%_
                                                     _%$%g278344278362%_))))
                                            (_%$%g278343278358%_
                                             _%$%g278344278362%_)))))
                                (_%$%g278342278537%_
                                 (|gxc[1]#parse-signature|
                                  _%stx278241%_
                                  _%$%hd278252278289%_
                                  (let ((__tmp280603
                                         (lambda (_%$%g278540278543%_
                                                  _%$%g278541278546%_)
                                           (cons _%$%g278540278543%_
                                                 _%$%g278541278546%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp280603
                                     '()
                                     _%$%signature278262278320%_)))))
                              (_%$%g278244278268%_ _%$%g278245278272%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop278257278301%_
                                                   _%$%target278254278295%_
                                                   '()))
                                                (_%$%g278244278268%_
                                                 _%$%g278245278272%_)))))
                                      (_%$%g278244278268%_
                                       _%$%g278245278272%_))))
                              (_%$%g278244278268%_ _%$%g278245278272%_))))
                      (_%$%g278244278268%_ _%$%g278245278272%_)))))
          (_%$%g278243278549%_ _%stx278241%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx278554%_)
        (let* ((_%$%g278557278581%_
                (lambda (_%$%g278558278577%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278558278577%_))))
               (_%$%g278556279456%_
                (lambda (_%$%g278558278585%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278558278585%_))
                      (let ((_%$%e278561278588%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278558278585%_))))
                        (let ((_%$%hd278562278592%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278561278588%_)))
                              (_%$%tl278563278595%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278561278588%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278563278595%_))
                              (let ((_%$%e278564278598%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278563278595%_))))
                                (let ((_%$%hd278565278602%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278564278598%_)))
                                      (_%$%tl278566278605%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278564278598%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl278566278605%_))
                                      (let ((_g280604_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl278566278605%_
                                                '0))))
                                        (begin
                                          (let ((_g280605_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g280604_)
                                                       (##values-length
                                                        _g280604_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g280605_ 2)))
                                                (error "Context expects 2 values"
                                                       _g280605_)))
                                          (let ((_%$%target278567278608%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g280604_ 0)))
                                                (_%$%tl278569278611%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g280604_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl278569278611%_))
                                                (letrec ((_%$%loop278570278614%_
                                                          (lambda (_%$%hd278568278618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%case-signature278574278621%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd278568278618%_))
                        (let ((_%$%e278571278623%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd278568278618%_))))
                          (let ((_%$%lp-hd278572278627%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e278571278623%_)))
                                (_%$%lp-tl278573278630%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e278571278623%_))))
                            (_%$%loop278570278614%_
                             _%$%lp-tl278573278630%_
                             (cons _%$%lp-hd278572278627%_
                                   _%$%case-signature278574278621%_))))
                        (let ((_%$%case-signature278575278633%_
                               (reverse _%$%case-signature278574278621%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd278565278602%_))
                              (let* ((_%signatures278669%_
                                      (map (lambda (_%$%g278655278657%_)
                                             (|gxc[1]#parse-signature|
                                              _%stx278554%_
                                              _%$%hd278565278602%_
                                              _%$%g278655278657%_))
                                           (let ((__tmp280606
                                                  (lambda (_%$%g278660278663%_
                                                           _%$%g278661278666%_)
                                                    (cons _%$%g278660278663%_
                                                          _%$%g278661278666%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp280606
                                              '()
                                              _%$%case-signature278575278633%_))))
                                     (_%$%g278672278698%_
                                      (lambda (_%$%g278673278694%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g278673278694%_))))
                                     (_%$%g278671279452%_
                                      (lambda (_%$%g278673278702%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g278673278702%_))
                                            (let ((_g280607_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g278673278702%_
                                                      '0))))
                                              (begin
                                                (let ((_g280608_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g280607_)
                                                             (##values-length
                                                              _g280607_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g280608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g280608_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target278676278705%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g280607_
                                                          0)))
                                                      (_%$%tl278678278708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g280607_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl278678278708%_))
                                                      (letrec ((_%$%loop278679278711%_
                                                                (lambda (_%$%hd278677278715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%sig278683278718%_
                                 _%$%arity278684278719%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd278677278715%_))
                              (let ((_%$%e278680278721%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd278677278715%_))))
                                (let ((_%$%lp-hd278681278725%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278680278721%_)))
                                      (_%$%lp-tl278682278728%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278680278721%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%lp-hd278681278725%_))
                                      (let ((_%$%e278687278731%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%lp-hd278681278725%_))))
                                        (let ((_%$%hd278688278735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278687278731%_)))
                                              (_%$%tl278689278738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278687278731%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl278689278738%_))
                                              (let ((_%$%e278690278741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl278689278738%_))))
                                                (let ((_%$%hd278691278745%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e278690278741%_)))
                                                      (_%$%tl278692278748%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e278690278741%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl278692278748%_))
                                                      (_%$%loop278679278711%_
                                                       _%$%lp-tl278682278728%_
                                                       (cons _%$%hd278691278745%_
                                                             _%$%sig278683278718%_)
                                                       (cons _%$%hd278688278735%_
                                                             _%$%arity278684278719%_))
                                                      (_%$%g278672278698%_
                                                       _%$%g278673278702%_))))
                                              (_%$%g278672278698%_
                                               _%$%g278673278702%_))))
                                      (_%$%g278672278698%_
                                       _%$%g278673278702%_))))
                              (let ((_%$%sig278685278751%_
                                     (reverse _%$%sig278683278718%_))
                                    (_%$%arity278686278753%_
                                     (reverse _%$%arity278684278719%_)))
                                (let* ((_%$%g278774278782%_
                                        (lambda (_%$%g278775278778%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g278775278778%_))))
                                       (_%$%g278773279437%_
                                        (lambda (_%$%g278775278786%_)
                                          (let* ((_%$%g278802278810%_
                                                  (lambda (_%$%g278803278806%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g278803278806%_))))
                                                 (_%$%g278801278832%_
                                                  (lambda (_%$%g278803278814%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%$%g278775278786%_
                                                                (cons _%$%g278803278814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g278801278832%_
                                             (let ((_g280609_
                                                    (let _%loop278836%_ ((_%rest278839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%signatures278669%_)
                                 (_%unchecked-proc278841%_ '#f)
                                 (_%unchecked-clauses278842%_ '()))
              (let* ((_%$%rest278843278851%_ _%rest278839%_)
                     (_%$%else278845278863%_
                      (lambda ()
                        (values _%unchecked-proc278841%_
                                (reverse! _%unchecked-clauses278842%_))))
                     (_%$%K278847279304%_
                      (lambda (_%rest278867%_ _%hd278869%_)
                        (let* ((_%$%g278871278958%_
                                (lambda (_%$%g278872278954%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g278872278954%_))))
                               (_%$%g278870279300%_
                                (lambda (_%$%g278872278962%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%g278872278962%_))
                                      (let ((_%$%e278879278965%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%g278872278962%_))))
                                        (let ((_%$%hd278880278969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278879278965%_)))
                                              (_%$%tl278881278972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278879278965%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl278881278972%_))
                                              (let ((_%$%e278882278975%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl278881278972%_))))
                                                (let ((_%$%hd278883278979%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e278882278975%_)))
                                                      (_%$%tl278884278982%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e278882278975%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd278883278979%_))
                                                      (let ((_%$%e278885278985%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%hd278883278979%_))))
                (let ((_%$%hd278886278989%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e278885278985%_)))
                      (_%$%tl278887278992%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e278885278985%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl278887278992%_))
                      (let ((_%$%e278888278995%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl278887278992%_))))
                        (let ((_%$%hd278889278999%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278888278995%_)))
                              (_%$%tl278890279002%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278888278995%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-datum? _%$%hd278889278999%_))
                              (let ((_%$%e278891279005%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd278889278999%_))))
                                (if (equal? _%$%e278891279005%_ 'arguments:)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl278890279002%_))
                                        (let ((_%$%e278892279009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl278890279002%_))))
                                          (let ((_%$%hd278893279013%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e278892279009%_)))
                                                (_%$%tl278894279016%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e278892279009%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd278893279013%_))
                                                (let ((_%$%e278895279019%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%hd278893279013%_))))
                                                  (let ((_%$%hd278896279023%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e278895279019%_)))
                                                        (_%$%tl278897279026%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e278895279019%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd278896279023%_))
                                                        (if (let ((__tmp280611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gxc[1]#_g280612_|))
                      (declare (not safe))
                      (gx#free-identifier=? __tmp280611 _%$%hd278896279023%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl278897279026%_))
                        (let ((_%$%e278898279029%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl278897279026%_))))
                          (let ((_%$%hd278899279033%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e278898279029%_)))
                                (_%$%tl278900279036%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e278898279029%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl278900279036%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl278894279016%_))
                                    (let ((_%$%e278901279039%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl278894279016%_))))
                                      (let ((_%$%hd278902279043%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e278901279039%_)))
                                            (_%$%tl278903279046%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e278901279039%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-datum?
                                               _%$%hd278902279043%_))
                                            (let ((_%$%e278904279049%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd278902279043%_))))
                                              (if (equal? _%$%e278904279049%_
                                                          'return:)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl278903279046%_))
                                                      (let ((_%$%e278905279053%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl278903279046%_))))
                (let ((_%$%hd278906279057%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e278905279053%_)))
                      (_%$%tl278907279060%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e278905279053%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd278906279057%_))
                      (let ((_%$%e278908279063%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%hd278906279057%_))))
                        (let ((_%$%hd278909279067%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278908279063%_)))
                              (_%$%tl278910279070%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278908279063%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd278909279067%_))
                              (if (let ((__tmp280613 |gxc[1]#_g280614_|))
                                    (declare (not safe))
                                    (gx#free-identifier=?
                                     __tmp280613
                                     _%$%hd278909279067%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl278910279070%_))
                                      (let ((_%$%e278911279073%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl278910279070%_))))
                                        (let ((_%$%hd278912279077%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278911279073%_)))
                                              (_%$%tl278913279080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278911279073%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl278913279080%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl278907279060%_))
                                                  (let ((_%$%e278914279083%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl278907279060%_))))
                                                    (let ((_%$%hd278915279087%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e278914279083%_)))
                                                          (_%$%tl278916279090%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e278914279083%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-datum?
                                                             _%$%hd278915279087%_))
                                                          (let ((_%$%e278917279093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd278915279087%_))))
                    (if (equal? _%$%e278917279093%_ 'effect:)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl278916279090%_))
                            (let ((_%$%e278918279097%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl278916279090%_))))
                              (let ((_%$%hd278919279101%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e278918279097%_)))
                                    (_%$%tl278920279104%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e278918279097%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd278919279101%_))
                                    (let ((_%$%e278921279107%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd278919279101%_))))
                                      (let ((_%$%hd278922279111%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e278921279107%_)))
                                            (_%$%tl278923279114%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e278921279107%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd278922279111%_))
                                            (if (let ((__tmp280615
                                                       |gxc[1]#_g280616_|))
                                                  (declare (not safe))
                                                  (gx#free-identifier=?
                                                   __tmp280615
                                                   _%$%hd278922279111%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl278923279114%_))
                                                    (let ((_%$%e278924279117%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl278923279114%_))))
                                                      (let ((_%$%hd278925279121%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e278924279117%_)))
                    (_%$%tl278926279124%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e278924279117%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl278926279124%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl278920279104%_))
                        (let ((_%$%e278927279127%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl278920279104%_))))
                          (let ((_%$%hd278928279131%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e278927279127%_)))
                                (_%$%tl278929279134%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e278927279127%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd278928279131%_))
                                (let ((_%$%e278930279137%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd278928279131%_))))
                                  (if (equal? _%$%e278930279137%_ 'unchecked:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl278929279134%_))
                                          (let ((_%$%e278931279141%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl278929279134%_))))
                                            (let ((_%$%hd278932279145%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e278931279141%_)))
                                                  (_%$%tl278933279148%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e278931279141%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd278932279145%_))
                                                  (let ((_%$%e278934279151%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd278932279145%_))))
                                                    (let ((_%$%hd278935279155%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e278934279151%_)))
                                                          (_%$%tl278936279158%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e278934279151%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd278935279155%_))
                                                          (if (let ((__tmp280617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             |gxc[1]#_g280618_|))
                        (declare (not safe))
                        (gx#free-identifier=?
                         __tmp280617
                         _%$%hd278935279155%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl278936279158%_))
                          (let ((_%$%e278937279161%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl278936279158%_))))
                            (let ((_%$%hd278938279165%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e278937279161%_)))
                                  (_%$%tl278939279168%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e278937279161%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl278939279168%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl278933279148%_))
                                      (let ((_%$%e278940279171%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl278933279148%_))))
                                        (let ((_%$%hd278941279175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278940279171%_)))
                                              (_%$%tl278942279178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278940279171%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd278941279175%_))
                                              (let ((_%$%e278943279181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd278941279175%_))))
                                                (if (equal? _%$%e278943279181%_
                                                            'origin:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl278942279178%_))
                                                        (let ((_%$%e278944279185%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl278942279178%_))))
                  (let ((_%$%hd278945279189%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e278944279185%_)))
                        (_%$%tl278946279192%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e278944279185%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd278945279189%_))
                        (let ((_%$%e278947279195%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd278945279189%_))))
                          (let ((_%$%hd278948279199%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e278947279195%_)))
                                (_%$%tl278949279202%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e278947279195%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd278948279199%_))
                                (if (let ((__tmp280619 |gxc[1]#_g280620_|))
                                      (declare (not safe))
                                      (gx#free-identifier=?
                                       __tmp280619
                                       _%$%hd278948279199%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl278949279202%_))
                                        (let ((_%$%e278950279205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl278949279202%_))))
                                          (let ((_%$%hd278951279209%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e278950279205%_)))
                                                (_%$%tl278952279212%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e278950279205%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl278952279212%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl278946279192%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl278884278982%_))
                                                        (let ((_%clause279292%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%$%hd278880278969%_ '()))
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
                                     (cons _%$%hd278912279077%_ '()))
                               (cons 'origin:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%hd278951279209%_
                                                       '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                      (_%unchecked279294%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%$%hd278938279165%_))))
                  (_%loop278836%_
                   _%rest278867%_
                   (let ((_%$e279296%_ _%unchecked279294%_))
                     (if _%$e279296%_ _%$e279296%_ _%unchecked-proc278841%_))
                   (cons _%clause279292%_ _%unchecked-clauses278842%_)))
                (_%$%g278871278958%_ _%$%g278872278962%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g278871278958%_
                                                     _%$%g278872278962%_))
                                                (_%$%g278871278958%_
                                                 _%$%g278872278962%_))))
                                        (_%$%g278871278958%_
                                         _%$%g278872278962%_))
                                    (_%$%g278871278958%_ _%$%g278872278962%_))
                                (_%$%g278871278958%_ _%$%g278872278962%_))))
                        (_%$%g278871278958%_ _%$%g278872278962%_))))
                (_%$%g278871278958%_ _%$%g278872278962%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g278871278958%_
                                                     _%$%g278872278962%_)))
                                              (_%$%g278871278958%_
                                               _%$%g278872278962%_))))
                                      (_%$%g278871278958%_
                                       _%$%g278872278962%_))
                                  (_%$%g278871278958%_ _%$%g278872278962%_))))
                          (_%$%g278871278958%_ _%$%g278872278962%_))
                      (_%$%g278871278958%_ _%$%g278872278962%_))
                  (_%$%g278871278958%_ _%$%g278872278962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g278871278958%_
                                                   _%$%g278872278962%_))))
                                          (_%$%g278871278958%_
                                           _%$%g278872278962%_))
                                      (_%$%g278871278958%_
                                       _%$%g278872278962%_)))
                                (_%$%g278871278958%_ _%$%g278872278962%_))))
                        (_%$%g278871278958%_ _%$%g278872278962%_))
                    (_%$%g278871278958%_ _%$%g278872278962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g278871278958%_
                                                     _%$%g278872278962%_))
                                                (_%$%g278871278958%_
                                                 _%$%g278872278962%_))
                                            (_%$%g278871278958%_
                                             _%$%g278872278962%_))))
                                    (_%$%g278871278958%_
                                     _%$%g278872278962%_))))
                            (_%$%g278871278958%_ _%$%g278872278962%_))
                        (_%$%g278871278958%_ _%$%g278872278962%_)))
                  (_%$%g278871278958%_ _%$%g278872278962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g278871278958%_
                                                   _%$%g278872278962%_))
                                              (_%$%g278871278958%_
                                               _%$%g278872278962%_))))
                                      (_%$%g278871278958%_
                                       _%$%g278872278962%_))
                                  (_%$%g278871278958%_ _%$%g278872278962%_))
                              (_%$%g278871278958%_ _%$%g278872278962%_))))
                      (_%$%g278871278958%_ _%$%g278872278962%_))))
              (_%$%g278871278958%_ _%$%g278872278962%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g278871278958%_
                                                   _%$%g278872278962%_)))
                                            (_%$%g278871278958%_
                                             _%$%g278872278962%_))))
                                    (_%$%g278871278958%_ _%$%g278872278962%_))
                                (_%$%g278871278958%_ _%$%g278872278962%_))))
                        (_%$%g278871278958%_ _%$%g278872278962%_))
                    (_%$%g278871278958%_ _%$%g278872278962%_))
                (_%$%g278871278958%_ _%$%g278872278962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g278871278958%_
                                                 _%$%g278872278962%_))))
                                        (_%$%g278871278958%_
                                         _%$%g278872278962%_))
                                    (_%$%g278871278958%_ _%$%g278872278962%_)))
                              (_%$%g278871278958%_ _%$%g278872278962%_))))
                      (_%$%g278871278958%_ _%$%g278872278962%_))))
              (_%$%g278871278958%_ _%$%g278872278962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g278871278958%_
                                               _%$%g278872278962%_))))
                                      (_%$%g278871278958%_
                                       _%$%g278872278962%_)))))
                          (_%$%g278870279300%_ _%hd278869%_)))))
                (if (pair? _%$%rest278843278851%_)
                    (let ((_%$%hd278848279308%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest278843278851%_)))
                          (_%$%tl278849279311%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest278843278851%_))))
                      (let* ((_%hd279314%_ _%$%hd278848279308%_)
                             (_%rest279317%_ _%$%tl278849279311%_))
                        (_%$%K278847279304%_ _%rest279317%_ _%hd279314%_)))
                    (_%$%else278845278863%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 (let ((_g280610_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g280609_)
                                                              (##values-length
                                                               _g280609_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g280610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g280610_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%unchecked-proc279320%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g280609_
                                                           0)))
                                                       (_%unchecked-clauses279322%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g280609_
                                                           1))))
                                                   (if _%unchecked-proc279320%_
                                                       (let* ((_%$%g279324279348%_
                                                               (lambda (_%$%g279325279344%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g279325279344%_))))
                      (_%$%g279323279433%_
                       (lambda (_%$%g279325279352%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%g279325279352%_))
                             (let ((_%$%e279328279355%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%$%g279325279352%_))))
                               (let ((_%$%hd279329279359%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e279328279355%_)))
                                     (_%$%tl279330279362%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e279328279355%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%tl279330279362%_))
                                     (let ((_%$%e279331279365%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%tl279330279362%_))))
                                       (let ((_%$%hd279332279369%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e279331279365%_)))
                                             (_%$%tl279333279372%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e279331279365%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair/null?
                                                _%$%hd279332279369%_))
                                             (let ((_g280621_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-split-splice
                                                       _%$%hd279332279369%_
                                                       '0))))
                                               (begin
                                                 (let ((_g280622_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g280621_)
                                                              (##values-length
                                                               _g280621_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g280622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g280622_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$%target279334279375%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g280621_
                                                           0)))
                                                       (_%$%tl279336279378%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g280621_
                                                           1))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl279336279378%_))
                                                       (letrec ((_%$%loop279337279381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%hd279335279385%_
                                  _%$%clause279341279388%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd279335279385%_))
                               (let ((_%$%e279338279390%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%$%hd279335279385%_))))
                                 (let ((_%$%lp-hd279339279394%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e279338279390%_)))
                                       (_%$%lp-tl279340279397%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e279338279390%_))))
                                   (_%$%loop279337279381%_
                                    _%$%lp-tl279340279397%_
                                    (cons _%$%lp-hd279339279394%_
                                          _%$%clause279341279388%_))))
                               (let ((_%$%clause279342279400%_
                                      (reverse _%$%clause279341279388%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl279333279372%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-type))
                                           (cons _%$%hd279329279359%_
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!primitive-case-lambda))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '@list))
                                 (let ((__tmp280623
                                        (lambda (_%$%g279424279427%_
                                                 _%$%g279425279430%_)
                                          (cons _%$%g279424279427%_
                                                _%$%g279425279430%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp280623
                                    '()
                                    _%$%clause279342279400%_)))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%g279324279348%_
                                      _%$%g279325279352%_)))))))
                 (_%$%loop279337279381%_ _%$%target279334279375%_ '()))
               (_%$%g279324279348%_ _%$%g279325279352%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g279324279348%_
                                              _%$%g279325279352%_))))
                                     (_%$%g279324279348%_
                                      _%$%g279325279352%_))))
                             (_%$%g279324279348%_ _%$%g279325279352%_)))))
                 (_%$%g279323279433%_
                  (list _%unchecked-proc279320%_ _%unchecked-clauses279322%_)))
               '(begin))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g278773279437%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'declare-type))
                                         (cons _%$%hd278565278602%_
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
                                    _%$%sig278685278751%_
                                    _%$%arity278686278753%_))
                                 (let ((__tmp280624
                                        (lambda (_%$%g279440279444%_
                                                 _%$%g279441279447%_
                                                 _%$%g279442279449%_)
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!primitive-lambda))
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote))
                          (cons _%$%g279441279447%_ '()))
                    (cons '#f
                          (cons 'signature: (cons _%$%g279440279444%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%g279442279449%_))))
                                   (declare (not safe))
                                   (foldr__1
                                    __tmp280624
                                    '()
                                    _%$%sig278685278751%_
                                    _%$%arity278686278753%_))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))))))
                (_%$%loop278679278711%_ _%$%target278676278705%_ '() '()))
              (_%$%g278672278698%_ _%$%g278673278702%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g278672278698%_
                                             _%$%g278673278702%_)))))
                                (_%$%g278671279452%_ _%signatures278669%_))
                              (_%$%g278557278581%_ _%$%g278558278585%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop278570278614%_
                                                   _%$%target278567278608%_
                                                   '()))
                                                (_%$%g278557278581%_
                                                 _%$%g278558278585%_)))))
                                      (_%$%g278557278581%_
                                       _%$%g278558278585%_))))
                              (_%$%g278557278581%_ _%$%g278558278585%_))))
                      (_%$%g278557278581%_ _%$%g278558278585%_)))))
          (_%$%g278556279456%_ _%stx278554%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx279464%_)
        (let* ((_%__stx280444280445%_ _%$stx279464%_)
               (_%$%g279470279530%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx280444280445%_)))))
          (let ((_%__kont280447280448%_
                 (lambda (_%$%g279472279752%_ _%$%g279473279754%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g279473279754%_ '()))
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
                                                       (cons _%$%g279473279754%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g279472279752%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont280449280450%_
                 (lambda (_%$%g279487279677%_
                          _%$%g279488279679%_
                          _%$%g279489279680%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g279489279680%_ '()))
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
                                                       (cons _%$%g279489279680%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g279488279679%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g279487279677%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont280451280452%_
                 (lambda (_%$%g279506279591%_
                          _%$%g279507279593%_
                          _%$%g279508279594%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g279508279594%_ '()))
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
                                                       (cons _%$%g279508279594%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g279507279593%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g279506279591%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx280444280445%_))
                (let ((_%$%e279474279708%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx280444280445%_))))
                  (let ((_%$%tl279476279715%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e279474279708%_)))
                        (_%$%hd279475279712%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e279474279708%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl279476279715%_))
                        (let ((_%$%e279477279718%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl279476279715%_))))
                          (let ((_%$%tl279479279725%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e279477279718%_)))
                                (_%$%hd279478279722%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e279477279718%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd279478279722%_))
                                (let ((_%$%e279480279728%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd279478279722%_))))
                                  (if (equal? _%$%e279480279728%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl279479279725%_))
                                          (let ((_%$%e279481279732%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl279479279725%_))))
                                            (let ((_%$%tl279483279739%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e279481279732%_)))
                                                  (_%$%hd279482279736%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e279481279732%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl279483279739%_))
                                                  (let ((_%$%e279484279742%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl279483279739%_))))
                                                    (let ((_%$%tl279486279749%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e279484279742%_)))
                                                          (_%$%hd279485279746%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e279484279742%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl279486279749%_))
                                                          (_%__kont280447280448%_
                                                           _%$%hd279485279746%_
                                                           _%$%hd279482279736%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g279470279530%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g279470279530%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g279470279530%_)))
                                      (if (equal? _%$%e279480279728%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl279479279725%_))
                                              (let ((_%$%e279497279647%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl279479279725%_))))
                                                (let ((_%$%tl279499279654%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e279497279647%_)))
                                                      (_%$%hd279498279651%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e279497279647%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl279499279654%_))
                                                      (let ((_%$%e279500279657%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl279499279654%_))))
                (let ((_%$%tl279502279664%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e279500279657%_)))
                      (_%$%hd279501279661%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e279500279657%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl279502279664%_))
                      (let ((_%$%e279503279667%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl279502279664%_))))
                        (let ((_%$%tl279505279674%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e279503279667%_)))
                              (_%$%hd279504279671%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e279503279667%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl279505279674%_))
                              (_%__kont280449280450%_
                               _%$%hd279504279671%_
                               _%$%hd279501279661%_
                               _%$%hd279498279651%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g279470279530%_)))))
                      (let () (declare (not safe)) (_%$%g279470279530%_)))))
              (let () (declare (not safe)) (_%$%g279470279530%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g279470279530%_)))
                                          (if (equal? _%$%e279480279728%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl279479279725%_))
                                                  (let ((_%$%e279516279561%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl279479279725%_))))
                                                    (let ((_%$%tl279518279568%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e279516279561%_)))
                                                          (_%$%hd279517279565%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e279516279561%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl279518279568%_))
                                                          (let ((_%$%e279519279571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl279518279568%_))))
                    (let ((_%$%tl279521279578%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e279519279571%_)))
                          (_%$%hd279520279575%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e279519279571%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl279521279578%_))
                          (let ((_%$%e279522279581%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl279521279578%_))))
                            (let ((_%$%tl279524279588%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e279522279581%_)))
                                  (_%$%hd279523279585%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e279522279581%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl279524279588%_))
                                  (_%__kont280451280452%_
                                   _%$%hd279523279585%_
                                   _%$%hd279520279575%_
                                   _%$%hd279517279565%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g279470279530%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g279470279530%_)))))
                  (let () (declare (not safe)) (_%$%g279470279530%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g279470279530%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g279470279530%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g279470279530%_)))))
                        (let () (declare (not safe)) (_%$%g279470279530%_)))))
                (let () (declare (not safe)) (_%$%g279470279530%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx279776%_)
        (let* ((_%$%g279780279800%_
                (lambda (_%$%g279781279796%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g279781279796%_))))
               (_%$%g279779279869%_
                (lambda (_%$%g279781279804%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g279781279804%_))
                      (let ((_%$%e279783279807%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g279781279804%_))))
                        (let ((_%$%hd279784279811%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e279783279807%_)))
                              (_%$%tl279785279814%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e279783279807%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl279785279814%_))
                              (let ((_g280625_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl279785279814%_
                                        '0))))
                                (begin
                                  (let ((_g280626_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g280625_)
                                               (##values-length _g280625_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g280626_ 2)))
                                        (error "Context expects 2 values"
                                               _g280626_)))
                                  (let ((_%$%target279786279817%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280625_ 0)))
                                        (_%$%tl279788279820%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280625_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl279788279820%_))
                                        (letrec ((_%$%loop279789279823%_
                                                  (lambda (_%$%hd279787279827%_
                                                           _%$%decl279793279830%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd279787279827%_))
                                                        (let ((_%$%e279790279832%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd279787279827%_))))
                  (let ((_%$%lp-hd279791279836%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e279790279832%_)))
                        (_%$%lp-tl279792279839%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e279790279832%_))))
                    (_%$%loop279789279823%_
                     _%$%lp-tl279792279839%_
                     (cons _%$%lp-hd279791279836%_ _%$%decl279793279830%_))))
                (let ((_%$%decl279794279842%_
                       (reverse _%$%decl279793279830%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (let ((__tmp280627
                               (lambda (_%$%g279860279863%_
                                        _%$%g279861279866%_)
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-builtin-class))
                                             _%$%g279860279863%_)
                                       _%$%g279861279866%_))))
                          (declare (not safe))
                          (foldr__0
                           __tmp280627
                           '()
                           _%$%decl279794279842%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop279789279823%_
                                           _%$%target279786279817%_
                                           '()))
                                        (_%$%g279780279800%_
                                         _%$%g279781279804%_)))))
                              (_%$%g279780279800%_ _%$%g279781279804%_))))
                      (_%$%g279780279800%_ _%$%g279781279804%_)))))
          (_%$%g279779279869%_ _%$stx279776%_))))))
