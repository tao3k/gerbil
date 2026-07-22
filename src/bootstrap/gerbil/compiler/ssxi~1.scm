(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g280806_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280813_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280815_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280817_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280819_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280821_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280833_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280835_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280837_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280839_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g280841_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx274264%_)
        (let* ((_%$%g274268274286%_
                (lambda (_%$%g274269274282%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274269274282%_))))
               (_%$%g274267274341%_
                (lambda (_%$%g274269274290%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274269274290%_))
                      (let ((_%$%e274272274293%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274269274290%_))))
                        (let ((_%$%hd274273274297%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274272274293%_)))
                              (_%$%tl274274274300%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274272274293%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl274274274300%_))
                              (let ((_%$%e274275274303%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl274274274300%_))))
                                (let ((_%$%hd274276274307%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e274275274303%_)))
                                      (_%$%tl274277274310%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e274275274303%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl274277274310%_))
                                      (let ((_%$%e274278274313%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl274277274310%_))))
                                        (let ((_%$%hd274279274317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e274278274313%_)))
                                              (_%$%tl274280274320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e274278274313%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl274280274320%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd274276274307%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-type!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd274276274307%_ '()))
                      (cons _%$%hd274279274317%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g274268274286%_
                                                   _%$%g274269274290%_))
                                              (_%$%g274268274286%_
                                               _%$%g274269274290%_))))
                                      (_%$%g274268274286%_
                                       _%$%g274269274290%_))))
                              (_%$%g274268274286%_ _%$%g274269274290%_))))
                      (_%$%g274268274286%_ _%$%g274269274290%_)))))
          (_%$%g274267274341%_ _%$stx274264%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx274345%_)
        (let* ((_%$%g274349274367%_
                (lambda (_%$%g274350274363%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274350274363%_))))
               (_%$%g274348274422%_
                (lambda (_%$%g274350274371%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274350274371%_))
                      (let ((_%$%e274353274374%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274350274371%_))))
                        (let ((_%$%hd274354274378%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274353274374%_)))
                              (_%$%tl274355274381%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274353274374%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl274355274381%_))
                              (let ((_%$%e274356274384%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl274355274381%_))))
                                (let ((_%$%hd274357274388%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e274356274384%_)))
                                      (_%$%tl274358274391%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e274356274384%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl274358274391%_))
                                      (let ((_%$%e274359274394%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl274358274391%_))))
                                        (let ((_%$%hd274360274398%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e274359274394%_)))
                                              (_%$%tl274361274401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e274359274394%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl274361274401%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd274357274388%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-class!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd274357274388%_ '()))
                      (cons _%$%hd274360274398%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g274349274367%_
                                                   _%$%g274350274371%_))
                                              (_%$%g274349274367%_
                                               _%$%g274350274371%_))))
                                      (_%$%g274349274367%_
                                       _%$%g274350274371%_))))
                              (_%$%g274349274367%_ _%$%g274350274371%_))))
                      (_%$%g274349274367%_ _%$%g274350274371%_)))))
          (_%$%g274348274422%_ _%$stx274345%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx274426%_)
        (let* ((_%$%g274430274459%_
                (lambda (_%$%g274431274455%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274431274455%_))))
               (_%$%g274429274555%_
                (lambda (_%$%g274431274463%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274431274463%_))
                      (let ((_%$%e274434274466%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274431274463%_))))
                        (let ((_%$%hd274435274470%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274434274466%_)))
                              (_%$%tl274436274473%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274434274466%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl274436274473%_))
                              (let ((_g280784_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl274436274473%_
                                        '0))))
                                (begin
                                  (let ((_g280785_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g280784_)
                                               (##values-length _g280784_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g280785_ 2)))
                                        (error "Context expects 2 values"
                                               _g280785_)))
                                  (let ((_%$%target274437274476%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280784_ 0)))
                                        (_%$%tl274439274479%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280784_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl274439274479%_))
                                        (letrec ((_%$%loop274440274482%_
                                                  (lambda (_%$%hd274438274486%_
                                                           _%$%type274444274489%_
                                                           _%$%symbol274445274490%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd274438274486%_))
                                                        (let ((_%$%e274441274492%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd274438274486%_))))
                  (let ((_%$%lp-hd274442274496%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e274441274492%_)))
                        (_%$%lp-tl274443274499%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e274441274492%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd274442274496%_))
                        (let ((_%$%e274448274502%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd274442274496%_))))
                          (let ((_%$%hd274449274506%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e274448274502%_)))
                                (_%$%tl274450274509%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e274448274502%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl274450274509%_))
                                (let ((_%$%e274451274512%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl274450274509%_))))
                                  (let ((_%$%hd274452274516%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e274451274512%_)))
                                        (_%$%tl274453274519%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e274451274512%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl274453274519%_))
                                        (_%$%loop274440274482%_
                                         _%$%lp-tl274443274499%_
                                         (cons _%$%hd274452274516%_
                                               _%$%type274444274489%_)
                                         (cons _%$%hd274449274506%_
                                               _%$%symbol274445274490%_))
                                        (_%$%g274430274459%_
                                         _%$%g274431274463%_))))
                                (_%$%g274430274459%_ _%$%g274431274463%_))))
                        (_%$%g274430274459%_ _%$%g274431274463%_))))
                (let ((_%$%type274446274522%_ (reverse _%$%type274444274489%_))
                      (_%$%symbol274447274524%_
                       (reverse _%$%symbol274445274490%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%type274446274522%_
                             _%$%symbol274447274524%_))
                          (let ((__tmp280786
                                 (lambda (_%$%g274543274547%_
                                          _%$%g274544274550%_
                                          _%$%g274545274552%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%$%g274544274550%_
                                                     (cons _%$%g274543274547%_
                                                           '())))
                                         _%$%g274545274552%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp280786
                             '()
                             _%$%type274446274522%_
                             _%$%symbol274447274524%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop274440274482%_
                                           _%$%target274437274476%_
                                           '()
                                           '()))
                                        (_%$%g274430274459%_
                                         _%$%g274431274463%_)))))
                              (_%$%g274430274459%_ _%$%g274431274463%_))))
                      (_%$%g274430274459%_ _%$%g274431274463%_)))))
          (_%$%g274429274555%_ _%$stx274426%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx274560%_)
        (let* ((_%__stx280095280096%_ _%$stx274560%_)
               (_%$%g274565274607%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx280095280096%_)))))
          (let ((_%__kont280098280099%_
                 (lambda (_%$%g274567274735%_
                          _%$%g274568274737%_
                          _%$%g274569274738%_
                          _%$%g274570274739%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g274570274739%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g274569274738%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%g274568274737%_
                                                       '()))
                                           (cons _%$%g274567274735%_ '())))))))
                (_%__kont280100280101%_
                 (lambda (_%$%g274586274654%_
                          _%$%g274587274656%_
                          _%$%g274588274657%_
                          _%$%g274589274658%_)
                   (cons _%$%g274589274658%_
                         (cons _%$%g274588274657%_
                               (cons _%$%g274587274656%_
                                     (cons _%$%g274586274654%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match280134280135%_
                   (lambda (_%$%e274571274685%_
                            _%$%hd274572274689%_
                            _%$%tl274573274692%_
                            _%$%e274574274695%_
                            _%$%hd274575274699%_
                            _%$%tl274576274702%_
                            _%$%e274577274705%_
                            _%$%hd274578274709%_
                            _%$%tl274579274712%_
                            _%$%e274580274715%_
                            _%$%hd274581274719%_
                            _%$%tl274582274722%_
                            _%$%e274583274725%_
                            _%$%hd274584274729%_
                            _%$%tl274585274732%_)
                     (let ((_%$%g274567274735%_ _%$%hd274584274729%_)
                           (_%$%g274568274737%_ _%$%hd274581274719%_)
                           (_%$%g274569274738%_ _%$%hd274578274709%_)
                           (_%$%g274570274739%_ _%$%hd274575274699%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g274570274739%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g274569274738%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g274568274737%_)))
                           (_%__kont280098280099%_
                            _%$%g274567274735%_
                            _%$%g274568274737%_
                            _%$%g274569274738%_
                            _%$%g274570274739%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g274565274607%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx280095280096%_))
                  (let ((_%$%e274571274685%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx280095280096%_))))
                    (let ((_%$%tl274573274692%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e274571274685%_)))
                          (_%$%hd274572274689%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e274571274685%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl274573274692%_))
                          (let ((_%$%e274574274695%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl274573274692%_))))
                            (let ((_%$%tl274576274702%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e274574274695%_)))
                                  (_%$%hd274575274699%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e274574274695%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl274576274702%_))
                                  (let ((_%$%e274577274705%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl274576274702%_))))
                                    (let ((_%$%tl274579274712%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e274577274705%_)))
                                          (_%$%hd274578274709%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e274577274705%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl274579274712%_))
                                          (let ((_%$%e274580274715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl274579274712%_))))
                                            (let ((_%$%tl274582274722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e274580274715%_)))
                                                  (_%$%hd274581274719%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e274580274715%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl274582274722%_))
                                                  (let ((_%$%e274583274725%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl274582274722%_))))
                                                    (let ((_%$%tl274585274732%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e274583274725%_)))
                                                          (_%$%hd274584274729%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e274583274725%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl274585274732%_))
                                                          (_%__match280134280135%_
                                                           _%$%e274571274685%_
                                                           _%$%hd274572274689%_
                                                           _%$%tl274573274692%_
                                                           _%$%e274574274695%_
                                                           _%$%hd274575274699%_
                                                           _%$%tl274576274702%_
                                                           _%$%e274577274705%_
                                                           _%$%hd274578274709%_
                                                           _%$%tl274579274712%_
                                                           _%$%e274580274715%_
                                                           _%$%hd274581274719%_
                                                           _%$%tl274582274722%_
                                                           _%$%e274583274725%_
                                                           _%$%hd274584274729%_
                                                           _%$%tl274585274732%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g274565274607%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl274582274722%_))
                                                      (_%__kont280100280101%_
                                                       _%$%hd274581274719%_
                                                       _%$%hd274578274709%_
                                                       _%$%hd274575274699%_
                                                       _%$%hd274572274689%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g274565274607%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g274565274607%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g274565274607%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g274565274607%_)))))
                  (let () (declare (not safe)) (_%$%g274565274607%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx274764%_)
        (let* ((_%$%g274768274803%_
                (lambda (_%$%g274769274799%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274769274799%_))))
               (_%$%g274767274916%_
                (lambda (_%$%g274769274807%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274769274807%_))
                      (let ((_%$%e274773274810%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274769274807%_))))
                        (let ((_%$%hd274774274814%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274773274810%_)))
                              (_%$%tl274775274817%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274773274810%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl274775274817%_))
                              (let ((_g280787_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl274775274817%_
                                        '0))))
                                (begin
                                  (let ((_g280788_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g280787_)
                                               (##values-length _g280787_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g280788_ 2)))
                                        (error "Context expects 2 values"
                                               _g280788_)))
                                  (let ((_%$%target274776274820%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280787_ 0)))
                                        (_%$%tl274778274823%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280787_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl274778274823%_))
                                        (letrec ((_%$%loop274779274826%_
                                                  (lambda (_%$%hd274777274830%_
                                                           _%$%symbol274783274833%_
                                                           _%$%method274784274834%_
                                                           _%$%type-t274785274835%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd274777274830%_))
                                                        (let ((_%$%e274780274837%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd274777274830%_))))
                  (let ((_%$%lp-hd274781274841%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e274780274837%_)))
                        (_%$%lp-tl274782274844%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e274780274837%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd274781274841%_))
                        (let ((_%$%e274789274847%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd274781274841%_))))
                          (let ((_%$%hd274790274851%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e274789274847%_)))
                                (_%$%tl274791274854%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e274789274847%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl274791274854%_))
                                (let ((_%$%e274792274857%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl274791274854%_))))
                                  (let ((_%$%hd274793274861%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e274792274857%_)))
                                        (_%$%tl274794274864%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e274792274857%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl274794274864%_))
                                        (let ((_%$%e274795274867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl274794274864%_))))
                                          (let ((_%$%hd274796274871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e274795274867%_)))
                                                (_%$%tl274797274874%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e274795274867%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl274797274874%_))
                                                (_%$%loop274779274826%_
                                                 _%$%lp-tl274782274844%_
                                                 (cons _%$%hd274796274871%_
                                                       _%$%symbol274783274833%_)
                                                 (cons _%$%hd274793274861%_
                                                       _%$%method274784274834%_)
                                                 (cons _%$%hd274790274851%_
                                                       _%$%type-t274785274835%_))
                                                (_%$%g274768274803%_
                                                 _%$%g274769274807%_))))
                                        (_%$%g274768274803%_
                                         _%$%g274769274807%_))))
                                (_%$%g274768274803%_ _%$%g274769274807%_))))
                        (_%$%g274768274803%_ _%$%g274769274807%_))))
                (let ((_%$%symbol274786274877%_
                       (reverse _%$%symbol274783274833%_))
                      (_%$%method274787274879%_
                       (reverse _%$%method274784274834%_))
                      (_%$%type-t274788274880%_
                       (reverse _%$%type-t274785274835%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%symbol274786274877%_
                             _%$%method274787274879%_
                             _%$%type-t274788274880%_))
                          (let ((__tmp280789
                                 (lambda (_%$%g274901274906%_
                                          _%$%g274902274909%_
                                          _%$%g274903274911%_
                                          _%$%g274904274913%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-method))
                                               (cons _%$%g274903274911%_
                                                     (cons _%$%g274902274909%_
                                                           (cons _%$%g274901274906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%$%g274904274913%_))))
                            (declare (not safe))
                            (__foldr*
                             __tmp280789
                             '()
                             _%$%symbol274786274877%_
                             _%$%method274787274879%_
                             _%$%type-t274788274880%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop274779274826%_
                                           _%$%target274776274820%_
                                           '()
                                           '()
                                           '()))
                                        (_%$%g274768274803%_
                                         _%$%g274769274807%_)))))
                              (_%$%g274768274803%_ _%$%g274769274807%_))))
                      (_%$%g274768274803%_ _%$%g274769274807%_)))))
          (_%$%g274767274916%_ _%$stx274764%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx274921%_)
        (let* ((_%$%g274925274958%_
                (lambda (_%$%g274926274954%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g274926274954%_))))
               (_%$%g274924275068%_
                (lambda (_%$%g274926274962%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g274926274962%_))
                      (let ((_%$%e274930274965%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g274926274962%_))))
                        (let ((_%$%hd274931274969%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e274930274965%_)))
                              (_%$%tl274932274972%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e274930274965%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl274932274972%_))
                              (let ((_%$%e274933274975%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl274932274972%_))))
                                (let ((_%$%hd274934274979%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e274933274975%_)))
                                      (_%$%tl274935274982%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e274933274975%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl274935274982%_))
                                      (let ((_g280790_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl274935274982%_
                                                '0))))
                                        (begin
                                          (let ((_g280791_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g280790_)
                                                       (##values-length
                                                        _g280790_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g280791_ 2)))
                                                (error "Context expects 2 values"
                                                       _g280791_)))
                                          (let ((_%$%target274936274985%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g280790_ 0)))
                                                (_%$%tl274938274988%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g280790_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl274938274988%_))
                                                (letrec ((_%$%loop274939274991%_
                                                          (lambda (_%$%hd274937274995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%symbol274943274998%_
                           _%$%method274944274999%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd274937274995%_))
                        (let ((_%$%e274940275001%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd274937274995%_))))
                          (let ((_%$%lp-hd274941275005%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e274940275001%_)))
                                (_%$%lp-tl274942275008%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e274940275001%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd274941275005%_))
                                (let ((_%$%e274947275011%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e
                                          _%$%lp-hd274941275005%_))))
                                  (let ((_%$%hd274948275015%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e274947275011%_)))
                                        (_%$%tl274949275018%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e274947275011%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl274949275018%_))
                                        (let ((_%$%e274950275021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl274949275018%_))))
                                          (let ((_%$%hd274951275025%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e274950275021%_)))
                                                (_%$%tl274952275028%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e274950275021%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl274952275028%_))
                                                (_%$%loop274939274991%_
                                                 _%$%lp-tl274942275008%_
                                                 (cons _%$%hd274951275025%_
                                                       _%$%symbol274943274998%_)
                                                 (cons _%$%hd274948275015%_
                                                       _%$%method274944274999%_))
                                                (_%$%g274925274958%_
                                                 _%$%g274926274962%_))))
                                        (_%$%g274925274958%_
                                         _%$%g274926274962%_))))
                                (_%$%g274925274958%_ _%$%g274926274962%_))))
                        (let ((_%$%symbol274945275031%_
                               (reverse _%$%symbol274943274998%_))
                              (_%$%method274946275033%_
                               (reverse _%$%method274944274999%_)))
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'begin))
                                (begin
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-check-splice-targets
                                     _%$%symbol274945275031%_
                                     _%$%method274946275033%_))
                                  (let ((__tmp280792
                                         (lambda (_%$%g275056275060%_
                                                  _%$%g275057275063%_
                                                  _%$%g275058275065%_)
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method))
                                                       (cons _%$%hd274934274979%_
                                                             (cons _%$%g275057275063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g275056275060%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%g275058275065%_))))
                                    (declare (not safe))
                                    (foldr__1
                                     __tmp280792
                                     '()
                                     _%$%symbol274945275031%_
                                     _%$%method274946275033%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop274939274991%_
                                                   _%$%target274936274985%_
                                                   '()
                                                   '()))
                                                (_%$%g274925274958%_
                                                 _%$%g274926274962%_)))))
                                      (_%$%g274925274958%_
                                       _%$%g274926274962%_))))
                              (_%$%g274925274958%_ _%$%g274926274962%_))))
                      (_%$%g274925274958%_ _%$%g274926274962%_)))))
          (_%$%g274924275068%_ _%$stx274921%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx275073%_)
        (let* ((_%$%g275077275091%_
                (lambda (_%$%g275078275087%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275078275087%_))))
               (_%$%g275076275132%_
                (lambda (_%$%g275078275095%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275078275095%_))
                      (let ((_%$%e275080275098%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275078275095%_))))
                        (let ((_%$%hd275081275102%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275080275098%_)))
                              (_%$%tl275082275105%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275080275098%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275082275105%_))
                              (let ((_%$%e275083275108%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275082275105%_))))
                                (let ((_%$%hd275084275112%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275083275108%_)))
                                      (_%$%tl275085275115%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275083275108%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl275085275115%_))
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
                                                        (cons _%$%hd275084275112%_
                                                              '()))
                                                  '()))
                                      (_%$%g275077275091%_
                                       _%$%g275078275095%_))))
                              (_%$%g275077275091%_ _%$%g275078275095%_))))
                      (_%$%g275077275091%_ _%$%g275078275095%_)))))
          (_%$%g275076275132%_ _%$stx275073%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx275136%_)
        (let* ((_%$%g275140275194%_
                (lambda (_%$%g275141275190%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275141275190%_))))
               (_%$%g275139275375%_
                (lambda (_%$%g275141275198%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275141275198%_))
                      (let ((_%$%e275153275201%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275141275198%_))))
                        (let ((_%$%hd275154275205%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275153275201%_)))
                              (_%$%tl275155275208%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275153275201%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275155275208%_))
                              (let ((_%$%e275156275211%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275155275208%_))))
                                (let ((_%$%hd275157275215%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275156275211%_)))
                                      (_%$%tl275158275218%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275156275211%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl275158275218%_))
                                      (let ((_%$%e275159275221%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl275158275218%_))))
                                        (let ((_%$%hd275160275225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275159275221%_)))
                                              (_%$%tl275161275228%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275159275221%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl275161275228%_))
                                              (let ((_%$%e275162275231%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl275161275228%_))))
                                                (let ((_%$%hd275163275235%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e275162275231%_)))
                                                      (_%$%tl275164275238%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e275162275231%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl275164275238%_))
                                                      (let ((_%$%e275165275241%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl275164275238%_))))
                (let ((_%$%hd275166275245%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e275165275241%_)))
                      (_%$%tl275167275248%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e275165275241%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl275167275248%_))
                      (let ((_%$%e275168275251%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl275167275248%_))))
                        (let ((_%$%hd275169275255%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275168275251%_)))
                              (_%$%tl275170275258%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275168275251%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275170275258%_))
                              (let ((_%$%e275171275261%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275170275258%_))))
                                (let ((_%$%hd275172275265%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275171275261%_)))
                                      (_%$%tl275173275268%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275171275261%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl275173275268%_))
                                      (let ((_%$%e275174275271%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl275173275268%_))))
                                        (let ((_%$%hd275175275275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275174275271%_)))
                                              (_%$%tl275176275278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275174275271%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl275176275278%_))
                                              (let ((_%$%e275177275281%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl275176275278%_))))
                                                (let ((_%$%hd275178275285%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e275177275281%_)))
                                                      (_%$%tl275179275288%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e275177275281%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl275179275288%_))
                                                      (let ((_%$%e275180275291%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl275179275288%_))))
                (let ((_%$%hd275181275295%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e275180275291%_)))
                      (_%$%tl275182275298%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e275180275291%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl275182275298%_))
                      (let ((_%$%e275183275301%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl275182275298%_))))
                        (let ((_%$%hd275184275305%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275183275301%_)))
                              (_%$%tl275185275308%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275183275301%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275185275308%_))
                              (let ((_%$%e275186275311%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275185275308%_))))
                                (let ((_%$%hd275187275315%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275186275311%_)))
                                      (_%$%tl275188275318%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275186275311%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl275188275318%_))
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
                                                        (cons _%$%hd275157275215%_
                                                              '()))
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'quote))
                      (cons _%$%hd275160275225%_ '()))
                (cons (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd275163275235%_ '()))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%$%hd275166275245%_ '()))
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote))
                                        (cons _%$%hd275169275255%_ '()))
                                  (cons (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote))
                                              (cons _%$%hd275172275265%_ '()))
                                        (cons _%$%hd275175275275%_
                                              (cons _%$%hd275178275285%_
                                                    (cons _%$%hd275181275295%_
                                                          (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd275184275305%_ '()))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd275187275315%_ '()))
                              '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g275140275194%_
                                       _%$%g275141275198%_))))
                              (_%$%g275140275194%_ _%$%g275141275198%_))))
                      (_%$%g275140275194%_ _%$%g275141275198%_))))
              (_%$%g275140275194%_ _%$%g275141275198%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g275140275194%_
                                               _%$%g275141275198%_))))
                                      (_%$%g275140275194%_
                                       _%$%g275141275198%_))))
                              (_%$%g275140275194%_ _%$%g275141275198%_))))
                      (_%$%g275140275194%_ _%$%g275141275198%_))))
              (_%$%g275140275194%_ _%$%g275141275198%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g275140275194%_
                                               _%$%g275141275198%_))))
                                      (_%$%g275140275194%_
                                       _%$%g275141275198%_))))
                              (_%$%g275140275194%_ _%$%g275141275198%_))))
                      (_%$%g275140275194%_ _%$%g275141275198%_)))))
          (_%$%g275139275375%_ _%$stx275136%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx275379%_)
        (let* ((_%$%g275383275397%_
                (lambda (_%$%g275384275393%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275384275393%_))))
               (_%$%g275382275438%_
                (lambda (_%$%g275384275401%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275384275401%_))
                      (let ((_%$%e275386275404%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275384275401%_))))
                        (let ((_%$%hd275387275408%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275386275404%_)))
                              (_%$%tl275388275411%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275386275404%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275388275411%_))
                              (let ((_%$%e275389275414%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275388275411%_))))
                                (let ((_%$%hd275390275418%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275389275414%_)))
                                      (_%$%tl275391275421%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275389275414%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl275391275421%_))
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
                                                        (cons _%$%hd275390275418%_
                                                              '()))
                                                  '()))
                                      (_%$%g275383275397%_
                                       _%$%g275384275401%_))))
                              (_%$%g275383275397%_ _%$%g275384275401%_))))
                      (_%$%g275383275397%_ _%$%g275384275401%_)))))
          (_%$%g275382275438%_ _%$stx275379%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx275442%_)
        (let* ((_%$%g275446275460%_
                (lambda (_%$%g275447275456%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275447275456%_))))
               (_%$%g275445275501%_
                (lambda (_%$%g275447275464%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275447275464%_))
                      (let ((_%$%e275449275467%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275447275464%_))))
                        (let ((_%$%hd275450275471%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275449275467%_)))
                              (_%$%tl275451275474%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275449275467%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275451275474%_))
                              (let ((_%$%e275452275477%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275451275474%_))))
                                (let ((_%$%hd275453275481%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275452275477%_)))
                                      (_%$%tl275454275484%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275452275477%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl275454275484%_))
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
                                                        (cons _%$%hd275453275481%_
                                                              '()))
                                                  '()))
                                      (_%$%g275446275460%_
                                       _%$%g275447275464%_))))
                              (_%$%g275446275460%_ _%$%g275447275464%_))))
                      (_%$%g275446275460%_ _%$%g275447275464%_)))))
          (_%$%g275445275501%_ _%$stx275442%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx275505%_)
        (let* ((_%$%g275509275531%_
                (lambda (_%$%g275510275527%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275510275527%_))))
               (_%$%g275508275600%_
                (lambda (_%$%g275510275535%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275510275535%_))
                      (let ((_%$%e275514275538%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275510275535%_))))
                        (let ((_%$%hd275515275542%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275514275538%_)))
                              (_%$%tl275516275545%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275514275538%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275516275545%_))
                              (let ((_%$%e275517275548%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275516275545%_))))
                                (let ((_%$%hd275518275552%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275517275548%_)))
                                      (_%$%tl275519275555%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275517275548%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl275519275555%_))
                                      (let ((_%$%e275520275558%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl275519275555%_))))
                                        (let ((_%$%hd275521275562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275520275558%_)))
                                              (_%$%tl275522275565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275520275558%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl275522275565%_))
                                              (let ((_%$%e275523275568%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl275522275565%_))))
                                                (let ((_%$%hd275524275572%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e275523275568%_)))
                                                      (_%$%tl275525275575%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e275523275568%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl275525275575%_))
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
                                (cons _%$%hd275518275552%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd275521275562%_ '()))
                                (cons _%$%hd275524275572%_ '()))))
              (_%$%g275509275531%_ _%$%g275510275535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g275509275531%_
                                               _%$%g275510275535%_))))
                                      (_%$%g275509275531%_
                                       _%$%g275510275535%_))))
                              (_%$%g275509275531%_ _%$%g275510275535%_))))
                      (_%$%g275509275531%_ _%$%g275510275535%_)))))
          (_%$%g275508275600%_ _%$stx275505%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx275604%_)
        (let* ((_%$%g275608275630%_
                (lambda (_%$%g275609275626%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275609275626%_))))
               (_%$%g275607275699%_
                (lambda (_%$%g275609275634%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275609275634%_))
                      (let ((_%$%e275613275637%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275609275634%_))))
                        (let ((_%$%hd275614275641%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275613275637%_)))
                              (_%$%tl275615275644%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275613275637%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275615275644%_))
                              (let ((_%$%e275616275647%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275615275644%_))))
                                (let ((_%$%hd275617275651%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275616275647%_)))
                                      (_%$%tl275618275654%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275616275647%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl275618275654%_))
                                      (let ((_%$%e275619275657%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl275618275654%_))))
                                        (let ((_%$%hd275620275661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275619275657%_)))
                                              (_%$%tl275621275664%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275619275657%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl275621275664%_))
                                              (let ((_%$%e275622275667%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl275621275664%_))))
                                                (let ((_%$%hd275623275671%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e275622275667%_)))
                                                      (_%$%tl275624275674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e275622275667%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl275624275674%_))
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
                                (cons _%$%hd275617275651%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd275620275661%_ '()))
                                (cons _%$%hd275623275671%_ '()))))
              (_%$%g275608275630%_ _%$%g275609275634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g275608275630%_
                                               _%$%g275609275634%_))))
                                      (_%$%g275608275630%_
                                       _%$%g275609275634%_))))
                              (_%$%g275608275630%_ _%$%g275609275634%_))))
                      (_%$%g275608275630%_ _%$%g275609275634%_)))))
          (_%$%g275607275699%_ _%$stx275604%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx275703%_)
        (let* ((_%$%g275707275721%_
                (lambda (_%$%g275708275717%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275708275717%_))))
               (_%$%g275706275762%_
                (lambda (_%$%g275708275725%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275708275725%_))
                      (let ((_%$%e275710275728%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275708275725%_))))
                        (let ((_%$%hd275711275732%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275710275728%_)))
                              (_%$%tl275712275735%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275710275728%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275712275735%_))
                              (let ((_%$%e275713275738%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275712275735%_))))
                                (let ((_%$%hd275714275742%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275713275738%_)))
                                      (_%$%tl275715275745%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275713275738%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl275715275745%_))
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
                                                        (cons _%$%hd275714275742%_
                                                              '()))
                                                  '()))
                                      (_%$%g275707275721%_
                                       _%$%g275708275725%_))))
                              (_%$%g275707275721%_ _%$%g275708275725%_))))
                      (_%$%g275707275721%_ _%$%g275708275725%_)))))
          (_%$%g275706275762%_ _%$stx275703%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx275766%_)
        (let* ((_%$%g275770275788%_
                (lambda (_%$%g275771275784%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g275771275784%_))))
               (_%$%g275769275843%_
                (lambda (_%$%g275771275792%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g275771275792%_))
                      (let ((_%$%e275774275795%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g275771275792%_))))
                        (let ((_%$%hd275775275799%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275774275795%_)))
                              (_%$%tl275776275802%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275774275795%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl275776275802%_))
                              (let ((_%$%e275777275805%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl275776275802%_))))
                                (let ((_%$%hd275778275809%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e275777275805%_)))
                                      (_%$%tl275779275812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e275777275805%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl275779275812%_))
                                      (let ((_%$%e275780275815%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl275779275812%_))))
                                        (let ((_%$%hd275781275819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e275780275815%_)))
                                              (_%$%tl275782275822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e275780275815%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl275782275822%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!interface))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd275778275809%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd275781275819%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g275770275788%_
                                               _%$%g275771275792%_))))
                                      (_%$%g275770275788%_
                                       _%$%g275771275792%_))))
                              (_%$%g275770275788%_ _%$%g275771275792%_))))
                      (_%$%g275770275788%_ _%$%g275771275792%_)))))
          (_%$%g275769275843%_ _%$stx275766%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx275847%_)
        (let* ((_%__stx280163280164%_ _%$stx275847%_)
               (_%$%g275854275915%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx280163280164%_)))))
          (let ((_%__kont280166280167%_
                 (lambda (_%$%g275856276153%_ _%$%g275857276155%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g275857276155%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g275856276153%_ '()))
                                     '())))))
                (_%__kont280168280169%_
                 (lambda (_%$%g275867276092%_
                          _%$%g275868276094%_
                          _%$%g275869276095%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g275869276095%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g275868276094%_ '()))
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
                                 (cons _%$%g275867276092%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont280170280171%_
                 (lambda (_%$%g275886276016%_ _%$%g275887276018%_)
                   (cons _%$%g275887276018%_
                         (cons _%$%g275886276016%_ (cons '#f '())))))
                (_%__kont280172280173%_
                 (lambda (_%$%g275894275966%_
                          _%$%g275895275968%_
                          _%$%g275896275969%_)
                   (cons _%$%g275896275969%_
                         (cons _%$%g275895275968%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%$%g275894275966%_
                                                 '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx280163280164%_))
                (let ((_%$%e275858276123%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx280163280164%_))))
                  (let ((_%$%tl275860276130%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e275858276123%_)))
                        (_%$%hd275859276127%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e275858276123%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl275860276130%_))
                        (let ((_%$%e275861276133%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl275860276130%_))))
                          (let ((_%$%tl275863276140%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e275861276133%_)))
                                (_%$%hd275862276137%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e275861276133%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl275863276140%_))
                                (let ((_%$%e275864276143%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl275863276140%_))))
                                  (let ((_%$%tl275866276150%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e275864276143%_)))
                                        (_%$%hd275865276147%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e275864276143%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl275866276150%_))
                                        (_%__kont280166280167%_
                                         _%$%hd275865276147%_
                                         _%$%hd275862276137%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl275866276150%_))
                                            (let ((_%$%e275879276068%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl275866276150%_))))
                                              (let ((_%$%tl275881276075%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e275879276068%_)))
                                                    (_%$%hd275880276072%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e275879276068%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd275880276072%_))
                                                    (let ((_%$%e275882276078%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd275880276072%_))))
                                                      (if (equal? _%$%e275882276078%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl275881276075%_))
                      (let ((_%$%e275883276082%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl275881276075%_))))
                        (let ((_%$%tl275885276089%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e275883276082%_)))
                              (_%$%hd275884276086%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e275883276082%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl275885276089%_))
                              (_%__kont280168280169%_
                               _%$%hd275884276086%_
                               _%$%hd275865276147%_
                               _%$%hd275862276137%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%$%hd275865276147%_))
                                  (let ((_%$%e275906275952%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd275865276147%_))))
                                    (declare (not safe))
                                    (_%$%g275854275915%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g275854275915%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd275865276147%_))
                          (let ((_%$%e275906275952%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd275865276147%_))))
                            (if (equal? _%$%e275906275952%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl275881276075%_))
                                    (_%__kont280172280173%_
                                     _%$%hd275880276072%_
                                     _%$%hd275862276137%_
                                     _%$%hd275859276127%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g275854275915%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g275854275915%_))))
                          (let () (declare (not safe)) (_%$%g275854275915%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd275865276147%_))
                      (let ((_%$%e275906275952%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd275865276147%_))))
                        (if (equal? _%$%e275906275952%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl275881276075%_))
                                (_%__kont280172280173%_
                                 _%$%hd275880276072%_
                                 _%$%hd275862276137%_
                                 _%$%hd275859276127%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g275854275915%_)))
                            (let ()
                              (declare (not safe))
                              (_%$%g275854275915%_))))
                      (let () (declare (not safe)) (_%$%g275854275915%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%$%hd275865276147%_))
                                                        (let ((_%$%e275906275952%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd275865276147%_))))
                  (if (equal? _%$%e275906275952%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl275881276075%_))
                          (_%__kont280172280173%_
                           _%$%hd275880276072%_
                           _%$%hd275862276137%_
                           _%$%hd275859276127%_)
                          (let () (declare (not safe)) (_%$%g275854275915%_)))
                      (let () (declare (not safe)) (_%$%g275854275915%_))))
                (let () (declare (not safe)) (_%$%g275854275915%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%$%hd275865276147%_))
                                                (let ((_%$%e275906275952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd275865276147%_))))
                                                  (declare (not safe))
                                                  (_%$%g275854275915%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g275854275915%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl275863276140%_))
                                    (_%__kont280170280171%_
                                     _%$%hd275862276137%_
                                     _%$%hd275859276127%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g275854275915%_))))))
                        (let () (declare (not safe)) (_%$%g275854275915%_)))))
                (let () (declare (not safe)) (_%$%g275854275915%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx276174%_)
        (let* ((_%$%g276178276207%_
                (lambda (_%$%g276179276203%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276179276203%_))))
               (_%$%g276177276312%_
                (lambda (_%$%g276179276211%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276179276211%_))
                      (let ((_%$%e276181276214%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276179276211%_))))
                        (let ((_%$%hd276182276218%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276181276214%_)))
                              (_%$%tl276183276221%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276181276214%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl276183276221%_))
                              (let ((_g280793_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl276183276221%_
                                        '0))))
                                (begin
                                  (let ((_g280794_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g280793_)
                                               (##values-length _g280793_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g280794_ 2)))
                                        (error "Context expects 2 values"
                                               _g280794_)))
                                  (let ((_%$%target276184276224%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280793_ 0)))
                                        (_%$%tl276186276227%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280793_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl276186276227%_))
                                        (letrec ((_%$%loop276187276230%_
                                                  (lambda (_%$%hd276185276234%_
                                                           _%$%clause276191276237%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd276185276234%_))
                                                        (let ((_%$%e276188276239%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd276185276234%_))))
                  (let ((_%$%lp-hd276189276243%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e276188276239%_)))
                        (_%$%lp-tl276190276246%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e276188276239%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%lp-hd276189276243%_))
                        (let ((_g280795_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%$%lp-hd276189276243%_
                                  '0))))
                          (begin
                            (let ((_g280796_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g280795_)
                                         (##values-length _g280795_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g280796_ 2)))
                                  (error "Context expects 2 values"
                                         _g280796_)))
                            (let ((_%$%target276193276249%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g280795_ 0)))
                                  (_%$%tl276195276252%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g280795_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl276195276252%_))
                                  (letrec ((_%$%loop276196276255%_
                                            (lambda (_%$%hd276194276259%_
                                                     _%$%clause276200276262%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd276194276259%_))
                                                  (let ((_%$%e276197276264%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd276194276259%_))))
                                                    (let ((_%$%lp-hd276198276268%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e276197276264%_)))
                                                          (_%$%lp-tl276199276271%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e276197276264%_))))
                                                      (_%$%loop276196276255%_
                                                       _%$%lp-tl276199276271%_
                                                       (cons _%$%lp-hd276198276268%_
                                                             _%$%clause276200276262%_))))
                                                  (let ((_%$%clause276201276274%_
                                                         (reverse _%$%clause276200276262%_)))
                                                    (_%$%loop276187276230%_
                                                     _%$%lp-tl276190276246%_
                                                     (cons _%$%clause276201276274%_
                                                           _%$%clause276191276237%_)))))))
                                    (_%$%loop276196276255%_
                                     _%$%target276193276249%_
                                     '()))
                                  (_%$%g276178276207%_ _%$%g276179276211%_)))))
                        (_%$%g276178276207%_ _%$%g276179276211%_))))
                (let ((_%$%clause276192276277%_
                       (reverse _%$%clause276191276237%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f '@list))
                                    (let ((__tmp280797
                                           (lambda (_%$%g276295276300%_
                                                    _%$%g276296276303%_)
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '@lambda))
                                                         (let ((__tmp280798
                                                                (lambda (_%$%g276297276306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g276298276309%_)
                          (cons _%$%g276297276306%_ _%$%g276298276309%_))))
                   (declare (not safe))
                   (foldr__0 __tmp280798 '() _%$%g276295276300%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%g276296276303%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp280797
                                       '()
                                       _%$%clause276192276277%_)))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop276187276230%_
                                           _%$%target276184276224%_
                                           '()))
                                        (_%$%g276178276207%_
                                         _%$%g276179276211%_)))))
                              (_%$%g276178276207%_ _%$%g276179276211%_))))
                      (_%$%g276178276207%_ _%$%g276179276211%_)))))
          (_%$%g276177276312%_ _%$stx276174%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx276318%_)
        (let* ((_%$%g276322276340%_
                (lambda (_%$%g276323276336%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276323276336%_))))
               (_%$%g276321276395%_
                (lambda (_%$%g276323276344%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276323276344%_))
                      (let ((_%$%e276326276347%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276323276344%_))))
                        (let ((_%$%hd276327276351%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276326276347%_)))
                              (_%$%tl276328276354%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276326276347%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276328276354%_))
                              (let ((_%$%e276329276357%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276328276354%_))))
                                (let ((_%$%hd276330276361%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276329276357%_)))
                                      (_%$%tl276331276364%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276329276357%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl276331276364%_))
                                      (let ((_%$%e276332276367%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl276331276364%_))))
                                        (let ((_%$%hd276333276371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276332276367%_)))
                                              (_%$%tl276334276374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276332276367%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl276334276374%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd276330276361%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd276333276371%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g276322276340%_
                                               _%$%g276323276344%_))))
                                      (_%$%g276322276340%_
                                       _%$%g276323276344%_))))
                              (_%$%g276322276340%_ _%$%g276323276344%_))))
                      (_%$%g276322276340%_ _%$%g276323276344%_)))))
          (_%$%g276321276395%_ _%$stx276318%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx276399%_)
        (let* ((_%$%g276403276421%_
                (lambda (_%$%g276404276417%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276404276417%_))))
               (_%$%g276402276476%_
                (lambda (_%$%g276404276425%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276404276425%_))
                      (let ((_%$%e276407276428%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276404276425%_))))
                        (let ((_%$%hd276408276432%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276407276428%_)))
                              (_%$%tl276409276435%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276407276428%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276409276435%_))
                              (let ((_%$%e276410276438%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276409276435%_))))
                                (let ((_%$%hd276411276442%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276410276438%_)))
                                      (_%$%tl276412276445%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276410276438%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl276412276445%_))
                                      (let ((_%$%e276413276448%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl276412276445%_))))
                                        (let ((_%$%hd276414276452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276413276448%_)))
                                              (_%$%tl276415276455%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276413276448%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl276415276455%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda-primary))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd276411276442%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd276414276452%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g276403276421%_
                                               _%$%g276404276425%_))))
                                      (_%$%g276403276421%_
                                       _%$%g276404276425%_))))
                              (_%$%g276403276421%_ _%$%g276404276425%_))))
                      (_%$%g276403276421%_ _%$%g276404276425%_)))))
          (_%$%g276402276476%_ _%$stx276399%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx276480%_)
        (let* ((_%$%g276484276513%_
                (lambda (_%$%g276485276509%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276485276509%_))))
               (_%$%g276483276609%_
                (lambda (_%$%g276485276517%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276485276517%_))
                      (let ((_%$%e276488276520%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276485276517%_))))
                        (let ((_%$%hd276489276524%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276488276520%_)))
                              (_%$%tl276490276527%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276488276520%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl276490276527%_))
                              (let ((_g280799_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl276490276527%_
                                        '0))))
                                (begin
                                  (let ((_g280800_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g280799_)
                                               (##values-length _g280799_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g280800_ 2)))
                                        (error "Context expects 2 values"
                                               _g280800_)))
                                  (let ((_%$%target276491276530%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280799_ 0)))
                                        (_%$%tl276493276533%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280799_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl276493276533%_))
                                        (letrec ((_%$%loop276494276536%_
                                                  (lambda (_%$%hd276492276540%_
                                                           _%$%rule276498276543%_
                                                           _%$%proc276499276544%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd276492276540%_))
                                                        (let ((_%$%e276495276546%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd276492276540%_))))
                  (let ((_%$%lp-hd276496276550%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e276495276546%_)))
                        (_%$%lp-tl276497276553%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e276495276546%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd276496276550%_))
                        (let ((_%$%e276502276556%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd276496276550%_))))
                          (let ((_%$%hd276503276560%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e276502276556%_)))
                                (_%$%tl276504276563%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e276502276556%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl276504276563%_))
                                (let ((_%$%e276505276566%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl276504276563%_))))
                                  (let ((_%$%hd276506276570%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e276505276566%_)))
                                        (_%$%tl276507276573%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e276505276566%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl276507276573%_))
                                        (_%$%loop276494276536%_
                                         _%$%lp-tl276497276553%_
                                         (cons _%$%hd276506276570%_
                                               _%$%rule276498276543%_)
                                         (cons _%$%hd276503276560%_
                                               _%$%proc276499276544%_))
                                        (_%$%g276484276513%_
                                         _%$%g276485276517%_))))
                                (_%$%g276484276513%_ _%$%g276485276517%_))))
                        (_%$%g276484276513%_ _%$%g276485276517%_))))
                (let ((_%$%rule276500276576%_ (reverse _%$%rule276498276543%_))
                      (_%$%proc276501276578%_
                       (reverse _%$%proc276499276544%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%rule276500276576%_
                             _%$%proc276501276578%_))
                          (let ((__tmp280801
                                 (lambda (_%$%g276597276601%_
                                          _%$%g276598276604%_
                                          _%$%g276599276606%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-inline-rule!))
                                               (cons _%$%g276598276604%_
                                                     (cons _%$%g276597276601%_
                                                           '())))
                                         _%$%g276599276606%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp280801
                             '()
                             _%$%rule276500276576%_
                             _%$%proc276501276578%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop276494276536%_
                                           _%$%target276491276530%_
                                           '()
                                           '()))
                                        (_%$%g276484276513%_
                                         _%$%g276485276517%_)))))
                              (_%$%g276484276513%_ _%$%g276485276517%_))))
                      (_%$%g276484276513%_ _%$%g276485276517%_)))))
          (_%$%g276483276609%_ _%$stx276480%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx276614%_)
        (let* ((_%$%g276618276636%_
                (lambda (_%$%g276619276632%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276619276632%_))))
               (_%$%g276617276691%_
                (lambda (_%$%g276619276640%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276619276640%_))
                      (let ((_%$%e276622276643%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276619276640%_))))
                        (let ((_%$%hd276623276647%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276622276643%_)))
                              (_%$%tl276624276650%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276622276643%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276624276650%_))
                              (let ((_%$%e276625276653%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276624276650%_))))
                                (let ((_%$%hd276626276657%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276625276653%_)))
                                      (_%$%tl276627276660%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276625276653%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl276627276660%_))
                                      (let ((_%$%e276628276663%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl276627276660%_))))
                                        (let ((_%$%hd276629276667%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276628276663%_)))
                                              (_%$%tl276630276670%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276628276663%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl276630276670%_))
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
                                                (cons _%$%hd276626276657%_
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
              (cons _%$%hd276629276667%_ '())))
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
                                (cons _%$%hd276626276657%_ '()))
                          (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g276618276636%_
                                               _%$%g276619276640%_))))
                                      (_%$%g276618276636%_
                                       _%$%g276619276640%_))))
                              (_%$%g276618276636%_ _%$%g276619276640%_))))
                      (_%$%g276618276636%_ _%$%g276619276640%_)))))
          (_%$%g276617276691%_ _%$stx276614%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx276695%_)
        (let* ((_%__stx280281280282%_ _%$stx276695%_)
               (_%$%g276700276725%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx280281280282%_)))))
          (let ((_%__kont280284280285%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont280286280287%_
                 (lambda (_%$%g276705276772%_
                          _%$%g276706276774%_
                          _%$%g276707276775%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%$%g276707276775%_
                                           (cons _%$%g276706276774%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%$%g276705276772%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx280281280282%_))
                (let ((_%$%e276702276801%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx280281280282%_))))
                  (let ((_%$%tl276704276808%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e276702276801%_)))
                        (_%$%hd276703276805%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e276702276801%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl276704276808%_))
                        (_%__kont280284280285%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl276704276808%_))
                            (let ((_%$%e276711276742%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl276704276808%_))))
                              (let ((_%$%tl276713276749%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e276711276742%_)))
                                    (_%$%hd276712276746%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e276711276742%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd276712276746%_))
                                    (let ((_%$%e276714276752%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd276712276746%_))))
                                      (let ((_%$%tl276716276759%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e276714276752%_)))
                                            (_%$%hd276715276756%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e276714276752%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl276716276759%_))
                                            (let ((_%$%e276717276762%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl276716276759%_))))
                                              (let ((_%$%tl276719276769%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e276717276762%_)))
                                                    (_%$%hd276718276766%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e276717276762%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl276719276769%_))
                                                    (_%__kont280286280287%_
                                                     _%$%tl276713276749%_
                                                     _%$%hd276718276766%_
                                                     _%$%hd276715276756%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g276700276725%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g276700276725%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g276700276725%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g276700276725%_))))))
                (let () (declare (not safe)) (_%$%g276700276725%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx276819%_)
        (let* ((_%__stx280325280326%_ _%$stx276819%_)
               (_%$%g276824276855%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx280325280326%_)))))
          (let ((_%__kont280328280329%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont280330280331%_
                 (lambda (_%$%g276829276920%_
                          _%$%g276830276922%_
                          _%$%g276831276923%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%$%g276831276923%_
                                           (let ((__tmp280802
                                                  (lambda (_%$%g276943276946%_
                                                           _%$%g276944276949%_)
                                                    (cons _%$%g276943276946%_
                                                          _%$%g276944276949%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp280802
                                              '()
                                              _%$%g276830276922%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%$%g276829276920%_)
                                     '()))))))
            (let ((_%__match280368280369%_
                   (lambda (_%$%e276832276862%_
                            _%$%hd276833276866%_
                            _%$%tl276834276869%_
                            _%$%e276835276872%_
                            _%$%hd276836276876%_
                            _%$%tl276837276879%_
                            _%$%e276838276882%_
                            _%$%hd276839276886%_
                            _%$%tl276840276889%_
                            _%__splice280332280333%_
                            _%$%target276841276892%_
                            _%$%tl276843276895%_)
                     (letrec ((_%$%loop276844276898%_
                               (lambda (_%$%hd276842276902%_
                                        _%$%sig276848276905%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd276842276902%_))
                                     (let ((_%$%e276845276907%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%hd276842276902%_))))
                                       (let ((_%$%lp-tl276847276914%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e276845276907%_)))
                                             (_%$%lp-hd276846276911%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e276845276907%_))))
                                         (_%$%loop276844276898%_
                                          _%$%lp-tl276847276914%_
                                          (cons _%$%lp-hd276846276911%_
                                                _%$%sig276848276905%_))))
                                     (let ((_%$%sig276849276917%_
                                            (reverse _%$%sig276848276905%_)))
                                       (_%__kont280330280331%_
                                        _%$%tl276837276879%_
                                        _%$%sig276849276917%_
                                        _%$%hd276839276886%_))))))
                       (_%$%loop276844276898%_
                        _%$%target276841276892%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx280325280326%_))
                  (let ((_%$%e276826276959%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx280325280326%_))))
                    (let ((_%$%tl276828276966%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e276826276959%_)))
                          (_%$%hd276827276963%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e276826276959%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl276828276966%_))
                          (_%__kont280328280329%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276828276966%_))
                              (let ((_%$%e276835276872%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276828276966%_))))
                                (let ((_%$%tl276837276879%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276835276872%_)))
                                      (_%$%hd276836276876%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276835276872%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd276836276876%_))
                                      (let ((_%$%e276838276882%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd276836276876%_))))
                                        (let ((_%$%tl276840276889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276838276882%_)))
                                              (_%$%hd276839276886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276838276882%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl276840276889%_))
                                              (let ((_%__splice280332280333%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl276840276889%_
                                                        '0))))
                                                (let ((_%$%tl276843276895%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice280332280333%_
                                                          '1)))
                                                      (_%$%target276841276892%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice280332280333%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl276843276895%_))
                                                      (_%__match280368280369%_
                                                       _%$%e276826276959%_
                                                       _%$%hd276827276963%_
                                                       _%$%tl276828276966%_
                                                       _%$%e276835276872%_
                                                       _%$%hd276836276876%_
                                                       _%$%tl276837276879%_
                                                       _%$%e276838276882%_
                                                       _%$%hd276839276886%_
                                                       _%$%tl276840276889%_
                                                       _%__splice280332280333%_
                                                       _%$%target276841276892%_
                                                       _%$%tl276843276895%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g276824276855%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g276824276855%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g276824276855%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g276824276855%_))))))
                  (let () (declare (not safe)) (_%$%g276824276855%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx276978%_)
        (let* ((_%__stx280371280372%_ _%$stx276978%_)
               (_%$%g276983277030%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx280371280372%_)))))
          (let ((_%__kont280374280375%_
                 (lambda (_%$%g276985277188%_ _%$%g276986277190%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%$%g276986277190%_
                               (let ((__tmp280803
                                      (lambda (_%$%g277210277213%_
                                               _%$%g277211277216%_)
                                        (cons _%$%g277210277213%_
                                              _%$%g277211277216%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp280803
                                  '()
                                  _%$%g276985277188%_))))))
                (_%__kont280378280379%_
                 (lambda (_%$%g277008277085%_ _%$%g277009277087%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%$%g277009277087%_
                               (let ((__tmp280804
                                      (lambda (_%$%g277104277107%_
                                               _%$%g277105277110%_)
                                        (cons _%$%g277104277107%_
                                              _%$%g277105277110%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp280804
                                  '()
                                  _%$%g277008277085%_)))))))
            (let* ((_%__match280438280439%_
                    (lambda (_%$%e277010277037%_
                             _%$%hd277011277041%_
                             _%$%tl277012277044%_
                             _%$%e277013277047%_
                             _%$%hd277014277051%_
                             _%$%tl277015277054%_
                             _%__splice280380280381%_
                             _%$%target277016277057%_
                             _%$%tl277018277060%_)
                      (letrec ((_%$%loop277019277063%_
                                (lambda (_%$%hd277017277067%_
                                         _%$%sig277023277070%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd277017277067%_))
                                      (let ((_%$%e277020277072%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd277017277067%_))))
                                        (let ((_%$%lp-tl277022277079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e277020277072%_)))
                                              (_%$%lp-hd277021277076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e277020277072%_))))
                                          (_%$%loop277019277063%_
                                           _%$%lp-tl277022277079%_
                                           (cons _%$%lp-hd277021277076%_
                                                 _%$%sig277023277070%_))))
                                      (let ((_%$%sig277024277082%_
                                             (reverse _%$%sig277023277070%_)))
                                        (_%__kont280378280379%_
                                         _%$%sig277024277082%_
                                         _%$%hd277014277051%_))))))
                        (_%$%loop277019277063%_
                         _%$%target277016277057%_
                         '()))))
                   (_%__match280430280431%_
                    (lambda (_%$%e277010277037%_
                             _%$%hd277011277041%_
                             _%$%tl277012277044%_
                             _%$%e277013277047%_
                             _%$%hd277014277051%_
                             _%$%tl277015277054%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl277015277054%_))
                          (let ((_%__splice280380280381%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl277015277054%_
                                    '0))))
                            (let ((_%$%tl277018277060%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice280380280381%_
                                      '1)))
                                  (_%$%target277016277057%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice280380280381%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl277018277060%_))
                                  (_%__match280438280439%_
                                   _%$%e277010277037%_
                                   _%$%hd277011277041%_
                                   _%$%tl277012277044%_
                                   _%$%e277013277047%_
                                   _%$%hd277014277051%_
                                   _%$%tl277015277054%_
                                   _%__splice280380280381%_
                                   _%$%target277016277057%_
                                   _%$%tl277018277060%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g276983277030%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g276983277030%_)))))
                   (_%__match280418280419%_
                    (lambda (_%$%e276987277120%_
                             _%$%hd276988277124%_
                             _%$%tl276989277127%_
                             _%$%e276990277130%_
                             _%$%hd276991277134%_
                             _%$%tl276992277137%_
                             _%$%e276993277140%_
                             _%$%hd276994277144%_
                             _%$%tl276995277147%_
                             _%$%e276996277150%_
                             _%$%hd276997277154%_
                             _%$%tl276998277157%_
                             _%__splice280376280377%_
                             _%$%target276999277160%_
                             _%$%tl277001277163%_)
                      (letrec ((_%$%loop277002277166%_
                                (lambda (_%$%hd277000277170%_
                                         _%$%sig277006277173%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd277000277170%_))
                                      (let ((_%$%e277003277175%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd277000277170%_))))
                                        (let ((_%$%lp-tl277005277182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e277003277175%_)))
                                              (_%$%lp-hd277004277179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e277003277175%_))))
                                          (_%$%loop277002277166%_
                                           _%$%lp-tl277005277182%_
                                           (cons _%$%lp-hd277004277179%_
                                                 _%$%sig277006277173%_))))
                                      (let ((_%$%sig277007277185%_
                                             (reverse _%$%sig277006277173%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl276995277147%_))
                                            (_%__kont280374280375%_
                                             _%$%sig277007277185%_
                                             _%$%hd276991277134%_)
                                            (_%__match280430280431%_
                                             _%$%e276987277120%_
                                             _%$%hd276988277124%_
                                             _%$%tl276989277127%_
                                             _%$%e276990277130%_
                                             _%$%hd276991277134%_
                                             _%$%tl276992277137%_)))))))
                        (_%$%loop277002277166%_
                         _%$%target276999277160%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx280371280372%_))
                  (let ((_%$%e276987277120%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx280371280372%_))))
                    (let ((_%$%tl276989277127%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e276987277120%_)))
                          (_%$%hd276988277124%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e276987277120%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl276989277127%_))
                          (let ((_%$%e276990277130%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl276989277127%_))))
                            (let ((_%$%tl276992277137%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e276990277130%_)))
                                  (_%$%hd276991277134%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e276990277130%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl276992277137%_))
                                  (let ((_%$%e276993277140%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl276992277137%_))))
                                    (let ((_%$%tl276995277147%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e276993277140%_)))
                                          (_%$%hd276994277144%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e276993277140%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%hd276994277144%_))
                                          (let ((_%$%e276996277150%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%hd276994277144%_))))
                                            (let ((_%$%tl276998277157%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e276996277150%_)))
                                                  (_%$%hd276997277154%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e276996277150%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd276997277154%_))
                                                  (if (let ((__tmp280805
                                                             |gxc[1]#_g280806_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp280805
                                                         _%$%hd276997277154%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%$%tl276998277157%_))
                                                          (let ((_%__splice280376280377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl276998277157%_
                            '0))))
                    (let ((_%$%tl277001277163%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice280376280377%_ '1)))
                          (_%$%target276999277160%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice280376280377%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl277001277163%_))
                          (_%__match280418280419%_
                           _%$%e276987277120%_
                           _%$%hd276988277124%_
                           _%$%tl276989277127%_
                           _%$%e276990277130%_
                           _%$%hd276991277134%_
                           _%$%tl276992277137%_
                           _%$%e276993277140%_
                           _%$%hd276994277144%_
                           _%$%tl276995277147%_
                           _%$%e276996277150%_
                           _%$%hd276997277154%_
                           _%$%tl276998277157%_
                           _%__splice280376280377%_
                           _%$%target276999277160%_
                           _%$%tl277001277163%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl276992277137%_))
                              (let ((_%__splice280380280381%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%$%tl276992277137%_
                                        '0))))
                                (let ((_%$%tl277018277060%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice280380280381%_
                                          '1)))
                                      (_%$%target277016277057%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice280380280381%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl277018277060%_))
                                      (_%__match280438280439%_
                                       _%$%e276987277120%_
                                       _%$%hd276988277124%_
                                       _%$%tl276989277127%_
                                       _%$%e276990277130%_
                                       _%$%hd276991277134%_
                                       _%$%tl276992277137%_
                                       _%__splice280380280381%_
                                       _%$%target277016277057%_
                                       _%$%tl277018277060%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g276983277030%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g276983277030%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl276992277137%_))
                      (let ((_%__splice280380280381%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl276992277137%_
                                '0))))
                        (let ((_%$%tl277018277060%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice280380280381%_ '1)))
                              (_%$%target277016277057%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice280380280381%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl277018277060%_))
                              (_%__match280438280439%_
                               _%$%e276987277120%_
                               _%$%hd276988277124%_
                               _%$%tl276989277127%_
                               _%$%e276990277130%_
                               _%$%hd276991277134%_
                               _%$%tl276992277137%_
                               _%__splice280380280381%_
                               _%$%target277016277057%_
                               _%$%tl277018277060%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g276983277030%_)))))
                      (let () (declare (not safe)) (_%$%g276983277030%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl276992277137%_))
                  (let ((_%__splice280380280381%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl276992277137%_
                            '0))))
                    (let ((_%$%tl277018277060%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice280380280381%_ '1)))
                          (_%$%target277016277057%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice280380280381%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl277018277060%_))
                          (_%__match280438280439%_
                           _%$%e276987277120%_
                           _%$%hd276988277124%_
                           _%$%tl276989277127%_
                           _%$%e276990277130%_
                           _%$%hd276991277134%_
                           _%$%tl276992277137%_
                           _%__splice280380280381%_
                           _%$%target277016277057%_
                           _%$%tl277018277060%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g276983277030%_)))))
                  (let () (declare (not safe)) (_%$%g276983277030%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl276992277137%_))
                                                      (let ((_%__splice280380280381%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl276992277137%_
                        '0))))
                (let ((_%$%tl277018277060%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice280380280381%_ '1)))
                      (_%$%target277016277057%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice280380280381%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl277018277060%_))
                      (_%__match280438280439%_
                       _%$%e276987277120%_
                       _%$%hd276988277124%_
                       _%$%tl276989277127%_
                       _%$%e276990277130%_
                       _%$%hd276991277134%_
                       _%$%tl276992277137%_
                       _%__splice280380280381%_
                       _%$%target277016277057%_
                       _%$%tl277018277060%_)
                      (let () (declare (not safe)) (_%$%g276983277030%_)))))
              (let () (declare (not safe)) (_%$%g276983277030%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl276992277137%_))
                                              (let ((_%__splice280380280381%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl276992277137%_
                                                        '0))))
                                                (let ((_%$%tl277018277060%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice280380280381%_
                                                          '1)))
                                                      (_%$%target277016277057%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice280380280381%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl277018277060%_))
                                                      (_%__match280438280439%_
                                                       _%$%e276987277120%_
                                                       _%$%hd276988277124%_
                                                       _%$%tl276989277127%_
                                                       _%$%e276990277130%_
                                                       _%$%hd276991277134%_
                                                       _%$%tl276992277137%_
                                                       _%__splice280380280381%_
                                                       _%$%target277016277057%_
                                                       _%$%tl277018277060%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g276983277030%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g276983277030%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl276992277137%_))
                                      (let ((_%__splice280380280381%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl276992277137%_
                                                '0))))
                                        (let ((_%$%tl277018277060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice280380280381%_
                                                  '1)))
                                              (_%$%target277016277057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice280380280381%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl277018277060%_))
                                              (_%__match280438280439%_
                                               _%$%e276987277120%_
                                               _%$%hd276988277124%_
                                               _%$%tl276989277127%_
                                               _%$%e276990277130%_
                                               _%$%hd276991277134%_
                                               _%$%tl276992277137%_
                                               _%__splice280380280381%_
                                               _%$%target277016277057%_
                                               _%$%tl277018277060%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g276983277030%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g276983277030%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g276983277030%_)))))
                  (let () (declare (not safe)) (_%$%g276983277030%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx278373%_ _%id278375%_)
        (let ((_%proc278379%_
               (let ((__tmp280807
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id278375%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp280807))))
          (if (procedure? _%proc278379%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx278373%_
                 _%id278375%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx278364%_ _%id278366%_)
        (let ((_%klass278370%_
               (let ((__tmp280808
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id278366%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp280808))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass278370%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx278364%_
                 _%id278366%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx277614%_ _%proc277616%_ _%sig277617%_)
        (letrec ((_%signature-arity277619%_
                  (lambda (_%args278296%_)
                    (let _%loop278299%_ ((_%rest278302%_ _%args278296%_)
                                         (_%count278304%_ '0))
                      (let* ((_%$%rest278305278316%_ _%rest278302%_)
                             (_%$%E278309278322%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%rest278305278316%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%$%K278312278353%_
                               (lambda (_%rest278350%_)
                                 (_%loop278299%_
                                  _%rest278350%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count278304%_ '1)))))
                              (_%$%K278311278342%_ (lambda () _%count278304%_))
                              (_%$%K278310278330%_
                               (lambda () (cons _%count278304%_ '()))))
                          (let ((_%$%try-match278307278346%_
                                 (lambda ()
                                   (if (null? _%$%rest278305278316%_)
                                       (_%$%K278311278342%_)
                                       (_%$%K278310278330%_)))))
                            (if (pair? _%$%rest278305278316%_)
                                (let* ((_%$%tl278314278357%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest278305278316%_)))
                                       (_%rest278361%_ _%$%tl278314278357%_))
                                  (_%$%K278312278353%_ _%rest278361%_))
                                (_%$%try-match278307278346%_))))))))
                 (_%make-signature277621%_
                  (lambda (_%args278178%_
                           _%return278180%_
                           _%effect278181%_
                           _%unchecked278182%_)
                    (let ((__tmp280809
                           (lambda (_%$%g278183278185%_)
                             (|gxc[1]#verify-class!|
                              _%ctx277614%_
                              _%$%g278183278185%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp280809 _%args278178%_))
                    (|gxc[1]#verify-class!| _%ctx277614%_ _%return278180%_)
                    (if _%unchecked278182%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx277614%_
                         _%unchecked278182%_)
                        '#!void)
                    (let ((_%arity278189%_
                           (_%signature-arity277619%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args278178%_)))))
                      (if _%effect278181%_
                          (let ((_%effect278192%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect278181%_))))
                            (if (and (list? _%effect278192%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect278192%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx277614%_
                                   _%proc277616%_
                                   _%effect278192%_))))
                          '#!void)
                      (cons _%arity278189%_
                            (cons (let* ((_%$%g278195278218%_
                                          (lambda (_%$%g278196278214%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g278196278214%_))))
                                         (_%$%g278194278292%_
                                          (lambda (_%$%g278196278222%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g278196278222%_))
                                                (let ((_%$%e278201278225%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%g278196278222%_))))
                                                  (let ((_%$%hd278202278229%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e278201278225%_)))
                                                        (_%$%tl278203278232%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e278201278225%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl278203278232%_))
                                                        (let ((_%$%e278204278235%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl278203278232%_))))
                  (let ((_%$%hd278205278239%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e278204278235%_)))
                        (_%$%tl278206278242%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e278204278235%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl278206278242%_))
                        (let ((_%$%e278207278245%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl278206278242%_))))
                          (let ((_%$%hd278208278249%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e278207278245%_)))
                                (_%$%tl278209278252%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e278207278245%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl278209278252%_))
                                (let ((_%$%e278210278255%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl278209278252%_))))
                                  (let ((_%$%hd278211278259%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e278210278255%_)))
                                        (_%$%tl278212278262%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e278210278255%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl278212278262%_))
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
                        (cons _%$%hd278202278229%_ '()))
                  (cons 'return:
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd278205278239%_ '()))
                              (cons 'effect:
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd278208278249%_
                                                      '()))
                                          (cons 'unchecked:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%$%hd278211278259%_
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
                                        (_%$%g278195278218%_
                                         _%$%g278196278222%_))))
                                (_%$%g278195278218%_ _%$%g278196278222%_))))
                        (_%$%g278195278218%_ _%$%g278196278222%_))))
                (_%$%g278195278218%_ _%$%g278196278222%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g278195278218%_
                                                 _%$%g278196278222%_)))))
                                    (_%$%g278194278292%_
                                     (list _%args278178%_
                                           _%return278180%_
                                           _%effect278181%_
                                           _%unchecked278182%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx277614%_ _%proc277616%_)
          (let* ((_%__stx280449280450%_ _%sig277617%_)
                 (_%$%g277628277731%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx280449280450%_)))))
            (let ((_%__kont280452280453%_
                   (lambda (_%$%g277630278159%_ _%$%g277631278161%_)
                     (_%make-signature277621%_
                      _%$%g277631278161%_
                      _%$%g277630278159%_
                      '#f
                      '#f)))
                  (_%__kont280454280455%_
                   (lambda (_%$%g277638278110%_
                            _%$%g277639278112%_
                            _%$%g277640278113%_)
                     (_%make-signature277621%_
                      _%$%g277640278113%_
                      _%$%g277639278112%_
                      _%$%g277638278110%_
                      '#f)))
                  (_%__kont280456280457%_
                   (lambda (_%$%g277654278034%_
                            _%$%g277655278036%_
                            _%$%g277656278037%_)
                     (_%make-signature277621%_
                      _%$%g277656278037%_
                      _%$%g277655278036%_
                      _%$%g277654278034%_
                      (let ((__tmp280810
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc277616%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp280810)))))
                  (_%__kont280458280459%_
                   (lambda (_%$%g277674277940%_
                            _%$%g277675277942%_
                            _%$%g277676277943%_
                            _%$%g277677277944%_)
                     (_%make-signature277621%_
                      _%$%g277677277944%_
                      _%$%g277676277943%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g277674277940%_)))))
                  (_%__kont280460280461%_
                   (lambda (_%$%g277698277847%_ _%$%g277699277849%_)
                     (_%make-signature277621%_
                      _%$%g277699277849%_
                      _%$%g277698277847%_
                      '#f
                      (let ((__tmp280811
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc277616%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp280811)))))
                  (_%__kont280462280463%_
                   (lambda (_%$%g277710277782%_
                            _%$%g277711277784%_
                            _%$%g277712277785%_)
                     (_%make-signature277621%_
                      _%$%g277712277785%_
                      _%$%g277711277784%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g277710277782%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx280449280450%_))
                  (let ((_%$%e277632278139%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx280449280450%_))))
                    (let ((_%$%tl277634278146%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e277632278139%_)))
                          (_%$%hd277633278143%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e277632278139%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl277634278146%_))
                          (let ((_%$%e277635278149%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl277634278146%_))))
                            (let ((_%$%tl277637278156%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e277635278149%_)))
                                  (_%$%hd277636278153%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e277635278149%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl277637278156%_))
                                  (_%__kont280452280453%_
                                   _%$%hd277636278153%_
                                   _%$%hd277633278143%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl277637278156%_))
                                      (let ((_%$%e277647278086%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl277637278156%_))))
                                        (let ((_%$%tl277649278093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e277647278086%_)))
                                              (_%$%hd277648278090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e277647278086%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd277648278090%_))
                                              (let ((_%$%e277650278096%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd277648278090%_))))
                                                (if (equal? _%$%e277650278096%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl277649278093%_))
                                                        (let ((_%$%e277651278100%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl277649278093%_))))
                  (let ((_%$%tl277653278107%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e277651278100%_)))
                        (_%$%hd277652278104%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e277651278100%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl277653278107%_))
                        (_%__kont280454280455%_
                         _%$%hd277652278104%_
                         _%$%hd277636278153%_
                         _%$%hd277633278143%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl277653278107%_))
                            (let ((_%$%e277670278020%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl277653278107%_))))
                              (let ((_%$%tl277672278027%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e277670278020%_)))
                                    (_%$%hd277671278024%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e277670278020%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%$%hd277671278024%_))
                                    (let ((_%$%e277673278030%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd277671278024%_))))
                                      (if (equal? _%$%e277673278030%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl277672278027%_))
                                              (_%__kont280456280457%_
                                               _%$%hd277652278104%_
                                               _%$%hd277636278153%_
                                               _%$%hd277633278143%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl277672278027%_))
                                                  (let ((_%$%e277695277930%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl277672278027%_))))
                                                    (let ((_%$%tl277697277937%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e277695277930%_)))
                                                          (_%$%hd277696277934%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e277695277930%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl277697277937%_))
                                                          (_%__kont280458280459%_
                                                           _%$%hd277696277934%_
                                                           _%$%hd277652278104%_
                                                           _%$%hd277636278153%_
                                                           _%$%hd277633278143%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g277628277731%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g277628277731%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g277628277731%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g277628277731%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g277628277731%_))))))
                (let () (declare (not safe)) (_%$%g277628277731%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%$%e277650278096%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl277649278093%_))
                                                            (_%__kont280460280461%_
                                                             _%$%hd277636278153%_
                                                             _%$%hd277633278143%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl277649278093%_))
                        (let ((_%$%e277723277772%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl277649278093%_))))
                          (let ((_%$%tl277725277779%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e277723277772%_)))
                                (_%$%hd277724277776%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e277723277772%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl277725277779%_))
                                (_%__kont280462280463%_
                                 _%$%hd277724277776%_
                                 _%$%hd277636278153%_
                                 _%$%hd277633278143%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g277628277731%_)))))
                        (let () (declare (not safe)) (_%$%g277628277731%_))))
                (let () (declare (not safe)) (_%$%g277628277731%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g277628277731%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g277628277731%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g277628277731%_)))))
                  (let () (declare (not safe)) (_%$%g277628277731%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig277225%_)
        (let* ((_%$%g277228277308%_
                (lambda (_%$%g277229277304%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277229277304%_))))
               (_%$%g277227277610%_
                (lambda (_%$%g277229277312%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277229277312%_))
                      (let ((_%$%e277235277315%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277229277312%_))))
                        (let ((_%$%hd277236277319%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277235277315%_)))
                              (_%$%tl277237277322%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277235277315%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277237277322%_))
                              (let ((_%$%e277238277325%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277237277322%_))))
                                (let ((_%$%hd277239277329%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277238277325%_)))
                                      (_%$%tl277240277332%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277238277325%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%$%hd277239277329%_))
                                      (let ((_%$%e277241277335%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd277239277329%_))))
                                        (if (equal? _%$%e277241277335%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl277240277332%_))
                                                (let ((_%$%e277242277339%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl277240277332%_))))
                                                  (let ((_%$%hd277243277343%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e277242277339%_)))
                                                        (_%$%tl277244277346%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e277242277339%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd277243277343%_))
                                                        (let ((_%$%e277245277349%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd277243277343%_))))
                  (let ((_%$%hd277246277353%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e277245277349%_)))
                        (_%$%tl277247277356%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e277245277349%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd277246277353%_))
                        (if (let ((__tmp280812 |gxc[1]#_g280813_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp280812
                               _%$%hd277246277353%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl277247277356%_))
                                (let ((_%$%e277248277359%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl277247277356%_))))
                                  (let ((_%$%hd277249277363%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e277248277359%_)))
                                        (_%$%tl277250277366%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e277248277359%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl277250277366%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl277244277346%_))
                                            (let ((_%$%e277251277369%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl277244277346%_))))
                                              (let ((_%$%hd277252277373%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e277251277369%_)))
                                                    (_%$%tl277253277376%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e277251277369%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd277252277373%_))
                                                    (let ((_%$%e277254277379%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd277252277373%_))))
                                                      (if (equal? _%$%e277254277379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl277253277376%_))
                      (let ((_%$%e277255277383%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl277253277376%_))))
                        (let ((_%$%hd277256277387%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277255277383%_)))
                              (_%$%tl277257277390%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277255277383%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd277256277387%_))
                              (let ((_%$%e277258277393%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd277256277387%_))))
                                (let ((_%$%hd277259277397%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277258277393%_)))
                                      (_%$%tl277260277400%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277258277393%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd277259277397%_))
                                      (if (let ((__tmp280814
                                                 |gxc[1]#_g280815_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp280814
                                             _%$%hd277259277397%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl277260277400%_))
                                              (let ((_%$%e277261277403%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl277260277400%_))))
                                                (let ((_%$%hd277262277407%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e277261277403%_)))
                                                      (_%$%tl277263277410%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e277261277403%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl277263277410%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl277257277390%_))
                                                          (let ((_%$%e277264277413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl277257277390%_))))
                    (let ((_%$%hd277265277417%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e277264277413%_)))
                          (_%$%tl277266277420%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e277264277413%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd277265277417%_))
                          (let ((_%$%e277267277423%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd277265277417%_))))
                            (if (equal? _%$%e277267277423%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl277266277420%_))
                                    (let ((_%$%e277268277427%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl277266277420%_))))
                                      (let ((_%$%hd277269277431%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e277268277427%_)))
                                            (_%$%tl277270277434%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e277268277427%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd277269277431%_))
                                            (let ((_%$%e277271277437%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%hd277269277431%_))))
                                              (let ((_%$%hd277272277441%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e277271277437%_)))
                                                    (_%$%tl277273277444%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e277271277437%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd277272277441%_))
                                                    (if (let ((__tmp280816
                                                               |gxc[1]#_g280817_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp280816
                                                           _%$%hd277272277441%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl277273277444%_))
                                                            (let ((_%$%e277274277447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%$%tl277273277444%_))))
                      (let ((_%$%hd277275277451%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e277274277447%_)))
                            (_%$%tl277276277454%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e277274277447%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl277276277454%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl277270277434%_))
                                (let ((_%$%e277277277457%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl277270277434%_))))
                                  (let ((_%$%hd277278277461%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e277277277457%_)))
                                        (_%$%tl277279277464%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e277277277457%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%$%hd277278277461%_))
                                        (let ((_%$%e277280277467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd277278277461%_))))
                                          (if (equal? _%$%e277280277467%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl277279277464%_))
                                                  (let ((_%$%e277281277471%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl277279277464%_))))
                                                    (let ((_%$%hd277282277475%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e277281277471%_)))
                                                          (_%$%tl277283277478%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e277281277471%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd277282277475%_))
                                                          (let ((_%$%e277284277481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%hd277282277475%_))))
                    (let ((_%$%hd277285277485%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e277284277481%_)))
                          (_%$%tl277286277488%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e277284277481%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd277285277485%_))
                          (if (let ((__tmp280818 |gxc[1]#_g280819_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp280818
                                 _%$%hd277285277485%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl277286277488%_))
                                  (let ((_%$%e277287277491%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl277286277488%_))))
                                    (let ((_%$%hd277288277495%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e277287277491%_)))
                                          (_%$%tl277289277498%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e277287277491%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl277289277498%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl277283277478%_))
                                              (let ((_%$%e277290277501%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl277283277478%_))))
                                                (let ((_%$%hd277291277505%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e277290277501%_)))
                                                      (_%$%tl277292277508%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e277290277501%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%$%hd277291277505%_))
                                                      (let ((_%$%e277293277511%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd277291277505%_))))
                (if (equal? _%$%e277293277511%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl277292277508%_))
                        (let ((_%$%e277294277515%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl277292277508%_))))
                          (let ((_%$%hd277295277519%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e277294277515%_)))
                                (_%$%tl277296277522%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e277294277515%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd277295277519%_))
                                (let ((_%$%e277297277525%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%hd277295277519%_))))
                                  (let ((_%$%hd277298277529%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e277297277525%_)))
                                        (_%$%tl277299277532%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e277297277525%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd277298277529%_))
                                        (if (let ((__tmp280820
                                                   |gxc[1]#_g280821_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp280820
                                               _%$%hd277298277529%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl277299277532%_))
                                                (let ((_%$%e277300277535%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl277299277532%_))))
                                                  (let ((_%$%hd277301277539%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e277300277535%_)))
                                                        (_%$%tl277302277542%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e277300277535%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl277302277542%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl277296277522%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd277288277495%_))
                        (cons _%$%hd277288277495%_
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
                                                            (cons _%$%hd277262277407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd277301277539%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '#f)
                    (_%$%g277228277308%_ _%$%g277229277312%_))
                (_%$%g277228277308%_ _%$%g277229277312%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g277228277308%_
                                                 _%$%g277229277312%_))
                                            (_%$%g277228277308%_
                                             _%$%g277229277312%_))
                                        (_%$%g277228277308%_
                                         _%$%g277229277312%_))))
                                (_%$%g277228277308%_ _%$%g277229277312%_))))
                        (_%$%g277228277308%_ _%$%g277229277312%_))
                    (_%$%g277228277308%_ _%$%g277229277312%_)))
              (_%$%g277228277308%_ _%$%g277229277312%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g277228277308%_
                                               _%$%g277229277312%_))
                                          (_%$%g277228277308%_
                                           _%$%g277229277312%_))))
                                  (_%$%g277228277308%_ _%$%g277229277312%_))
                              (_%$%g277228277308%_ _%$%g277229277312%_))
                          (_%$%g277228277308%_ _%$%g277229277312%_))))
                  (_%$%g277228277308%_ _%$%g277229277312%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g277228277308%_
                                                   _%$%g277229277312%_))
                                              (_%$%g277228277308%_
                                               _%$%g277229277312%_)))
                                        (_%$%g277228277308%_
                                         _%$%g277229277312%_))))
                                (_%$%g277228277308%_ _%$%g277229277312%_))
                            (_%$%g277228277308%_ _%$%g277229277312%_))))
                    (_%$%g277228277308%_ _%$%g277229277312%_))
                (_%$%g277228277308%_ _%$%g277229277312%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g277228277308%_
                                                     _%$%g277229277312%_))))
                                            (_%$%g277228277308%_
                                             _%$%g277229277312%_))))
                                    (_%$%g277228277308%_ _%$%g277229277312%_))
                                (_%$%g277228277308%_ _%$%g277229277312%_)))
                          (_%$%g277228277308%_ _%$%g277229277312%_))))
                  (_%$%g277228277308%_ _%$%g277229277312%_))
              (_%$%g277228277308%_ _%$%g277229277312%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g277228277308%_
                                               _%$%g277229277312%_))
                                          (_%$%g277228277308%_
                                           _%$%g277229277312%_))
                                      (_%$%g277228277308%_
                                       _%$%g277229277312%_))))
                              (_%$%g277228277308%_ _%$%g277229277312%_))))
                      (_%$%g277228277308%_ _%$%g277229277312%_))
                  (_%$%g277228277308%_ _%$%g277229277312%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g277228277308%_
                                                     _%$%g277229277312%_))))
                                            (_%$%g277228277308%_
                                             _%$%g277229277312%_))
                                        (_%$%g277228277308%_
                                         _%$%g277229277312%_))))
                                (_%$%g277228277308%_ _%$%g277229277312%_))
                            (_%$%g277228277308%_ _%$%g277229277312%_))
                        (_%$%g277228277308%_ _%$%g277229277312%_))))
                (_%$%g277228277308%_ _%$%g277229277312%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g277228277308%_
                                                 _%$%g277229277312%_))
                                            (_%$%g277228277308%_
                                             _%$%g277229277312%_)))
                                      (_%$%g277228277308%_
                                       _%$%g277229277312%_))))
                              (_%$%g277228277308%_ _%$%g277229277312%_))))
                      (_%$%g277228277308%_ _%$%g277229277312%_)))))
          (_%$%g277227277610%_ _%sig277225%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx278382%_)
        (let* ((_%$%g278385278403%_
                (lambda (_%$%g278386278399%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278386278399%_))))
               (_%$%g278384278458%_
                (lambda (_%$%g278386278407%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278386278407%_))
                      (let ((_%$%e278389278410%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278386278407%_))))
                        (let ((_%$%hd278390278414%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278389278410%_)))
                              (_%$%tl278391278417%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278389278410%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278391278417%_))
                              (let ((_%$%e278392278420%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278391278417%_))))
                                (let ((_%$%hd278393278424%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278392278420%_)))
                                      (_%$%tl278394278427%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278392278420%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl278394278427%_))
                                      (let ((_%$%e278395278430%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl278394278427%_))))
                                        (let ((_%$%hd278396278434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278395278430%_)))
                                              (_%$%tl278397278437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278395278430%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl278397278437%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd278393278424%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd278396278434%_)))
                                                  (begin
                                                    (|gxc[1]#verify-procedure!|
                                                     _%stx278382%_
                                                     _%$%hd278393278424%_)
                                                    (|gxc[1]#verify-class!|
                                                     _%stx278382%_
                                                     _%$%hd278396278434%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-type))
                                                          (cons _%$%hd278393278424%_
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
                                                (cons _%$%hd278396278434%_
                                                      '()))
                                          '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g278385278403%_
                                                   _%$%g278386278407%_))
                                              (_%$%g278385278403%_
                                               _%$%g278386278407%_))))
                                      (_%$%g278385278403%_
                                       _%$%g278386278407%_))))
                              (_%$%g278385278403%_ _%$%g278386278407%_))))
                      (_%$%g278385278403%_ _%$%g278386278407%_)))))
          (_%$%g278384278458%_ _%stx278382%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx278462%_)
        (let* ((_%$%g278465278489%_
                (lambda (_%$%g278466278485%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278466278485%_))))
               (_%$%g278464278770%_
                (lambda (_%$%g278466278493%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278466278493%_))
                      (let ((_%$%e278469278496%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278466278493%_))))
                        (let ((_%$%hd278470278500%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278469278496%_)))
                              (_%$%tl278471278503%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278469278496%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278471278503%_))
                              (let ((_%$%e278472278506%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278471278503%_))))
                                (let ((_%$%hd278473278510%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278472278506%_)))
                                      (_%$%tl278474278513%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278472278506%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl278474278513%_))
                                      (let ((_g280822_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl278474278513%_
                                                '0))))
                                        (begin
                                          (let ((_g280823_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g280822_)
                                                       (##values-length
                                                        _g280822_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g280823_ 2)))
                                                (error "Context expects 2 values"
                                                       _g280823_)))
                                          (let ((_%$%target278475278516%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g280822_ 0)))
                                                (_%$%tl278477278519%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g280822_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl278477278519%_))
                                                (letrec ((_%$%loop278478278522%_
                                                          (lambda (_%$%hd278476278526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%signature278482278529%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd278476278526%_))
                        (let ((_%$%e278479278531%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd278476278526%_))))
                          (let ((_%$%lp-hd278480278535%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e278479278531%_)))
                                (_%$%lp-tl278481278538%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e278479278531%_))))
                            (_%$%loop278478278522%_
                             _%$%lp-tl278481278538%_
                             (cons _%$%lp-hd278480278535%_
                                   _%$%signature278482278529%_))))
                        (let ((_%$%signature278483278541%_
                               (reverse _%$%signature278482278529%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd278473278510%_))
                              (let* ((_%$%g278564278579%_
                                      (lambda (_%$%g278565278575%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g278565278575%_))))
                                     (_%$%g278563278758%_
                                      (lambda (_%$%g278565278583%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%g278565278583%_))
                                            (let ((_%$%e278568278586%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%g278565278583%_))))
                                              (let ((_%$%hd278569278590%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e278568278586%_)))
                                                    (_%$%tl278570278593%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e278568278586%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl278570278593%_))
                                                    (let ((_%$%e278571278596%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl278570278593%_))))
                                                      (let ((_%$%hd278572278600%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e278571278596%_)))
                    (_%$%tl278573278603%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e278571278596%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl278573278603%_))
                    (let* ((_%$%g278624278632%_
                            (lambda (_%$%g278625278628%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g278625278628%_))))
                           (_%$%g278623278754%_
                            (lambda (_%$%g278625278636%_)
                              (let* ((_%unchecked278652%_
                                      (|gxc[1]#signature->unchecked-signature|
                                       _%$%hd278572278600%_))
                                     (_%$%g278655278663%_
                                      (lambda (_%$%g278656278659%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g278656278659%_))))
                                     (_%$%g278654278686%_
                                      (lambda (_%$%g278656278667%_)
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'begin))
                                              (cons _%$%g278625278636%_
                                                    (cons _%$%g278656278667%_
                                                          '()))))))
                                (_%$%g278654278686%_
                                 (if _%unchecked278652%_
                                     (let* ((_%$%g278690278705%_
                                             (lambda (_%$%g278691278701%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g278691278701%_))))
                                            (_%$%g278689278750%_
                                             (lambda (_%$%g278691278709%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g278691278709%_))
                                                   (let ((_%$%e278694278712%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%$%g278691278709%_))))
                                                     (let ((_%$%hd278695278716%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e278694278712%_)))
                                                           (_%$%tl278696278719%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e278694278712%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl278696278719%_))
                                                           (let ((_%$%e278697278722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%$%tl278696278719%_))))
                     (let ((_%$%hd278698278726%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e278697278722%_)))
                           (_%$%tl278699278729%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e278697278722%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl278699278729%_))
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'declare-type))
                                 (cons _%$%hd278695278716%_
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-!primitive-lambda))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%$%hd278569278590%_ '()))
                 (cons '#f
                       (cons 'signature: (cons _%$%hd278698278726%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (_%$%g278690278705%_ _%$%g278691278709%_))))
                   (_%$%g278690278705%_ _%$%g278691278709%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g278690278705%_
                                                    _%$%g278691278709%_)))))
                                       (_%$%g278689278750%_
                                        _%unchecked278652%_))
                                     '(begin)))))))
                      (_%$%g278623278754%_
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'declare-type))
                             (cons _%$%hd278473278510%_
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
                                                           (cons _%$%hd278569278590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons 'signature:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%hd278572278600%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                    (_%$%g278564278579%_ _%$%g278565278583%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g278564278579%_
                                                     _%$%g278565278583%_))))
                                            (_%$%g278564278579%_
                                             _%$%g278565278583%_)))))
                                (_%$%g278563278758%_
                                 (|gxc[1]#parse-signature|
                                  _%stx278462%_
                                  _%$%hd278473278510%_
                                  (let ((__tmp280824
                                         (lambda (_%$%g278761278764%_
                                                  _%$%g278762278767%_)
                                           (cons _%$%g278761278764%_
                                                 _%$%g278762278767%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp280824
                                     '()
                                     _%$%signature278483278541%_)))))
                              (_%$%g278465278489%_ _%$%g278466278493%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop278478278522%_
                                                   _%$%target278475278516%_
                                                   '()))
                                                (_%$%g278465278489%_
                                                 _%$%g278466278493%_)))))
                                      (_%$%g278465278489%_
                                       _%$%g278466278493%_))))
                              (_%$%g278465278489%_ _%$%g278466278493%_))))
                      (_%$%g278465278489%_ _%$%g278466278493%_)))))
          (_%$%g278464278770%_ _%stx278462%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx278775%_)
        (let* ((_%$%g278778278802%_
                (lambda (_%$%g278779278798%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278779278798%_))))
               (_%$%g278777279677%_
                (lambda (_%$%g278779278806%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278779278806%_))
                      (let ((_%$%e278782278809%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278779278806%_))))
                        (let ((_%$%hd278783278813%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278782278809%_)))
                              (_%$%tl278784278816%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278782278809%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278784278816%_))
                              (let ((_%$%e278785278819%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278784278816%_))))
                                (let ((_%$%hd278786278823%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278785278819%_)))
                                      (_%$%tl278787278826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278785278819%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl278787278826%_))
                                      (let ((_g280825_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl278787278826%_
                                                '0))))
                                        (begin
                                          (let ((_g280826_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g280825_)
                                                       (##values-length
                                                        _g280825_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g280826_ 2)))
                                                (error "Context expects 2 values"
                                                       _g280826_)))
                                          (let ((_%$%target278788278829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g280825_ 0)))
                                                (_%$%tl278790278832%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g280825_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl278790278832%_))
                                                (letrec ((_%$%loop278791278835%_
                                                          (lambda (_%$%hd278789278839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%case-signature278795278842%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd278789278839%_))
                        (let ((_%$%e278792278844%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd278789278839%_))))
                          (let ((_%$%lp-hd278793278848%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e278792278844%_)))
                                (_%$%lp-tl278794278851%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e278792278844%_))))
                            (_%$%loop278791278835%_
                             _%$%lp-tl278794278851%_
                             (cons _%$%lp-hd278793278848%_
                                   _%$%case-signature278795278842%_))))
                        (let ((_%$%case-signature278796278854%_
                               (reverse _%$%case-signature278795278842%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd278786278823%_))
                              (let* ((_%signatures278890%_
                                      (map (lambda (_%$%g278876278878%_)
                                             (|gxc[1]#parse-signature|
                                              _%stx278775%_
                                              _%$%hd278786278823%_
                                              _%$%g278876278878%_))
                                           (let ((__tmp280827
                                                  (lambda (_%$%g278881278884%_
                                                           _%$%g278882278887%_)
                                                    (cons _%$%g278881278884%_
                                                          _%$%g278882278887%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp280827
                                              '()
                                              _%$%case-signature278796278854%_))))
                                     (_%$%g278893278919%_
                                      (lambda (_%$%g278894278915%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g278894278915%_))))
                                     (_%$%g278892279673%_
                                      (lambda (_%$%g278894278923%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g278894278923%_))
                                            (let ((_g280828_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g278894278923%_
                                                      '0))))
                                              (begin
                                                (let ((_g280829_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g280828_)
                                                             (##values-length
                                                              _g280828_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g280829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g280829_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target278897278926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g280828_
                                                          0)))
                                                      (_%$%tl278899278929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g280828_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl278899278929%_))
                                                      (letrec ((_%$%loop278900278932%_
                                                                (lambda (_%$%hd278898278936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%sig278904278939%_
                                 _%$%arity278905278940%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd278898278936%_))
                              (let ((_%$%e278901278942%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd278898278936%_))))
                                (let ((_%$%lp-hd278902278946%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278901278942%_)))
                                      (_%$%lp-tl278903278949%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278901278942%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%lp-hd278902278946%_))
                                      (let ((_%$%e278908278952%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%lp-hd278902278946%_))))
                                        (let ((_%$%hd278909278956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278908278952%_)))
                                              (_%$%tl278910278959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278908278952%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl278910278959%_))
                                              (let ((_%$%e278911278962%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl278910278959%_))))
                                                (let ((_%$%hd278912278966%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e278911278962%_)))
                                                      (_%$%tl278913278969%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e278911278962%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl278913278969%_))
                                                      (_%$%loop278900278932%_
                                                       _%$%lp-tl278903278949%_
                                                       (cons _%$%hd278912278966%_
                                                             _%$%sig278904278939%_)
                                                       (cons _%$%hd278909278956%_
                                                             _%$%arity278905278940%_))
                                                      (_%$%g278893278919%_
                                                       _%$%g278894278923%_))))
                                              (_%$%g278893278919%_
                                               _%$%g278894278923%_))))
                                      (_%$%g278893278919%_
                                       _%$%g278894278923%_))))
                              (let ((_%$%sig278906278972%_
                                     (reverse _%$%sig278904278939%_))
                                    (_%$%arity278907278974%_
                                     (reverse _%$%arity278905278940%_)))
                                (let* ((_%$%g278995279003%_
                                        (lambda (_%$%g278996278999%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g278996278999%_))))
                                       (_%$%g278994279658%_
                                        (lambda (_%$%g278996279007%_)
                                          (let* ((_%$%g279023279031%_
                                                  (lambda (_%$%g279024279027%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g279024279027%_))))
                                                 (_%$%g279022279053%_
                                                  (lambda (_%$%g279024279035%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%$%g278996279007%_
                                                                (cons _%$%g279024279035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g279022279053%_
                                             (let ((_g280830_
                                                    (let _%loop279057%_ ((_%rest279060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%signatures278890%_)
                                 (_%unchecked-proc279062%_ '#f)
                                 (_%unchecked-clauses279063%_ '()))
              (let* ((_%$%rest279064279072%_ _%rest279060%_)
                     (_%$%else279066279084%_
                      (lambda ()
                        (values _%unchecked-proc279062%_
                                (reverse! _%unchecked-clauses279063%_))))
                     (_%$%K279068279525%_
                      (lambda (_%rest279088%_ _%hd279090%_)
                        (let* ((_%$%g279092279179%_
                                (lambda (_%$%g279093279175%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g279093279175%_))))
                               (_%$%g279091279521%_
                                (lambda (_%$%g279093279183%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%g279093279183%_))
                                      (let ((_%$%e279100279186%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%g279093279183%_))))
                                        (let ((_%$%hd279101279190%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e279100279186%_)))
                                              (_%$%tl279102279193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e279100279186%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl279102279193%_))
                                              (let ((_%$%e279103279196%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl279102279193%_))))
                                                (let ((_%$%hd279104279200%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e279103279196%_)))
                                                      (_%$%tl279105279203%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e279103279196%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd279104279200%_))
                                                      (let ((_%$%e279106279206%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%hd279104279200%_))))
                (let ((_%$%hd279107279210%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e279106279206%_)))
                      (_%$%tl279108279213%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e279106279206%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl279108279213%_))
                      (let ((_%$%e279109279216%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl279108279213%_))))
                        (let ((_%$%hd279110279220%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e279109279216%_)))
                              (_%$%tl279111279223%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e279109279216%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-datum? _%$%hd279110279220%_))
                              (let ((_%$%e279112279226%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd279110279220%_))))
                                (if (equal? _%$%e279112279226%_ 'arguments:)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl279111279223%_))
                                        (let ((_%$%e279113279230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl279111279223%_))))
                                          (let ((_%$%hd279114279234%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e279113279230%_)))
                                                (_%$%tl279115279237%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e279113279230%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd279114279234%_))
                                                (let ((_%$%e279116279240%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%hd279114279234%_))))
                                                  (let ((_%$%hd279117279244%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e279116279240%_)))
                                                        (_%$%tl279118279247%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e279116279240%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd279117279244%_))
                                                        (if (let ((__tmp280832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gxc[1]#_g280833_|))
                      (declare (not safe))
                      (gx#free-identifier=? __tmp280832 _%$%hd279117279244%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl279118279247%_))
                        (let ((_%$%e279119279250%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl279118279247%_))))
                          (let ((_%$%hd279120279254%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e279119279250%_)))
                                (_%$%tl279121279257%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e279119279250%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl279121279257%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl279115279237%_))
                                    (let ((_%$%e279122279260%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl279115279237%_))))
                                      (let ((_%$%hd279123279264%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e279122279260%_)))
                                            (_%$%tl279124279267%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e279122279260%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-datum?
                                               _%$%hd279123279264%_))
                                            (let ((_%$%e279125279270%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd279123279264%_))))
                                              (if (equal? _%$%e279125279270%_
                                                          'return:)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl279124279267%_))
                                                      (let ((_%$%e279126279274%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl279124279267%_))))
                (let ((_%$%hd279127279278%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e279126279274%_)))
                      (_%$%tl279128279281%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e279126279274%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd279127279278%_))
                      (let ((_%$%e279129279284%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%hd279127279278%_))))
                        (let ((_%$%hd279130279288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e279129279284%_)))
                              (_%$%tl279131279291%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e279129279284%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd279130279288%_))
                              (if (let ((__tmp280834 |gxc[1]#_g280835_|))
                                    (declare (not safe))
                                    (gx#free-identifier=?
                                     __tmp280834
                                     _%$%hd279130279288%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl279131279291%_))
                                      (let ((_%$%e279132279294%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl279131279291%_))))
                                        (let ((_%$%hd279133279298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e279132279294%_)))
                                              (_%$%tl279134279301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e279132279294%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl279134279301%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl279128279281%_))
                                                  (let ((_%$%e279135279304%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl279128279281%_))))
                                                    (let ((_%$%hd279136279308%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e279135279304%_)))
                                                          (_%$%tl279137279311%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e279135279304%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-datum?
                                                             _%$%hd279136279308%_))
                                                          (let ((_%$%e279138279314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd279136279308%_))))
                    (if (equal? _%$%e279138279314%_ 'effect:)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl279137279311%_))
                            (let ((_%$%e279139279318%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl279137279311%_))))
                              (let ((_%$%hd279140279322%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e279139279318%_)))
                                    (_%$%tl279141279325%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e279139279318%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd279140279322%_))
                                    (let ((_%$%e279142279328%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd279140279322%_))))
                                      (let ((_%$%hd279143279332%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e279142279328%_)))
                                            (_%$%tl279144279335%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e279142279328%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd279143279332%_))
                                            (if (let ((__tmp280836
                                                       |gxc[1]#_g280837_|))
                                                  (declare (not safe))
                                                  (gx#free-identifier=?
                                                   __tmp280836
                                                   _%$%hd279143279332%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl279144279335%_))
                                                    (let ((_%$%e279145279338%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl279144279335%_))))
                                                      (let ((_%$%hd279146279342%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e279145279338%_)))
                    (_%$%tl279147279345%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e279145279338%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl279147279345%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl279141279325%_))
                        (let ((_%$%e279148279348%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl279141279325%_))))
                          (let ((_%$%hd279149279352%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e279148279348%_)))
                                (_%$%tl279150279355%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e279148279348%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd279149279352%_))
                                (let ((_%$%e279151279358%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd279149279352%_))))
                                  (if (equal? _%$%e279151279358%_ 'unchecked:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl279150279355%_))
                                          (let ((_%$%e279152279362%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl279150279355%_))))
                                            (let ((_%$%hd279153279366%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e279152279362%_)))
                                                  (_%$%tl279154279369%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e279152279362%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd279153279366%_))
                                                  (let ((_%$%e279155279372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd279153279366%_))))
                                                    (let ((_%$%hd279156279376%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e279155279372%_)))
                                                          (_%$%tl279157279379%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e279155279372%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd279156279376%_))
                                                          (if (let ((__tmp280838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             |gxc[1]#_g280839_|))
                        (declare (not safe))
                        (gx#free-identifier=?
                         __tmp280838
                         _%$%hd279156279376%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl279157279379%_))
                          (let ((_%$%e279158279382%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl279157279379%_))))
                            (let ((_%$%hd279159279386%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e279158279382%_)))
                                  (_%$%tl279160279389%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e279158279382%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl279160279389%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl279154279369%_))
                                      (let ((_%$%e279161279392%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl279154279369%_))))
                                        (let ((_%$%hd279162279396%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e279161279392%_)))
                                              (_%$%tl279163279399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e279161279392%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd279162279396%_))
                                              (let ((_%$%e279164279402%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd279162279396%_))))
                                                (if (equal? _%$%e279164279402%_
                                                            'origin:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl279163279399%_))
                                                        (let ((_%$%e279165279406%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl279163279399%_))))
                  (let ((_%$%hd279166279410%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e279165279406%_)))
                        (_%$%tl279167279413%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e279165279406%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd279166279410%_))
                        (let ((_%$%e279168279416%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd279166279410%_))))
                          (let ((_%$%hd279169279420%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e279168279416%_)))
                                (_%$%tl279170279423%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e279168279416%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd279169279420%_))
                                (if (let ((__tmp280840 |gxc[1]#_g280841_|))
                                      (declare (not safe))
                                      (gx#free-identifier=?
                                       __tmp280840
                                       _%$%hd279169279420%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl279170279423%_))
                                        (let ((_%$%e279171279426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl279170279423%_))))
                                          (let ((_%$%hd279172279430%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e279171279426%_)))
                                                (_%$%tl279173279433%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e279171279426%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl279173279433%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl279167279413%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl279105279203%_))
                                                        (let ((_%clause279513%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%$%hd279101279190%_ '()))
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
                                     (cons _%$%hd279133279298%_ '()))
                               (cons 'origin:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%hd279172279430%_
                                                       '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                      (_%unchecked279515%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%$%hd279159279386%_))))
                  (_%loop279057%_
                   _%rest279088%_
                   (let ((_%$e279517%_ _%unchecked279515%_))
                     (if _%$e279517%_ _%$e279517%_ _%unchecked-proc279062%_))
                   (cons _%clause279513%_ _%unchecked-clauses279063%_)))
                (_%$%g279092279179%_ _%$%g279093279183%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g279092279179%_
                                                     _%$%g279093279183%_))
                                                (_%$%g279092279179%_
                                                 _%$%g279093279183%_))))
                                        (_%$%g279092279179%_
                                         _%$%g279093279183%_))
                                    (_%$%g279092279179%_ _%$%g279093279183%_))
                                (_%$%g279092279179%_ _%$%g279093279183%_))))
                        (_%$%g279092279179%_ _%$%g279093279183%_))))
                (_%$%g279092279179%_ _%$%g279093279183%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g279092279179%_
                                                     _%$%g279093279183%_)))
                                              (_%$%g279092279179%_
                                               _%$%g279093279183%_))))
                                      (_%$%g279092279179%_
                                       _%$%g279093279183%_))
                                  (_%$%g279092279179%_ _%$%g279093279183%_))))
                          (_%$%g279092279179%_ _%$%g279093279183%_))
                      (_%$%g279092279179%_ _%$%g279093279183%_))
                  (_%$%g279092279179%_ _%$%g279093279183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g279092279179%_
                                                   _%$%g279093279183%_))))
                                          (_%$%g279092279179%_
                                           _%$%g279093279183%_))
                                      (_%$%g279092279179%_
                                       _%$%g279093279183%_)))
                                (_%$%g279092279179%_ _%$%g279093279183%_))))
                        (_%$%g279092279179%_ _%$%g279093279183%_))
                    (_%$%g279092279179%_ _%$%g279093279183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g279092279179%_
                                                     _%$%g279093279183%_))
                                                (_%$%g279092279179%_
                                                 _%$%g279093279183%_))
                                            (_%$%g279092279179%_
                                             _%$%g279093279183%_))))
                                    (_%$%g279092279179%_
                                     _%$%g279093279183%_))))
                            (_%$%g279092279179%_ _%$%g279093279183%_))
                        (_%$%g279092279179%_ _%$%g279093279183%_)))
                  (_%$%g279092279179%_ _%$%g279093279183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g279092279179%_
                                                   _%$%g279093279183%_))
                                              (_%$%g279092279179%_
                                               _%$%g279093279183%_))))
                                      (_%$%g279092279179%_
                                       _%$%g279093279183%_))
                                  (_%$%g279092279179%_ _%$%g279093279183%_))
                              (_%$%g279092279179%_ _%$%g279093279183%_))))
                      (_%$%g279092279179%_ _%$%g279093279183%_))))
              (_%$%g279092279179%_ _%$%g279093279183%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g279092279179%_
                                                   _%$%g279093279183%_)))
                                            (_%$%g279092279179%_
                                             _%$%g279093279183%_))))
                                    (_%$%g279092279179%_ _%$%g279093279183%_))
                                (_%$%g279092279179%_ _%$%g279093279183%_))))
                        (_%$%g279092279179%_ _%$%g279093279183%_))
                    (_%$%g279092279179%_ _%$%g279093279183%_))
                (_%$%g279092279179%_ _%$%g279093279183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g279092279179%_
                                                 _%$%g279093279183%_))))
                                        (_%$%g279092279179%_
                                         _%$%g279093279183%_))
                                    (_%$%g279092279179%_ _%$%g279093279183%_)))
                              (_%$%g279092279179%_ _%$%g279093279183%_))))
                      (_%$%g279092279179%_ _%$%g279093279183%_))))
              (_%$%g279092279179%_ _%$%g279093279183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g279092279179%_
                                               _%$%g279093279183%_))))
                                      (_%$%g279092279179%_
                                       _%$%g279093279183%_)))))
                          (_%$%g279091279521%_ _%hd279090%_)))))
                (if (pair? _%$%rest279064279072%_)
                    (let ((_%$%hd279069279529%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest279064279072%_)))
                          (_%$%tl279070279532%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest279064279072%_))))
                      (let* ((_%hd279535%_ _%$%hd279069279529%_)
                             (_%rest279538%_ _%$%tl279070279532%_))
                        (_%$%K279068279525%_ _%rest279538%_ _%hd279535%_)))
                    (_%$%else279066279084%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 (let ((_g280831_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g280830_)
                                                              (##values-length
                                                               _g280830_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g280831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g280831_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%unchecked-proc279541%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g280830_
                                                           0)))
                                                       (_%unchecked-clauses279543%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g280830_
                                                           1))))
                                                   (if _%unchecked-proc279541%_
                                                       (let* ((_%$%g279545279569%_
                                                               (lambda (_%$%g279546279565%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g279546279565%_))))
                      (_%$%g279544279654%_
                       (lambda (_%$%g279546279573%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%g279546279573%_))
                             (let ((_%$%e279549279576%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%$%g279546279573%_))))
                               (let ((_%$%hd279550279580%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e279549279576%_)))
                                     (_%$%tl279551279583%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e279549279576%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%tl279551279583%_))
                                     (let ((_%$%e279552279586%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%tl279551279583%_))))
                                       (let ((_%$%hd279553279590%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e279552279586%_)))
                                             (_%$%tl279554279593%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e279552279586%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair/null?
                                                _%$%hd279553279590%_))
                                             (let ((_g280842_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-split-splice
                                                       _%$%hd279553279590%_
                                                       '0))))
                                               (begin
                                                 (let ((_g280843_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g280842_)
                                                              (##values-length
                                                               _g280842_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g280843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g280843_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$%target279555279596%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g280842_
                                                           0)))
                                                       (_%$%tl279557279599%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g280842_
                                                           1))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl279557279599%_))
                                                       (letrec ((_%$%loop279558279602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%hd279556279606%_
                                  _%$%clause279562279609%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd279556279606%_))
                               (let ((_%$%e279559279611%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%$%hd279556279606%_))))
                                 (let ((_%$%lp-hd279560279615%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e279559279611%_)))
                                       (_%$%lp-tl279561279618%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e279559279611%_))))
                                   (_%$%loop279558279602%_
                                    _%$%lp-tl279561279618%_
                                    (cons _%$%lp-hd279560279615%_
                                          _%$%clause279562279609%_))))
                               (let ((_%$%clause279563279621%_
                                      (reverse _%$%clause279562279609%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl279554279593%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-type))
                                           (cons _%$%hd279550279580%_
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!primitive-case-lambda))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '@list))
                                 (let ((__tmp280844
                                        (lambda (_%$%g279645279648%_
                                                 _%$%g279646279651%_)
                                          (cons _%$%g279645279648%_
                                                _%$%g279646279651%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp280844
                                    '()
                                    _%$%clause279563279621%_)))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%g279545279569%_
                                      _%$%g279546279573%_)))))))
                 (_%$%loop279558279602%_ _%$%target279555279596%_ '()))
               (_%$%g279545279569%_ _%$%g279546279573%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g279545279569%_
                                              _%$%g279546279573%_))))
                                     (_%$%g279545279569%_
                                      _%$%g279546279573%_))))
                             (_%$%g279545279569%_ _%$%g279546279573%_)))))
                 (_%$%g279544279654%_
                  (list _%unchecked-proc279541%_ _%unchecked-clauses279543%_)))
               '(begin))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g278994279658%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'declare-type))
                                         (cons _%$%hd278786278823%_
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
                                    _%$%sig278906278972%_
                                    _%$%arity278907278974%_))
                                 (let ((__tmp280845
                                        (lambda (_%$%g279661279665%_
                                                 _%$%g279662279668%_
                                                 _%$%g279663279670%_)
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!primitive-lambda))
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote))
                          (cons _%$%g279662279668%_ '()))
                    (cons '#f
                          (cons 'signature: (cons _%$%g279661279665%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%g279663279670%_))))
                                   (declare (not safe))
                                   (foldr__1
                                    __tmp280845
                                    '()
                                    _%$%sig278906278972%_
                                    _%$%arity278907278974%_))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))))))
                (_%$%loop278900278932%_ _%$%target278897278926%_ '() '()))
              (_%$%g278893278919%_ _%$%g278894278923%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g278893278919%_
                                             _%$%g278894278923%_)))))
                                (_%$%g278892279673%_ _%signatures278890%_))
                              (_%$%g278778278802%_ _%$%g278779278806%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop278791278835%_
                                                   _%$%target278788278829%_
                                                   '()))
                                                (_%$%g278778278802%_
                                                 _%$%g278779278806%_)))))
                                      (_%$%g278778278802%_
                                       _%$%g278779278806%_))))
                              (_%$%g278778278802%_ _%$%g278779278806%_))))
                      (_%$%g278778278802%_ _%$%g278779278806%_)))))
          (_%$%g278777279677%_ _%stx278775%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx279685%_)
        (let* ((_%__stx280665280666%_ _%$stx279685%_)
               (_%$%g279691279751%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx280665280666%_)))))
          (let ((_%__kont280668280669%_
                 (lambda (_%$%g279693279973%_ _%$%g279694279975%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g279694279975%_ '()))
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
                                                       (cons _%$%g279694279975%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g279693279973%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont280670280671%_
                 (lambda (_%$%g279708279898%_
                          _%$%g279709279900%_
                          _%$%g279710279901%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g279710279901%_ '()))
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
                                                       (cons _%$%g279710279901%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g279709279900%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g279708279898%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont280672280673%_
                 (lambda (_%$%g279727279812%_
                          _%$%g279728279814%_
                          _%$%g279729279815%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g279729279815%_ '()))
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
                                                       (cons _%$%g279729279815%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g279728279814%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g279727279812%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx280665280666%_))
                (let ((_%$%e279695279929%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx280665280666%_))))
                  (let ((_%$%tl279697279936%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e279695279929%_)))
                        (_%$%hd279696279933%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e279695279929%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl279697279936%_))
                        (let ((_%$%e279698279939%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl279697279936%_))))
                          (let ((_%$%tl279700279946%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e279698279939%_)))
                                (_%$%hd279699279943%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e279698279939%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd279699279943%_))
                                (let ((_%$%e279701279949%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd279699279943%_))))
                                  (if (equal? _%$%e279701279949%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl279700279946%_))
                                          (let ((_%$%e279702279953%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl279700279946%_))))
                                            (let ((_%$%tl279704279960%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e279702279953%_)))
                                                  (_%$%hd279703279957%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e279702279953%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl279704279960%_))
                                                  (let ((_%$%e279705279963%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl279704279960%_))))
                                                    (let ((_%$%tl279707279970%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e279705279963%_)))
                                                          (_%$%hd279706279967%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e279705279963%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl279707279970%_))
                                                          (_%__kont280668280669%_
                                                           _%$%hd279706279967%_
                                                           _%$%hd279703279957%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g279691279751%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g279691279751%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g279691279751%_)))
                                      (if (equal? _%$%e279701279949%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl279700279946%_))
                                              (let ((_%$%e279718279868%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl279700279946%_))))
                                                (let ((_%$%tl279720279875%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e279718279868%_)))
                                                      (_%$%hd279719279872%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e279718279868%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl279720279875%_))
                                                      (let ((_%$%e279721279878%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl279720279875%_))))
                (let ((_%$%tl279723279885%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e279721279878%_)))
                      (_%$%hd279722279882%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e279721279878%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl279723279885%_))
                      (let ((_%$%e279724279888%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl279723279885%_))))
                        (let ((_%$%tl279726279895%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e279724279888%_)))
                              (_%$%hd279725279892%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e279724279888%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl279726279895%_))
                              (_%__kont280670280671%_
                               _%$%hd279725279892%_
                               _%$%hd279722279882%_
                               _%$%hd279719279872%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g279691279751%_)))))
                      (let () (declare (not safe)) (_%$%g279691279751%_)))))
              (let () (declare (not safe)) (_%$%g279691279751%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g279691279751%_)))
                                          (if (equal? _%$%e279701279949%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl279700279946%_))
                                                  (let ((_%$%e279737279782%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl279700279946%_))))
                                                    (let ((_%$%tl279739279789%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e279737279782%_)))
                                                          (_%$%hd279738279786%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e279737279782%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl279739279789%_))
                                                          (let ((_%$%e279740279792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl279739279789%_))))
                    (let ((_%$%tl279742279799%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e279740279792%_)))
                          (_%$%hd279741279796%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e279740279792%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl279742279799%_))
                          (let ((_%$%e279743279802%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl279742279799%_))))
                            (let ((_%$%tl279745279809%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e279743279802%_)))
                                  (_%$%hd279744279806%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e279743279802%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl279745279809%_))
                                  (_%__kont280672280673%_
                                   _%$%hd279744279806%_
                                   _%$%hd279741279796%_
                                   _%$%hd279738279786%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g279691279751%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g279691279751%_)))))
                  (let () (declare (not safe)) (_%$%g279691279751%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g279691279751%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g279691279751%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g279691279751%_)))))
                        (let () (declare (not safe)) (_%$%g279691279751%_)))))
                (let () (declare (not safe)) (_%$%g279691279751%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx279997%_)
        (let* ((_%$%g280001280021%_
                (lambda (_%$%g280002280017%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g280002280017%_))))
               (_%$%g280000280090%_
                (lambda (_%$%g280002280025%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g280002280025%_))
                      (let ((_%$%e280004280028%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g280002280025%_))))
                        (let ((_%$%hd280005280032%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e280004280028%_)))
                              (_%$%tl280006280035%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e280004280028%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl280006280035%_))
                              (let ((_g280846_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl280006280035%_
                                        '0))))
                                (begin
                                  (let ((_g280847_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g280846_)
                                               (##values-length _g280846_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g280847_ 2)))
                                        (error "Context expects 2 values"
                                               _g280847_)))
                                  (let ((_%$%target280007280038%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280846_ 0)))
                                        (_%$%tl280009280041%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g280846_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl280009280041%_))
                                        (letrec ((_%$%loop280010280044%_
                                                  (lambda (_%$%hd280008280048%_
                                                           _%$%decl280014280051%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd280008280048%_))
                                                        (let ((_%$%e280011280053%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd280008280048%_))))
                  (let ((_%$%lp-hd280012280057%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e280011280053%_)))
                        (_%$%lp-tl280013280060%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e280011280053%_))))
                    (_%$%loop280010280044%_
                     _%$%lp-tl280013280060%_
                     (cons _%$%lp-hd280012280057%_ _%$%decl280014280051%_))))
                (let ((_%$%decl280015280063%_
                       (reverse _%$%decl280014280051%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (let ((__tmp280848
                               (lambda (_%$%g280081280084%_
                                        _%$%g280082280087%_)
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-builtin-class))
                                             _%$%g280081280084%_)
                                       _%$%g280082280087%_))))
                          (declare (not safe))
                          (foldr__0
                           __tmp280848
                           '()
                           _%$%decl280015280063%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop280010280044%_
                                           _%$%target280007280038%_
                                           '()))
                                        (_%$%g280001280021%_
                                         _%$%g280002280025%_)))))
                              (_%$%g280001280021%_ _%$%g280002280025%_))))
                      (_%$%g280001280021%_ _%$%g280002280025%_)))))
          (_%$%g280000280090%_ _%$stx279997%_))))))
