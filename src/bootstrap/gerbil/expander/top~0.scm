(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1784461443)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx191610%_)
        (letrec ((_%expand-special191612%_
                  (lambda (_%hd191614%_ _%K191615%_ _%rest191616%_ _%r191617%_)
                    (_%K191615%_
                     _%rest191616%_
                     (cons (gx#core-expand-top _%hd191614%_) _%r191617%_)))))
          (gx#core-expand-block__0 _%stx191610%_ _%expand-special191612%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx191264%_)
        (letrec ((_%expand-special191266%_
                  (lambda (_%hd191386%_ _%K191387%_ _%rest191388%_ _%r191389%_)
                    (let* ((_%K*191393%_
                            (lambda (_%e191391%_)
                              (_%K191387%_
                               _%rest191388%_
                               (cons _%e191391%_ _%r191389%_))))
                           (_%$%e191394191446%_ _%hd191386%_)
                           (_%$%E191432191450%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e191394191446%_)))
                           (_%$%E191428191492%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191394191446%_)
                                  (let ((_%$%e191433191454%_
                                         (gx#syntax-e _%$%e191394191446%_)))
                                    (let ((_%$%hd191434191457%_
                                           (##car _%$%e191433191454%_))
                                          (_%$%tl191435191459%_
                                           (##cdr _%$%e191433191454%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191434191457%_)
                                               (gx#core-identifier=?
                                                _%$%hd191434191457%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl191435191459%_)
                                              (let ((_%$%e191436191462%_
                                                     (gx#syntax-e
                                                      _%$%tl191435191459%_)))
                                                (let ((_%$%hd191437191465%_
                                                       (##car _%$%e191436191462%_))
                                                      (_%$%tl191438191467%_
                                                       (##cdr _%$%e191436191462%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd191437191465%_)
                                                      (let ((_%$%e191442191470%_
                                                             (gx#syntax-e
                                                              _%$%hd191437191465%_)))
                                                        (let ((_%$%hd191443191473%_
                                                               (##car _%$%e191442191470%_))
                                                              (_%$%tl191444191475%_
                                                               (##cdr _%$%e191442191470%_)))
                                                          (let ((_%id191478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd191443191473%_))
                    (if (gx#stx-null? _%$%tl191444191475%_)
                        (if (gx#stx-pair? _%$%tl191438191467%_)
                            (let ((_%$%e191439191480%_
                                   (gx#syntax-e _%$%tl191438191467%_)))
                              (let ((_%$%hd191440191483%_
                                     (##car _%$%e191439191480%_))
                                    (_%$%tl191441191485%_
                                     (##cdr _%$%e191439191480%_)))
                                (let ((_%props191488%_ _%$%hd191440191483%_))
                                  (if (gx#stx-null? _%$%tl191441191485%_)
                                      (let ((_%bind191490%_
                                             (gx#resolve-identifier__0
                                              _%id191478%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind191490%_
                                         _%props191488%_)
                                        (_%K191387%_
                                         _%rest191388%_
                                         _%r191389%_))
                                      (_%$%E191432191450%_)))))
                            (_%$%E191432191450%_))
                        (_%$%E191432191450%_)))))
              (_%$%E191432191450%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E191432191450%_))
                                          (_%$%E191432191450%_))))
                                  (_%$%E191432191450%_))))
                           (_%$%E191424191504%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191394191446%_)
                                  (let ((_%$%e191429191496%_
                                         (gx#syntax-e _%$%e191394191446%_)))
                                    (let ((_%$%hd191430191499%_
                                           (##car _%$%e191429191496%_))
                                          (_%$%tl191431191501%_
                                           (##cdr _%$%e191429191496%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191430191499%_)
                                               (gx#core-identifier=?
                                                _%$%hd191430191499%_
                                                '%#define-runtime))
                                          (_%K*191393%_
                                           (gx#core-expand-define-runtime%
                                            _%hd191386%_))
                                          (_%$%E191428191492%_))))
                                  (_%$%E191428191492%_))))
                           (_%$%E191420191516%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191394191446%_)
                                  (let ((_%$%e191425191508%_
                                         (gx#syntax-e _%$%e191394191446%_)))
                                    (let ((_%$%hd191426191511%_
                                           (##car _%$%e191425191508%_))
                                          (_%$%tl191427191513%_
                                           (##cdr _%$%e191425191508%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191426191511%_)
                                               (gx#core-identifier=?
                                                _%$%hd191426191511%_
                                                '%#define-alias))
                                          (_%K*191393%_
                                           (gx#core-expand-define-alias%
                                            _%hd191386%_))
                                          (_%$%E191424191504%_))))
                                  (_%$%E191424191504%_))))
                           (_%$%E191410191528%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191394191446%_)
                                  (let ((_%$%e191421191520%_
                                         (gx#syntax-e _%$%e191394191446%_)))
                                    (let ((_%$%hd191422191523%_
                                           (##car _%$%e191421191520%_))
                                          (_%$%tl191423191525%_
                                           (##cdr _%$%e191421191520%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191422191523%_)
                                               (gx#core-identifier=?
                                                _%$%hd191422191523%_
                                                '%#define-syntax))
                                          (_%K*191393%_
                                           (gx#core-expand-define-syntax%
                                            _%hd191386%_))
                                          (_%$%E191420191516%_))))
                                  (_%$%E191420191516%_))))
                           (_%$%E191400191560%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191394191446%_)
                                  (let ((_%$%e191411191532%_
                                         (gx#syntax-e _%$%e191394191446%_)))
                                    (let ((_%$%hd191412191535%_
                                           (##car _%$%e191411191532%_))
                                          (_%$%tl191413191537%_
                                           (##cdr _%$%e191411191532%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191412191535%_)
                                               (gx#core-identifier=?
                                                _%$%hd191412191535%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl191413191537%_)
                                              (let ((_%$%e191414191540%_
                                                     (gx#syntax-e
                                                      _%$%tl191413191537%_)))
                                                (let ((_%$%hd191415191543%_
                                                       (##car _%$%e191414191540%_))
                                                      (_%$%tl191416191545%_
                                                       (##cdr _%$%e191414191540%_)))
                                                  (let ((_%hd-bind191548%_
                                                         _%$%hd191415191543%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl191416191545%_)
                                                        (let ((_%$%e191417191550%_
                                                               (gx#syntax-e
                                                                _%$%tl191416191545%_)))
                                                          (let ((_%$%hd191418191553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e191417191550%_))
                        (_%$%tl191419191555%_ (##cdr _%$%e191417191550%_)))
                    (let ((_%expr191558%_ _%$%hd191418191553%_))
                      (if (gx#stx-null? _%$%tl191419191555%_)
                          (if (gx#core-bind-values? _%hd-bind191548%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind191548%_)
                                (_%K*191393%_ _%hd191386%_))
                              (_%$%E191410191528%_))
                          (_%$%E191410191528%_)))))
                (_%$%E191410191528%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E191410191528%_))
                                          (_%$%E191410191528%_))))
                                  (_%$%E191410191528%_))))
                           (_%$%E191396191594%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191394191446%_)
                                  (let ((_%$%e191401191564%_
                                         (gx#syntax-e _%$%e191394191446%_)))
                                    (let ((_%$%hd191402191567%_
                                           (##car _%$%e191401191564%_))
                                          (_%$%tl191403191569%_
                                           (##cdr _%$%e191401191564%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191402191567%_)
                                               (gx#core-identifier=?
                                                _%$%hd191402191567%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl191403191569%_)
                                              (let ((_%$%e191404191572%_
                                                     (gx#syntax-e
                                                      _%$%tl191403191569%_)))
                                                (let ((_%$%hd191405191575%_
                                                       (##car _%$%e191404191572%_))
                                                      (_%$%tl191406191577%_
                                                       (##cdr _%$%e191404191572%_)))
                                                  (let ((_%hd-bind191580%_
                                                         _%$%hd191405191575%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl191406191577%_)
                                                        (let ((_%$%e191407191582%_
                                                               (gx#syntax-e
                                                                _%$%tl191406191577%_)))
                                                          (let ((_%$%hd191408191585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e191407191582%_))
                        (_%$%tl191409191587%_ (##cdr _%$%e191407191582%_)))
                    (let* ((_%expr191590%_ _%$%hd191408191585%_)
                           (_%props191592%_ _%$%tl191409191587%_))
                      (if (and (gx#core-bind-values? _%hd-bind191580%_)
                               (gx#stx-list? _%props191592%_)
                               (not (gx#stx-null? _%props191592%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind191580%_)
                            (_%K191387%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind191580%_
                                          (cons _%props191592%_ '())))
                                   _%rest191388%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind191580%_
                                          (cons _%expr191590%_ '())))
                                   _%r191389%_)))
                          (_%$%E191400191560%_)))))
                (_%$%E191400191560%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E191400191560%_))
                                          (_%$%E191400191560%_))))
                                  (_%$%E191400191560%_))))
                           (_%$%E191395191606%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191394191446%_)
                                  (let ((_%$%e191397191598%_
                                         (gx#syntax-e _%$%e191394191446%_)))
                                    (let ((_%$%hd191398191601%_
                                           (##car _%$%e191397191598%_))
                                          (_%$%tl191399191603%_
                                           (##cdr _%$%e191397191598%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191398191601%_)
                                               (gx#core-identifier=?
                                                _%$%hd191398191601%_
                                                '%#begin-syntax))
                                          (_%K*191393%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd191386%_))
                                          (_%$%E191396191594%_))))
                                  (_%$%E191396191594%_)))))
                      (_%$%E191395191606%_))))
                 (_%eval-body191267%_
                  (lambda (_%rbody191275%_)
                    (let _%lp191277%_ ((_%rest191279%_ _%rbody191275%_)
                                       (_%body191280%_ '())
                                       (_%ebody191281%_ '()))
                      (let* ((_%$%rest191282191290%_ _%rest191279%_)
                             (_%$%else191284191298%_
                              (lambda ()
                                (values _%body191280%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody191281%_)
                                          (gx#stx-source _%stx191264%_))))))
                             (_%$%K191286191374%_
                              (lambda (_%rest191301%_ _%hd191302%_)
                                (let* ((_%$%e191303191320%_ _%hd191302%_)
                                       (_%$%E191315191324%_
                                        (lambda ()
                                          (_%lp191277%_
                                           _%rest191301%_
                                           (cons _%hd191302%_ _%body191280%_)
                                           (cons _%hd191302%_
                                                 _%ebody191281%_))))
                                       (_%$%E191305191336%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e191303191320%_)
                                              (let ((_%$%e191316191328%_
                                                     (gx#syntax-e
                                                      _%$%e191303191320%_)))
                                                (let ((_%$%hd191317191331%_
                                                       (##car _%$%e191316191328%_))
                                                      (_%$%tl191318191333%_
                                                       (##cdr _%$%e191316191328%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd191317191331%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd191317191331%_
                                                            '%#begin-syntax))
                                                      (_%lp191277%_
                                                       _%rest191301%_
                                                       (cons _%hd191302%_
                                                             _%body191280%_)
                                                       _%ebody191281%_)
                                                      (_%$%E191315191324%_))))
                                              (_%$%E191315191324%_))))
                                       (_%$%E191304191370%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e191303191320%_)
                                              (let ((_%$%e191306191340%_
                                                     (gx#syntax-e
                                                      _%$%e191303191320%_)))
                                                (let ((_%$%hd191307191343%_
                                                       (##car _%$%e191306191340%_))
                                                      (_%$%tl191308191345%_
                                                       (##cdr _%$%e191306191340%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd191307191343%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd191307191343%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl191308191345%_)
                                                          (let ((_%$%e191309191348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl191308191345%_)))
                    (let ((_%$%hd191310191351%_ (##car _%$%e191309191348%_))
                          (_%$%tl191311191353%_ (##cdr _%$%e191309191348%_)))
                      (let ((_%hd-bind191356%_ _%$%hd191310191351%_))
                        (if (gx#stx-pair? _%$%tl191311191353%_)
                            (let ((_%$%e191312191358%_
                                   (gx#syntax-e _%$%tl191311191353%_)))
                              (let ((_%$%hd191313191361%_
                                     (##car _%$%e191312191358%_))
                                    (_%$%tl191314191363%_
                                     (##cdr _%$%e191312191358%_)))
                                (let ((_%expr191366%_ _%$%hd191313191361%_))
                                  (if (gx#stx-null? _%$%tl191314191363%_)
                                      (let ((_%ehd191368%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind191356%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr191366%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd191302%_))))
                                        (_%lp191277%_
                                         _%rest191301%_
                                         (cons _%ehd191368%_ _%body191280%_)
                                         (cons _%ehd191368%_ _%ebody191281%_)))
                                      (_%$%E191305191336%_)))))
                            (_%$%E191305191336%_)))))
                  (_%$%E191305191336%_))
              (_%$%E191305191336%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E191305191336%_)))))
                                  (_%$%E191304191370%_)))))
                        (if (pair? _%$%rest191282191290%_)
                            (let ((_%$%hd191287191377%_
                                   (##car _%$%rest191282191290%_))
                                  (_%$%tl191288191379%_
                                   (##cdr _%$%rest191282191290%_)))
                              (let* ((_%hd191382%_ _%$%hd191287191377%_)
                                     (_%rest191384%_ _%$%tl191288191379%_))
                                (_%$%K191286191374%_
                                 _%rest191384%_
                                 _%hd191382%_)))
                            (_%$%else191284191298%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody191270%_
                     (gx#core-expand-block__1
                      _%stx191264%_
                      _%expand-special191266%_
                      '#f))
                    (_g191643_ (_%eval-body191267%_ _%rbody191270%_)))
               (begin
                 (let ((_g191644_
                        (if (##values? _g191643_)
                            (##values-length _g191643_)
                            1)))
                   (if (not (##fx= _g191644_ 2))
                       (error "Context expects 2 values" _g191644_)))
                 (let ((_%expanded-body191272%_ (##values-ref _g191643_ 0))
                       (_%value191273%_ (##values-ref _g191643_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body191272%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value191273%_ '())))
                    (gx#stx-source _%stx191264%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx191234%_)
        (let* ((_%$%e191235191242%_ _%stx191234%_)
               (_%$%E191237191246%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191235191242%_)))
               (_%$%E191236191260%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191235191242%_)
                      (let ((_%$%e191238191250%_
                             (gx#syntax-e _%$%e191235191242%_)))
                        (let ((_%$%hd191239191253%_
                               (##car _%$%e191238191250%_))
                              (_%$%tl191240191255%_
                               (##cdr _%$%e191238191250%_)))
                          (let ((_%body191258%_ _%$%tl191240191255%_))
                            (if (gx#stx-list? _%body191258%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body191258%_)
                                 (gx#stx-source _%stx191234%_))
                                (_%$%E191237191246%_)))))
                      (_%$%E191237191246%_)))))
          (_%$%E191236191260%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx191232%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx191232%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx191178%_)
        (let* ((_%$%e191179191192%_ _%stx191178%_)
               (_%$%E191181191196%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191179191192%_)))
               (_%$%E191180191228%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191179191192%_)
                      (let ((_%$%e191182191200%_
                             (gx#syntax-e _%$%e191179191192%_)))
                        (let ((_%$%hd191183191203%_
                               (##car _%$%e191182191200%_))
                              (_%$%tl191184191205%_
                               (##cdr _%$%e191182191200%_)))
                          (if (gx#stx-pair? _%$%tl191184191205%_)
                              (let ((_%$%e191185191208%_
                                     (gx#syntax-e _%$%tl191184191205%_)))
                                (let ((_%$%hd191186191211%_
                                       (##car _%$%e191185191208%_))
                                      (_%$%tl191187191213%_
                                       (##cdr _%$%e191185191208%_)))
                                  (let ((_%ann191216%_ _%$%hd191186191211%_))
                                    (if (gx#stx-pair? _%$%tl191187191213%_)
                                        (let ((_%$%e191188191218%_
                                               (gx#syntax-e
                                                _%$%tl191187191213%_)))
                                          (let ((_%$%hd191189191221%_
                                                 (##car _%$%e191188191218%_))
                                                (_%$%tl191190191223%_
                                                 (##cdr _%$%e191188191218%_)))
                                            (let ((_%expr191226%_
                                                   _%$%hd191189191221%_))
                                              (if (gx#stx-null?
                                                   _%$%tl191190191223%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann191216%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr191226%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx191178%_))
                                                  (_%$%E191181191196%_)))))
                                        (_%$%E191181191196%_)))))
                              (_%$%E191181191196%_))))
                      (_%$%E191181191196%_)))))
          (_%$%E191180191228%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx190803%_ _%body190804%_)
        (letrec ((_%expand-special190806%_
                  (lambda (_%hd191173%_ _%K191174%_ _%rest191175%_ _%r191176%_)
                    (_%K191174%_
                     '()
                     (cons (_%expand-internal190807%_
                            _%hd191173%_
                            _%rest191175%_)
                           _%r191176%_))))
                 (_%expand-internal190807%_
                  (lambda (_%hd191169%_ _%rest191170%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal190809%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd191169%_ _%rest191170%_))
                          (gx#stx-source _%stx190803%_))
                         _%expand-internal-special190808%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj191627
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj191627)
                       __obj191627))))
                 (_%expand-internal-special190808%_
                  (lambda (_%hd190965%_ _%K190966%_ _%rest190967%_ _%r190968%_)
                    (let* ((_%$%e190969191017%_ _%hd190965%_)
                           (_%$%E191012191021%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e190969191017%_)))
                           (_%$%E190999191033%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190969191017%_)
                                  (let ((_%$%e191013191025%_
                                         (gx#syntax-e _%$%e190969191017%_)))
                                    (let ((_%$%hd191014191028%_
                                           (##car _%$%e191013191025%_))
                                          (_%$%tl191015191030%_
                                           (##cdr _%$%e191013191025%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191014191028%_)
                                               (gx#core-identifier=?
                                                _%$%hd191014191028%_
                                                '%#declare))
                                          (_%K190966%_
                                           _%rest190967%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd190965%_)
                                                 _%r190968%_))
                                          (_%$%E191012191021%_))))
                                  (_%$%E191012191021%_))))
                           (_%$%E190995191075%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190969191017%_)
                                  (let ((_%$%e191000191037%_
                                         (gx#syntax-e _%$%e190969191017%_)))
                                    (let ((_%$%hd191001191040%_
                                           (##car _%$%e191000191037%_))
                                          (_%$%tl191002191042%_
                                           (##cdr _%$%e191000191037%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191001191040%_)
                                               (gx#core-identifier=?
                                                _%$%hd191001191040%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl191002191042%_)
                                              (let ((_%$%e191003191045%_
                                                     (gx#syntax-e
                                                      _%$%tl191002191042%_)))
                                                (let ((_%$%hd191004191048%_
                                                       (##car _%$%e191003191045%_))
                                                      (_%$%tl191005191050%_
                                                       (##cdr _%$%e191003191045%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd191004191048%_)
                                                      (let ((_%$%e191009191053%_
                                                             (gx#syntax-e
                                                              _%$%hd191004191048%_)))
                                                        (let ((_%$%hd191010191056%_
                                                               (##car _%$%e191009191053%_))
                                                              (_%$%tl191011191058%_
                                                               (##cdr _%$%e191009191053%_)))
                                                          (let ((_%id191061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd191010191056%_))
                    (if (gx#stx-null? _%$%tl191011191058%_)
                        (if (gx#stx-pair? _%$%tl191005191050%_)
                            (let ((_%$%e191006191063%_
                                   (gx#syntax-e _%$%tl191005191050%_)))
                              (let ((_%$%hd191007191066%_
                                     (##car _%$%e191006191063%_))
                                    (_%$%tl191008191068%_
                                     (##cdr _%$%e191006191063%_)))
                                (let ((_%props191071%_ _%$%hd191007191066%_))
                                  (if (gx#stx-null? _%$%tl191008191068%_)
                                      (let ((_%bind191073%_
                                             (gx#resolve-identifier__0
                                              _%id191061%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind191073%_
                                         _%props191071%_)
                                        (_%K190966%_
                                         _%rest190967%_
                                         _%r190968%_))
                                      (_%$%E190999191033%_)))))
                            (_%$%E190999191033%_))
                        (_%$%E190999191033%_)))))
              (_%$%E190999191033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E190999191033%_))
                                          (_%$%E190999191033%_))))
                                  (_%$%E190999191033%_))))
                           (_%$%E190991191087%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190969191017%_)
                                  (let ((_%$%e190996191079%_
                                         (gx#syntax-e _%$%e190969191017%_)))
                                    (let ((_%$%hd190997191082%_
                                           (##car _%$%e190996191079%_))
                                          (_%$%tl190998191084%_
                                           (##cdr _%$%e190996191079%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190997191082%_)
                                               (gx#core-identifier=?
                                                _%$%hd190997191082%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd190965%_)
                                            (_%K190966%_
                                             _%rest190967%_
                                             _%r190968%_))
                                          (_%$%E190995191075%_))))
                                  (_%$%E190995191075%_))))
                           (_%$%E190981191099%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190969191017%_)
                                  (let ((_%$%e190992191091%_
                                         (gx#syntax-e _%$%e190969191017%_)))
                                    (let ((_%$%hd190993191094%_
                                           (##car _%$%e190992191091%_))
                                          (_%$%tl190994191096%_
                                           (##cdr _%$%e190992191091%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190993191094%_)
                                               (gx#core-identifier=?
                                                _%$%hd190993191094%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd190965%_)
                                            (_%K190966%_
                                             _%rest190967%_
                                             _%r190968%_))
                                          (_%$%E190991191087%_))))
                                  (_%$%E190991191087%_))))
                           (_%$%E190971191131%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190969191017%_)
                                  (let ((_%$%e190982191103%_
                                         (gx#syntax-e _%$%e190969191017%_)))
                                    (let ((_%$%hd190983191106%_
                                           (##car _%$%e190982191103%_))
                                          (_%$%tl190984191108%_
                                           (##cdr _%$%e190982191103%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190983191106%_)
                                               (gx#core-identifier=?
                                                _%$%hd190983191106%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl190984191108%_)
                                              (let ((_%$%e190985191111%_
                                                     (gx#syntax-e
                                                      _%$%tl190984191108%_)))
                                                (let ((_%$%hd190986191114%_
                                                       (##car _%$%e190985191111%_))
                                                      (_%$%tl190987191116%_
                                                       (##cdr _%$%e190985191111%_)))
                                                  (let ((_%hd-bind191119%_
                                                         _%$%hd190986191114%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl190987191116%_)
                                                        (let ((_%$%e190988191121%_
                                                               (gx#syntax-e
                                                                _%$%tl190987191116%_)))
                                                          (let ((_%$%hd190989191124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e190988191121%_))
                        (_%$%tl190990191126%_ (##cdr _%$%e190988191121%_)))
                    (let ((_%expr191129%_ _%$%hd190989191124%_))
                      (if (gx#stx-null? _%$%tl190990191126%_)
                          (if (gx#core-bind-values? _%hd-bind191119%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind191119%_)
                                (_%K190966%_
                                 _%rest190967%_
                                 (cons _%hd190965%_ _%r190968%_)))
                              (_%$%E190981191099%_))
                          (_%$%E190981191099%_)))))
                (_%$%E190981191099%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E190981191099%_))
                                          (_%$%E190981191099%_))))
                                  (_%$%E190981191099%_))))
                           (_%$%E190970191165%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e190969191017%_)
                                  (let ((_%$%e190972191135%_
                                         (gx#syntax-e _%$%e190969191017%_)))
                                    (let ((_%$%hd190973191138%_
                                           (##car _%$%e190972191135%_))
                                          (_%$%tl190974191140%_
                                           (##cdr _%$%e190972191135%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd190973191138%_)
                                               (gx#core-identifier=?
                                                _%$%hd190973191138%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl190974191140%_)
                                              (let ((_%$%e190975191143%_
                                                     (gx#syntax-e
                                                      _%$%tl190974191140%_)))
                                                (let ((_%$%hd190976191146%_
                                                       (##car _%$%e190975191143%_))
                                                      (_%$%tl190977191148%_
                                                       (##cdr _%$%e190975191143%_)))
                                                  (let ((_%hd-bind191151%_
                                                         _%$%hd190976191146%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl190977191148%_)
                                                        (let ((_%$%e190978191153%_
                                                               (gx#syntax-e
                                                                _%$%tl190977191148%_)))
                                                          (let ((_%$%hd190979191156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e190978191153%_))
                        (_%$%tl190980191158%_ (##cdr _%$%e190978191153%_)))
                    (let* ((_%expr191161%_ _%$%hd190979191156%_)
                           (_%props191163%_ _%$%tl190980191158%_))
                      (if (and (gx#core-bind-values? _%hd-bind191151%_)
                               (gx#stx-list? _%props191163%_)
                               (not (gx#stx-null? _%props191163%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind191151%_)
                            (_%K190966%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind191151%_
                                          (cons _%props191163%_ '())))
                                   _%rest190967%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind191151%_
                                          (cons _%expr191161%_ '())))
                                   _%r190968%_)))
                          (_%$%E190971191131%_)))))
                (_%$%E190971191131%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E190971191131%_))
                                          (_%$%E190971191131%_))))
                                  (_%$%E190971191131%_)))))
                      (_%$%E190970191165%_))))
                 (_%wrap-internal190809%_
                  (lambda (_%rbody190811%_)
                    (let _%lp190813%_ ((_%rest190815%_ _%rbody190811%_)
                                       (_%decls190816%_ '())
                                       (_%bind190817%_ '())
                                       (_%body190818%_ '()))
                      (let* ((_%$%e190819190826%_ _%rest190815%_)
                             (_%$%E190821190875%_
                              (lambda ()
                                (let* ((_%body190870%_
                                        (let* ((_%$%body190829190839%_
                                                _%body190818%_)
                                               (_%$%else190832190847%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body190818%_)
                                                   (gx#stx-source
                                                    _%stx190803%_)))))
                                          (let ((_%$%K190837190867%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx190803%_)))
                                                (_%$%K190834190853%_
                                                 (lambda (_%expr190851%_)
                                                   _%expr190851%_)))
                                            (let ((_%$%try-match190831190863%_
                                                   (lambda ()
                                                     (if (pair? _%$%body190829190839%_)
                                                         (let ((_%$%tl190836190858%_
                                                                (##cdr _%$%body190829190839%_))
                                                               (_%$%hd190835190856%_
                                                                (##car _%$%body190829190839%_)))
                                                           (if (null? _%$%tl190836190858%_)
                                                               (let ((_%expr190861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%hd190835190856%_))
                         (_%$%K190834190853%_ _%expr190861%_))
                       (_%$%else190832190847%_)))
                 (_%$%else190832190847%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%$%body190829190839%_)
                                                  (_%$%K190837190867%_)
                                                  (_%$%try-match190831190863%_))))))
                                       (_%body190872%_
                                        (if (null? _%bind190817%_)
                                            _%body190870%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind190817%_
                                                         (cons _%body190870%_
                                                               '())))
                                             (gx#stx-source _%stx190803%_)))))
                                  (if (null? _%decls190816%_)
                                      _%body190872%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls190816%_
                                                   (cons _%body190872%_ '())))
                                       (gx#stx-source _%stx190803%_))))))
                             (_%$%E190820190961%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e190819190826%_)
                                    (let ((_%$%e190822190879%_
                                           (gx#syntax-e _%$%e190819190826%_)))
                                      (let ((_%$%hd190823190882%_
                                             (##car _%$%e190822190879%_))
                                            (_%$%tl190824190884%_
                                             (##cdr _%$%e190822190879%_)))
                                        (let* ((_%hd190887%_
                                                _%$%hd190823190882%_)
                                               (_%rest190889%_
                                                _%$%tl190824190884%_)
                                               (_%$%e190890190907%_
                                                _%hd190887%_)
                                               (_%$%E190902190911%_
                                                (lambda ()
                                                  (if (null? _%bind190817%_)
                                                      (_%lp190813%_
                                                       _%rest190889%_
                                                       _%decls190816%_
                                                       _%bind190817%_
                                                       (cons _%hd190887%_
                                                             _%body190818%_))
                                                      (_%lp190813%_
                                                       _%rest190889%_
                                                       _%decls190816%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd190887%_ '()))
                     _%bind190817%_)
               _%body190818%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E190892190925%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e190890190907%_)
                                                      (let ((_%$%e190903190915%_
                                                             (gx#syntax-e
                                                              _%$%e190890190907%_)))
                                                        (let ((_%$%hd190904190918%_
                                                               (##car _%$%e190903190915%_))
                                                              (_%$%tl190905190920%_
                                                               (##cdr _%$%e190903190915%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd190904190918%_)
                           (gx#core-identifier=?
                            _%$%hd190904190918%_
                            '%#declare))
                      (let ((_%xdecls190923%_ _%$%tl190905190920%_))
                        (_%lp190813%_
                         _%rest190889%_
                         (gx#stx-foldr cons _%decls190816%_ _%xdecls190923%_)
                         _%bind190817%_
                         _%body190818%_))
                      (_%$%E190902190911%_))))
              (_%$%E190902190911%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E190891190957%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e190890190907%_)
                                                      (let ((_%$%e190893190929%_
                                                             (gx#syntax-e
                                                              _%$%e190890190907%_)))
                                                        (let ((_%$%hd190894190932%_
                                                               (##car _%$%e190893190929%_))
                                                              (_%$%tl190895190934%_
                                                               (##cdr _%$%e190893190929%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd190894190932%_)
                           (gx#core-identifier=?
                            _%$%hd190894190932%_
                            '%#define-values))
                      (if (gx#stx-pair? _%$%tl190895190934%_)
                          (let ((_%$%e190896190937%_
                                 (gx#syntax-e _%$%tl190895190934%_)))
                            (let ((_%$%hd190897190940%_
                                   (##car _%$%e190896190937%_))
                                  (_%$%tl190898190942%_
                                   (##cdr _%$%e190896190937%_)))
                              (let ((_%hd-bind190945%_ _%$%hd190897190940%_))
                                (if (gx#stx-pair? _%$%tl190898190942%_)
                                    (let ((_%$%e190899190947%_
                                           (gx#syntax-e _%$%tl190898190942%_)))
                                      (let ((_%$%hd190900190950%_
                                             (##car _%$%e190899190947%_))
                                            (_%$%tl190901190952%_
                                             (##cdr _%$%e190899190947%_)))
                                        (let ((_%expr190955%_
                                               _%$%hd190900190950%_))
                                          (if (gx#stx-null?
                                               _%$%tl190901190952%_)
                                              (_%lp190813%_
                                               _%rest190889%_
                                               _%decls190816%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind190945%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr190955%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind190817%_)
                                               _%body190818%_)
                                              (_%$%E190892190925%_)))))
                                    (_%$%E190892190925%_)))))
                          (_%$%E190892190925%_))
                      (_%$%E190892190925%_))))
              (_%$%E190892190925%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%E190891190957%_))))
                                    (_%$%E190821190875%_)))))
                        (_%$%E190820190961%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body190804%_)
            (gx#stx-source _%stx190803%_))
           _%expand-special190806%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx190741%_)
        (let* ((_%$%e190742190749%_ _%stx190741%_)
               (_%$%E190744190753%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190742190749%_)))
               (_%$%E190743190799%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190742190749%_)
                      (let ((_%$%e190745190757%_
                             (gx#syntax-e _%$%e190742190749%_)))
                        (let ((_%$%hd190746190760%_
                               (##car _%$%e190745190757%_))
                              (_%$%tl190747190762%_
                               (##cdr _%$%e190745190757%_)))
                          (let ((_%body190765%_ _%$%tl190747190762%_))
                            (if (gx#stx-list? _%body190765%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl190767%_)
                                     (let* ((_%$%e190768190775%_
                                             _%decl190767%_)
                                            (_%$%E190770190779%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%$%e190768190775%_)))
                                            (_%$%E190769190795%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%$%e190768190775%_)
                                                   (let ((_%$%e190771190783%_
                                                          (gx#syntax-e
                                                           _%$%e190768190775%_)))
                                                     (let ((_%$%hd190772190786%_
                                                            (##car _%$%e190771190783%_))
                                                           (_%$%tl190773190788%_
                                                            (##cdr _%$%e190771190783%_)))
                                                       (let* ((_%head190791%_
                                                               _%$%hd190772190786%_)
                                                              (_%args190793%_
                                                               _%$%tl190773190788%_))
                                                         (if (gx#stx-list?
                                                              _%args190793%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl190767%_)
                                                             (_%$%E190770190779%_)))))
                                                   (_%$%E190770190779%_)))))
                                       (_%$%E190769190795%_)))
                                   _%body190765%_))
                                 (gx#stx-source _%stx190741%_))
                                (_%$%E190744190753%_)))))
                      (_%$%E190744190753%_)))))
          (_%$%E190743190799%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx190645%_)
        (let* ((_%$%e190646190653%_ _%stx190645%_)
               (_%$%E190648190657%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190646190653%_)))
               (_%$%E190647190737%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190646190653%_)
                      (let ((_%$%e190649190661%_
                             (gx#syntax-e _%$%e190646190653%_)))
                        (let ((_%$%hd190650190664%_
                               (##car _%$%e190649190661%_))
                              (_%$%tl190651190666%_
                               (##cdr _%$%e190649190661%_)))
                          (let ((_%body190669%_ _%$%tl190651190666%_))
                            (let _%lp190671%_ ((_%rest190673%_ _%body190669%_)
                                               (_%r190674%_ '()))
                              (let* ((_%$%e190675190689%_ _%rest190673%_)
                                     (_%$%E190687190693%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx190645%_)))
                                     (_%$%E190677190697%_
                                      (lambda ()
                                        (if (gx#stx-null? _%$%e190675190689%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r190674%_))
                                             (gx#stx-source _%stx190645%_))
                                            (_%$%E190687190693%_))))
                                     (_%$%E190676190733%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e190675190689%_)
                                            (let ((_%$%e190678190701%_
                                                   (gx#syntax-e
                                                    _%$%e190675190689%_)))
                                              (let ((_%$%hd190679190704%_
                                                     (##car _%$%e190678190701%_))
                                                    (_%$%tl190680190706%_
                                                     (##cdr _%$%e190678190701%_)))
                                                (if (gx#stx-pair?
                                                     _%$%hd190679190704%_)
                                                    (let ((_%$%e190681190709%_
                                                           (gx#syntax-e
                                                            _%$%hd190679190704%_)))
                                                      (let ((_%$%hd190682190712%_
                                                             (##car _%$%e190681190709%_))
                                                            (_%$%tl190683190714%_
                                                             (##cdr _%$%e190681190709%_)))
                                                        (let ((_%id190717%_
                                                               _%$%hd190682190712%_))
                                                          (if (gx#stx-pair?
                                                               _%$%tl190683190714%_)
                                                              (let ((_%$%e190684190719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl190683190714%_)))
                        (let ((_%$%hd190685190722%_
                               (##car _%$%e190684190719%_))
                              (_%$%tl190686190724%_
                               (##cdr _%$%e190684190719%_)))
                          (let ((_%eid190727%_ _%$%hd190685190722%_))
                            (if (gx#stx-null? _%$%tl190686190724%_)
                                (let ((_%rest190729%_ _%$%tl190680190706%_))
                                  (if (and (gx#identifier? _%id190717%_)
                                           (gx#identifier? _%eid190727%_))
                                      (let ((_%eid190731%_
                                             (gx#stx-e _%eid190727%_)))
                                        (gx#core-bind-extern!__0
                                         _%id190717%_
                                         _%eid190731%_)
                                        (_%lp190671%_
                                         _%rest190729%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id190717%_)
                                                     (cons _%eid190731%_ '()))
                                               _%r190674%_)))
                                      (_%$%E190677190697%_)))
                                (_%$%E190677190697%_)))))
                      (_%$%E190677190697%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E190677190697%_))))
                                            (_%$%E190677190697%_)))))
                                (_%$%E190676190733%_))))))
                      (_%$%E190648190657%_)))))
          (_%$%E190647190737%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx190547%_)
        (let* ((_%$%e190548190571%_ _%stx190547%_)
               (_%$%E190560190575%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190548190571%_)))
               (_%$%E190550190607%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190548190571%_)
                      (let ((_%$%e190561190579%_
                             (gx#syntax-e _%$%e190548190571%_)))
                        (let ((_%$%hd190562190582%_
                               (##car _%$%e190561190579%_))
                              (_%$%tl190563190584%_
                               (##cdr _%$%e190561190579%_)))
                          (if (gx#stx-pair? _%$%tl190563190584%_)
                              (let ((_%$%e190564190587%_
                                     (gx#syntax-e _%$%tl190563190584%_)))
                                (let ((_%$%hd190565190590%_
                                       (##car _%$%e190564190587%_))
                                      (_%$%tl190566190592%_
                                       (##cdr _%$%e190564190587%_)))
                                  (let ((_%hd190595%_ _%$%hd190565190590%_))
                                    (if (gx#stx-pair? _%$%tl190566190592%_)
                                        (let ((_%$%e190567190597%_
                                               (gx#syntax-e
                                                _%$%tl190566190592%_)))
                                          (let ((_%$%hd190568190600%_
                                                 (##car _%$%e190567190597%_))
                                                (_%$%tl190569190602%_
                                                 (##cdr _%$%e190567190597%_)))
                                            (let ((_%expr190605%_
                                                   _%$%hd190568190600%_))
                                              (if (gx#stx-null?
                                                   _%$%tl190569190602%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd190595%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd190595%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd190595%_)
                             (cons (gx#core-expand-expression _%expr190605%_)
                                   '())))
                 (gx#stx-source _%stx190547%_)))
              (_%$%E190560190575%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E190560190575%_)))))
                                        (_%$%E190560190575%_)))))
                              (_%$%E190560190575%_))))
                      (_%$%E190560190575%_))))
               (_%$%E190549190641%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190548190571%_)
                      (let ((_%$%e190551190611%_
                             (gx#syntax-e _%$%e190548190571%_)))
                        (let ((_%$%hd190552190614%_
                               (##car _%$%e190551190611%_))
                              (_%$%tl190553190616%_
                               (##cdr _%$%e190551190611%_)))
                          (if (gx#stx-pair? _%$%tl190553190616%_)
                              (let ((_%$%e190554190619%_
                                     (gx#syntax-e _%$%tl190553190616%_)))
                                (let ((_%$%hd190555190622%_
                                       (##car _%$%e190554190619%_))
                                      (_%$%tl190556190624%_
                                       (##cdr _%$%e190554190619%_)))
                                  (let ((_%hd190627%_ _%$%hd190555190622%_))
                                    (if (gx#stx-pair? _%$%tl190556190624%_)
                                        (let ((_%$%e190557190629%_
                                               (gx#syntax-e
                                                _%$%tl190556190624%_)))
                                          (let ((_%$%hd190558190632%_
                                                 (##car _%$%e190557190629%_))
                                                (_%$%tl190559190634%_
                                                 (##cdr _%$%e190557190629%_)))
                                            (let* ((_%expr190637%_
                                                    _%$%hd190558190632%_)
                                                   (_%props190639%_
                                                    _%$%tl190559190634%_))
                                              (if (and (gx#stx-list?
                                                        _%props190639%_)
                                                       (not (gx#stx-null?
                                                             _%props190639%_)))
                                                  (gx#core-cons
                                                   '%#begin
                                                   (cons (gx#core-cons
                                                          '%#define-values
                                                          (cons _%hd190627%_
                                                                (cons _%expr190637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                 (cons (gx#core-cons
                        '%#bind-runtime-properties!
                        (cons _%hd190627%_ (cons _%props190639%_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E190550190607%_)))))
                                        (_%$%E190550190607%_)))))
                              (_%$%E190550190607%_))))
                      (_%$%E190550190607%_)))))
          (_%$%E190549190641%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx190486%_)
        (let* ((_%$%e190487190500%_ _%stx190486%_)
               (_%$%E190489190504%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190487190500%_)))
               (_%$%E190488190543%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190487190500%_)
                      (let ((_%$%e190490190508%_
                             (gx#syntax-e _%$%e190487190500%_)))
                        (let ((_%$%hd190491190511%_
                               (##car _%$%e190490190508%_))
                              (_%$%tl190492190513%_
                               (##cdr _%$%e190490190508%_)))
                          (if (gx#stx-pair? _%$%tl190492190513%_)
                              (let ((_%$%e190493190516%_
                                     (gx#syntax-e _%$%tl190492190513%_)))
                                (let ((_%$%hd190494190519%_
                                       (##car _%$%e190493190516%_))
                                      (_%$%tl190495190521%_
                                       (##cdr _%$%e190493190516%_)))
                                  (let ((_%id190524%_ _%$%hd190494190519%_))
                                    (if (gx#stx-pair? _%$%tl190495190521%_)
                                        (let ((_%$%e190496190526%_
                                               (gx#syntax-e
                                                _%$%tl190495190521%_)))
                                          (let ((_%$%hd190497190529%_
                                                 (##car _%$%e190496190526%_))
                                                (_%$%tl190498190531%_
                                                 (##cdr _%$%e190496190526%_)))
                                            (let* ((_%binding-id190534%_
                                                    _%$%hd190497190529%_)
                                                   (_%props190536%_
                                                    _%$%tl190498190531%_))
                                              (if (and (gx#identifier?
                                                        _%id190524%_)
                                                       (gx#identifier?
                                                        _%binding-id190534%_)
                                                       (gx#stx-list?
                                                        _%props190536%_))
                                                  (let* ((_%eid190538%_
                                                          (gx#stx-e
                                                           _%binding-id190534%_))
                                                         (_%bind190540%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id190524%_
                                                           _%eid190538%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind190540%_
                                                     _%props190536%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id190524%_)
                         (cons _%eid190538%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E190489190504%_)))))
                                        (_%$%E190489190504%_)))))
                              (_%$%E190489190504%_))))
                      (_%$%E190489190504%_)))))
          (_%$%E190488190543%_))))
    (define gx#core-expand-bind-runtime-properties%
      (lambda (_%stx190419%_)
        (let* ((_%$%e190420190436%_ _%stx190419%_)
               (_%$%E190422190440%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190420190436%_)))
               (_%$%E190421190482%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190420190436%_)
                      (let ((_%$%e190423190444%_
                             (gx#syntax-e _%$%e190420190436%_)))
                        (let ((_%$%hd190424190447%_
                               (##car _%$%e190423190444%_))
                              (_%$%tl190425190449%_
                               (##cdr _%$%e190423190444%_)))
                          (if (gx#stx-pair? _%$%tl190425190449%_)
                              (let ((_%$%e190426190452%_
                                     (gx#syntax-e _%$%tl190425190449%_)))
                                (let ((_%$%hd190427190455%_
                                       (##car _%$%e190426190452%_))
                                      (_%$%tl190428190457%_
                                       (##cdr _%$%e190426190452%_)))
                                  (if (gx#stx-pair? _%$%hd190427190455%_)
                                      (let ((_%$%e190432190460%_
                                             (gx#syntax-e
                                              _%$%hd190427190455%_)))
                                        (let ((_%$%hd190433190463%_
                                               (##car _%$%e190432190460%_))
                                              (_%$%tl190434190465%_
                                               (##cdr _%$%e190432190460%_)))
                                          (let ((_%id190468%_
                                                 _%$%hd190433190463%_))
                                            (if (gx#stx-null?
                                                 _%$%tl190434190465%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl190428190457%_)
                                                    (let ((_%$%e190429190470%_
                                                           (gx#syntax-e
                                                            _%$%tl190428190457%_)))
                                                      (let ((_%$%hd190430190473%_
                                                             (##car _%$%e190429190470%_))
                                                            (_%$%tl190431190475%_
                                                             (##cdr _%$%e190429190470%_)))
                                                        (let ((_%props190478%_
                                                               _%$%hd190430190473%_))
                                                          (if (gx#stx-null?
                                                               _%$%tl190431190475%_)
                                                              (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%id190468%_)
                               (gx#stx-list? _%props190478%_))
                          (let ((_%bind190480%_
                                 (gx#resolve-identifier__0 _%id190468%_)))
                            (if (##structure-instance-of?
                                 _%bind190480%_
                                 'gx#runtime-binding::t)
                                '#!void
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; expected runtime binding"
                                 _%stx190419%_
                                 _%id190468%_
                                 _%bind190480%_))
                            (gx#core-bind-runtime-properties!
                             _%bind190480%_
                             _%props190478%_)
                            (gx#core-cons '%#begin '()))
                          (_%$%E190422190440%_))
                      (_%$%E190422190440%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E190422190440%_))
                                                (_%$%E190422190440%_)))))
                                      (_%$%E190422190440%_))))
                              (_%$%E190422190440%_))))
                      (_%$%E190422190440%_)))))
          (_%$%E190421190482%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind190354%_ _%props190355%_)
        (letrec ((_%eval-prop190357%_
                  (lambda (_%prop190417%_)
                    (gx#eval-expression+1 _%prop190417%_))))
          (let _%loop190359%_ ((_%rest190361%_ _%props190355%_)
                               (_%props190362%_ '()))
            (let* ((_%$%e190363190374%_ _%rest190361%_)
                   (_%$%E190372190378%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e190363190374%_)))
                   (_%$%E190365190382%_
                    (lambda ()
                      (if (gx#stx-null? _%$%e190363190374%_)
                          (if (null? _%props190362%_)
                              '#!void
                              (##structure-set!
                               _%bind190354%_
                               (reverse! _%props190362%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%$%E190372190378%_))))
                   (_%$%E190364190413%_
                    (lambda ()
                      (if (gx#stx-pair? _%$%e190363190374%_)
                          (let ((_%$%e190366190386%_
                                 (gx#syntax-e _%$%e190363190374%_)))
                            (let ((_%$%hd190367190389%_
                                   (##car _%$%e190366190386%_))
                                  (_%$%tl190368190391%_
                                   (##cdr _%$%e190366190386%_)))
                              (let ((_%key190394%_ _%$%hd190367190389%_))
                                (if (gx#stx-pair? _%$%tl190368190391%_)
                                    (let ((_%$%e190369190396%_
                                           (gx#syntax-e _%$%tl190368190391%_)))
                                      (let ((_%$%hd190370190399%_
                                             (##car _%$%e190369190396%_))
                                            (_%$%tl190371190401%_
                                             (##cdr _%$%e190369190396%_)))
                                        (let* ((_%prop190404%_
                                                _%$%hd190370190399%_)
                                               (_%rest190406%_
                                                _%$%tl190371190401%_))
                                          (if (gx#stx-keyword? _%key190394%_)
                                              (let* ((_%key190408%_
                                                      (gx#stx-e _%key190394%_))
                                                     (_%$e190410%_
                                                      _%key190408%_))
                                                (if (eq? 'macro: _%$e190410%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind190354%_
                                                       (if (gx#identifier?
                                                            _%prop190404%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop190404%_)
                                                           (gx#eval-expression+1
                                                            _%prop190404%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop190359%_
                                                       _%rest190406%_
                                                       _%props190362%_))
                                                    (if (eq? 'type:
                                                             _%$e190410%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind190354%_
                                                           (gx#eval-expression+1
                                                            _%prop190404%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop190359%_
                                                           _%rest190406%_
                                                           _%props190362%_))
                                                        (_%loop190359%_
                                                         _%rest190406%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop190404%_)
                                                               (cons _%key190408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props190362%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E190365190382%_)))))
                                    (_%$%E190365190382%_)))))
                          (_%$%E190365190382%_)))))
              (_%$%E190364190413%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx190297%_)
        (let* ((_%$%e190298190311%_ _%stx190297%_)
               (_%$%E190300190315%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190298190311%_)))
               (_%$%E190299190350%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190298190311%_)
                      (let ((_%$%e190301190319%_
                             (gx#syntax-e _%$%e190298190311%_)))
                        (let ((_%$%hd190302190322%_
                               (##car _%$%e190301190319%_))
                              (_%$%tl190303190324%_
                               (##cdr _%$%e190301190319%_)))
                          (if (gx#stx-pair? _%$%tl190303190324%_)
                              (let ((_%$%e190304190327%_
                                     (gx#syntax-e _%$%tl190303190324%_)))
                                (let ((_%$%hd190305190330%_
                                       (##car _%$%e190304190327%_))
                                      (_%$%tl190306190332%_
                                       (##cdr _%$%e190304190327%_)))
                                  (let ((_%id190335%_ _%$%hd190305190330%_))
                                    (if (gx#stx-pair? _%$%tl190306190332%_)
                                        (let ((_%$%e190307190337%_
                                               (gx#syntax-e
                                                _%$%tl190306190332%_)))
                                          (let ((_%$%hd190308190340%_
                                                 (##car _%$%e190307190337%_))
                                                (_%$%tl190309190342%_
                                                 (##cdr _%$%e190307190337%_)))
                                            (let ((_%expr190345%_
                                                   _%$%hd190308190340%_))
                                              (if (gx#stx-null?
                                                   _%$%tl190309190342%_)
                                                  (if (gx#identifier?
                                                       _%id190335%_)
                                                      (let ((_g191645_
                                                             (gx#core-expand-expression+1
                                                              _%expr190345%_)))
                                                        (begin
                                                          (let ((_g191646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g191645_)
                             (##values-length _g191645_)
                             1)))
                    (if (not (##fx= _g191646_ 2))
                        (error "Context expects 2 values" _g191646_)))
                  (let ((_%e-stx190347%_ (##values-ref _g191645_ 0))
                        (_%e190348%_ (##values-ref _g191645_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id190335%_ _%e190348%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id190335%_)
                                   (cons _%e-stx190347%_ '())))
                       (gx#stx-source _%stx190297%_))))))
              (_%$%E190300190315%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E190300190315%_)))))
                                        (_%$%E190300190315%_)))))
                              (_%$%E190300190315%_))))
                      (_%$%E190300190315%_)))))
          (_%$%E190299190350%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx190241%_)
        (let* ((_%$%e190242190255%_ _%stx190241%_)
               (_%$%E190244190259%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190242190255%_)))
               (_%$%E190243190293%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190242190255%_)
                      (let ((_%$%e190245190263%_
                             (gx#syntax-e _%$%e190242190255%_)))
                        (let ((_%$%hd190246190266%_
                               (##car _%$%e190245190263%_))
                              (_%$%tl190247190268%_
                               (##cdr _%$%e190245190263%_)))
                          (if (gx#stx-pair? _%$%tl190247190268%_)
                              (let ((_%$%e190248190271%_
                                     (gx#syntax-e _%$%tl190247190268%_)))
                                (let ((_%$%hd190249190274%_
                                       (##car _%$%e190248190271%_))
                                      (_%$%tl190250190276%_
                                       (##cdr _%$%e190248190271%_)))
                                  (let ((_%id190279%_ _%$%hd190249190274%_))
                                    (if (gx#stx-pair? _%$%tl190250190276%_)
                                        (let ((_%$%e190251190281%_
                                               (gx#syntax-e
                                                _%$%tl190250190276%_)))
                                          (let ((_%$%hd190252190284%_
                                                 (##car _%$%e190251190281%_))
                                                (_%$%tl190253190286%_
                                                 (##cdr _%$%e190251190281%_)))
                                            (let ((_%alias-id190289%_
                                                   _%$%hd190252190284%_))
                                              (if (gx#stx-null?
                                                   _%$%tl190253190286%_)
                                                  (if (and (gx#identifier?
                                                            _%id190279%_)
                                                           (gx#identifier?
                                                            _%alias-id190289%_))
                                                      (let ((_%alias-id190291%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id190289%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id190279%_
                                                         _%alias-id190291%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id190279%_)
                             (cons _%alias-id190291%_ '())))))
              (_%$%E190244190259%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E190244190259%_)))))
                                        (_%$%E190244190259%_)))))
                              (_%$%E190244190259%_))))
                      (_%$%E190244190259%_)))))
          (_%$%E190243190293%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx190184%_ _%wrap?190185%_)
        (let* ((_%$%e190186190196%_ _%stx190184%_)
               (_%$%E190188190200%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190186190196%_)))
               (_%$%E190187190227%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190186190196%_)
                      (let ((_%$%e190189190204%_
                             (gx#syntax-e _%$%e190186190196%_)))
                        (let ((_%$%hd190190190207%_
                               (##car _%$%e190189190204%_))
                              (_%$%tl190191190209%_
                               (##cdr _%$%e190189190204%_)))
                          (if (gx#stx-pair? _%$%tl190191190209%_)
                              (let ((_%$%e190192190212%_
                                     (gx#syntax-e _%$%tl190191190209%_)))
                                (let ((_%$%hd190193190215%_
                                       (##car _%$%e190192190212%_))
                                      (_%$%tl190194190217%_
                                       (##cdr _%$%e190192190212%_)))
                                  (let* ((_%hd190220%_ _%$%hd190193190215%_)
                                         (_%body190222%_ _%$%tl190194190217%_))
                                    (if (gx#core-bind-values? _%hd190220%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd190220%_)
                                           (let ((_%body190225%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd190220%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx190184%_
                                                               _%body190222%_)
                                                              '()))))
                                             (if _%wrap?190185%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body190225%_)
                                                  (gx#stx-source
                                                   _%stx190184%_))
                                                 _%body190225%_)))
                                         gx#current-expander-context
                                         (let ((__obj191628
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj191628)
                                           __obj191628))
                                        (_%$%E190188190200%_)))))
                              (_%$%E190188190200%_))))
                      (_%$%E190188190200%_)))))
          (_%$%E190187190227%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx190234%_)
        (let ((_%wrap?190236%_ '#t))
          (gx#core-expand-lambda%__% _%stx190234%_ _%wrap?190236%_))))
    (define gx#core-expand-lambda%
      (lambda _g191647_
        (let ((_g191648_ (##length _g191647_)))
          (cond ((##fx= _g191648_ 1)
                 (apply gx#core-expand-lambda%__0 _g191647_))
                ((##fx= _g191648_ 2)
                 (apply gx#core-expand-lambda%__% _g191647_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g191647_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx190148%_)
        (let* ((_%$%e190149190156%_ _%stx190148%_)
               (_%$%E190151190160%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190149190156%_)))
               (_%$%E190150190179%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190149190156%_)
                      (let ((_%$%e190152190164%_
                             (gx#syntax-e _%$%e190149190156%_)))
                        (let ((_%$%hd190153190167%_
                               (##car _%$%e190152190164%_))
                              (_%$%tl190154190169%_
                               (##cdr _%$%e190152190164%_)))
                          (let ((_%clauses190172%_ _%$%tl190154190169%_))
                            (if (gx#stx-list? _%clauses190172%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause190174%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause190174%_)
                                       (let ((_%$e190176%_
                                              (gx#stx-source
                                               _%clause190174%_)))
                                         (if _%$e190176%_
                                             _%$e190176%_
                                             (gx#stx-source _%stx190148%_))))
                                      '#f))
                                   _%clauses190172%_))
                                 (gx#stx-source _%stx190148%_))
                                (_%$%E190151190160%_)))))
                      (_%$%E190151190160%_)))))
          (_%$%E190150190179%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx190102%_)
        (let* ((_%$%e190103190113%_ _%stx190102%_)
               (_%$%E190105190117%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190103190113%_)))
               (_%$%E190104190144%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190103190113%_)
                      (let ((_%$%e190106190121%_
                             (gx#syntax-e _%$%e190103190113%_)))
                        (let ((_%$%hd190107190124%_
                               (##car _%$%e190106190121%_))
                              (_%$%tl190108190126%_
                               (##cdr _%$%e190106190121%_)))
                          (if (gx#stx-pair? _%$%tl190108190126%_)
                              (let ((_%$%e190109190129%_
                                     (gx#syntax-e _%$%tl190108190126%_)))
                                (let ((_%$%hd190110190132%_
                                       (##car _%$%e190109190129%_))
                                      (_%$%tl190111190134%_
                                       (##cdr _%$%e190109190129%_)))
                                  (let* ((_%hd190137%_ _%$%hd190110190132%_)
                                         (_%body190139%_ _%$%tl190111190134%_))
                                    (if (gx#core-expand-let-bind? _%hd190137%_)
                                        (let ((_%expressions190141%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd190137%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd190137%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd190137%_
                                                           _%expressions190141%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx190102%_
                         _%body190139%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx190102%_)))
                                           gx#current-expander-context
                                           (let ((__obj191629
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj191629)
                                             __obj191629)))
                                        (_%$%E190105190117%_)))))
                              (_%$%E190105190117%_))))
                      (_%$%E190105190117%_)))))
          (_%$%E190104190144%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx190047%_ _%form190048%_)
        (let* ((_%$%e190049190059%_ _%stx190047%_)
               (_%$%E190051190063%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190049190059%_)))
               (_%$%E190050190088%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190049190059%_)
                      (let ((_%$%e190052190067%_
                             (gx#syntax-e _%$%e190049190059%_)))
                        (let ((_%$%hd190053190070%_
                               (##car _%$%e190052190067%_))
                              (_%$%tl190054190072%_
                               (##cdr _%$%e190052190067%_)))
                          (if (gx#stx-pair? _%$%tl190054190072%_)
                              (let ((_%$%e190055190075%_
                                     (gx#syntax-e _%$%tl190054190072%_)))
                                (let ((_%$%hd190056190078%_
                                       (##car _%$%e190055190075%_))
                                      (_%$%tl190057190080%_
                                       (##cdr _%$%e190055190075%_)))
                                  (let* ((_%hd190083%_ _%$%hd190056190078%_)
                                         (_%body190085%_ _%$%tl190057190080%_))
                                    (if (gx#core-expand-let-bind? _%hd190083%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd190083%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form190048%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd190083%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd190083%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx190047%_
                                                               _%body190085%_)
                                                              '())))
                                            (gx#stx-source _%stx190047%_)))
                                         gx#current-expander-context
                                         (let ((__obj191630
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj191630)
                                           __obj191630))
                                        (_%$%E190051190063%_)))))
                              (_%$%E190051190063%_))))
                      (_%$%E190051190063%_)))))
          (_%$%E190050190088%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx190095%_)
        (let ((_%form190097%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx190095%_ _%form190097%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g191649_
        (let ((_g191650_ (##length _g191649_)))
          (cond ((##fx= _g191650_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g191649_))
                ((##fx= _g191650_ 2)
                 (apply gx#core-expand-letrec-values%__% _g191649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g191649_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx190044%_)
        (gx#core-expand-letrec-values%__% _%stx190044%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx190001%_)
        (if (gx#stx-list? _%stx190001%_)
            (gx#stx-andmap
             (lambda (_%bind190003%_)
               (let* ((_%$%e190004190014%_ _%bind190003%_)
                      (_%$%E190006190018%_ (lambda () '#f))
                      (_%$%E190005190040%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e190004190014%_)
                             (let ((_%$%e190007190022%_
                                    (gx#syntax-e _%$%e190004190014%_)))
                               (let ((_%$%hd190008190025%_
                                      (##car _%$%e190007190022%_))
                                     (_%$%tl190009190027%_
                                      (##cdr _%$%e190007190022%_)))
                                 (let ((_%hd190030%_ _%$%hd190008190025%_))
                                   (if (gx#stx-pair? _%$%tl190009190027%_)
                                       (let ((_%$%e190010190032%_
                                              (gx#syntax-e
                                               _%$%tl190009190027%_)))
                                         (let ((_%$%hd190011190035%_
                                                (##car _%$%e190010190032%_))
                                               (_%$%tl190012190037%_
                                                (##cdr _%$%e190010190032%_)))
                                           (if (gx#stx-null?
                                                _%$%tl190012190037%_)
                                               (gx#core-bind-values?
                                                _%hd190030%_)
                                               (_%$%E190006190018%_))))
                                       (_%$%E190006190018%_)))))
                             (_%$%E190006190018%_)))))
                 (_%$%E190005190040%_)))
             _%stx190001%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind189960%_)
        (let* ((_%$%e189961189971%_ _%bind189960%_)
               (_%$%E189963189975%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189961189971%_)))
               (_%$%E189962189997%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189961189971%_)
                      (let ((_%$%e189964189979%_
                             (gx#syntax-e _%$%e189961189971%_)))
                        (let ((_%$%hd189965189982%_
                               (##car _%$%e189964189979%_))
                              (_%$%tl189966189984%_
                               (##cdr _%$%e189964189979%_)))
                          (if (gx#stx-pair? _%$%tl189966189984%_)
                              (let ((_%$%e189967189987%_
                                     (gx#syntax-e _%$%tl189966189984%_)))
                                (let ((_%$%hd189968189990%_
                                       (##car _%$%e189967189987%_))
                                      (_%$%tl189969189992%_
                                       (##cdr _%$%e189967189987%_)))
                                  (let ((_%expr189995%_ _%$%hd189968189990%_))
                                    (if (gx#stx-null? _%$%tl189969189992%_)
                                        (gx#core-expand-expression
                                         _%expr189995%_)
                                        (_%$%E189963189975%_)))))
                              (_%$%E189963189975%_))))
                      (_%$%E189963189975%_)))))
          (_%$%E189962189997%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind189919%_)
        (let* ((_%$%e189920189930%_ _%bind189919%_)
               (_%$%E189922189934%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189920189930%_)))
               (_%$%E189921189956%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189920189930%_)
                      (let ((_%$%e189923189938%_
                             (gx#syntax-e _%$%e189920189930%_)))
                        (let ((_%$%hd189924189941%_
                               (##car _%$%e189923189938%_))
                              (_%$%tl189925189943%_
                               (##cdr _%$%e189923189938%_)))
                          (let ((_%hd189946%_ _%$%hd189924189941%_))
                            (if (gx#stx-pair? _%$%tl189925189943%_)
                                (let ((_%$%e189926189948%_
                                       (gx#syntax-e _%$%tl189925189943%_)))
                                  (let ((_%$%hd189927189951%_
                                         (##car _%$%e189926189948%_))
                                        (_%$%tl189928189953%_
                                         (##cdr _%$%e189926189948%_)))
                                    (if (gx#stx-null? _%$%tl189928189953%_)
                                        (gx#core-bind-values!__0 _%hd189946%_)
                                        (_%$%E189922189934%_))))
                                (_%$%E189922189934%_)))))
                      (_%$%E189922189934%_)))))
          (_%$%E189921189956%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind189877%_ _%expr189878%_)
        (let* ((_%$%e189879189889%_ _%bind189877%_)
               (_%$%E189881189893%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189879189889%_)))
               (_%$%E189880189915%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189879189889%_)
                      (let ((_%$%e189882189897%_
                             (gx#syntax-e _%$%e189879189889%_)))
                        (let ((_%$%hd189883189900%_
                               (##car _%$%e189882189897%_))
                              (_%$%tl189884189902%_
                               (##cdr _%$%e189882189897%_)))
                          (let ((_%hd189905%_ _%$%hd189883189900%_))
                            (if (gx#stx-pair? _%$%tl189884189902%_)
                                (let ((_%$%e189885189907%_
                                       (gx#syntax-e _%$%tl189884189902%_)))
                                  (let ((_%$%hd189886189910%_
                                         (##car _%$%e189885189907%_))
                                        (_%$%tl189887189912%_
                                         (##cdr _%$%e189885189907%_)))
                                    (if (gx#stx-null? _%$%tl189887189912%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd189905%_)
                                              (cons _%expr189878%_ '()))
                                        (_%$%E189881189893%_))))
                                (_%$%E189881189893%_)))))
                      (_%$%E189881189893%_)))))
          (_%$%E189880189915%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx189831%_)
        (let* ((_%$%e189832189842%_ _%stx189831%_)
               (_%$%E189834189846%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189832189842%_)))
               (_%$%E189833189873%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189832189842%_)
                      (let ((_%$%e189835189850%_
                             (gx#syntax-e _%$%e189832189842%_)))
                        (let ((_%$%hd189836189853%_
                               (##car _%$%e189835189850%_))
                              (_%$%tl189837189855%_
                               (##cdr _%$%e189835189850%_)))
                          (if (gx#stx-pair? _%$%tl189837189855%_)
                              (let ((_%$%e189838189858%_
                                     (gx#syntax-e _%$%tl189837189855%_)))
                                (let ((_%$%hd189839189861%_
                                       (##car _%$%e189838189858%_))
                                      (_%$%tl189840189863%_
                                       (##cdr _%$%e189838189858%_)))
                                  (let* ((_%hd189866%_ _%$%hd189839189861%_)
                                         (_%body189868%_ _%$%tl189840189863%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd189866%_)
                                        (let ((_%expanders189870%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd189866%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd189866%_
                                              _%expanders189870%_)
                                             (gx#core-expand-local-block
                                              _%stx189831%_
                                              _%body189868%_))
                                           gx#current-expander-context
                                           (let ((__obj191631
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj191631)
                                             __obj191631)))
                                        (_%$%E189834189846%_)))))
                              (_%$%E189834189846%_))))
                      (_%$%E189834189846%_)))))
          (_%$%E189833189873%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx189780%_)
        (let* ((_%$%e189781189791%_ _%stx189780%_)
               (_%$%E189783189795%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189781189791%_)))
               (_%$%E189782189827%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189781189791%_)
                      (let ((_%$%e189784189799%_
                             (gx#syntax-e _%$%e189781189791%_)))
                        (let ((_%$%hd189785189802%_
                               (##car _%$%e189784189799%_))
                              (_%$%tl189786189804%_
                               (##cdr _%$%e189784189799%_)))
                          (if (gx#stx-pair? _%$%tl189786189804%_)
                              (let ((_%$%e189787189807%_
                                     (gx#syntax-e _%$%tl189786189804%_)))
                                (let ((_%$%hd189788189810%_
                                       (##car _%$%e189787189807%_))
                                      (_%$%tl189789189812%_
                                       (##cdr _%$%e189787189807%_)))
                                  (let* ((_%hd189815%_ _%$%hd189788189810%_)
                                         (_%body189817%_ _%$%tl189789189812%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd189815%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd189815%_
                                            (make-list
                                             (gx#stx-length _%hd189815%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%$%g189819189822%_
                                                     _%$%g189820189824%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%$%g189819189822%_
                                               _%$%g189820189824%_
                                               '#t))
                                            _%hd189815%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd189815%_))
                                           (gx#core-expand-local-block
                                            _%stx189780%_
                                            _%body189817%_))
                                         gx#current-expander-context
                                         (let ((__obj191632
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj191632)
                                           __obj191632))
                                        (_%$%E189783189795%_)))))
                              (_%$%E189783189795%_))))
                      (_%$%E189783189795%_)))))
          (_%$%E189782189827%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx189737%_)
        (if (gx#stx-list? _%stx189737%_)
            (gx#stx-andmap
             (lambda (_%bind189739%_)
               (let* ((_%$%e189740189750%_ _%bind189739%_)
                      (_%$%E189742189754%_ (lambda () '#f))
                      (_%$%E189741189776%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e189740189750%_)
                             (let ((_%$%e189743189758%_
                                    (gx#syntax-e _%$%e189740189750%_)))
                               (let ((_%$%hd189744189761%_
                                      (##car _%$%e189743189758%_))
                                     (_%$%tl189745189763%_
                                      (##cdr _%$%e189743189758%_)))
                                 (let ((_%hd189766%_ _%$%hd189744189761%_))
                                   (if (gx#stx-pair? _%$%tl189745189763%_)
                                       (let ((_%$%e189746189768%_
                                              (gx#syntax-e
                                               _%$%tl189745189763%_)))
                                         (let ((_%$%hd189747189771%_
                                                (##car _%$%e189746189768%_))
                                               (_%$%tl189748189773%_
                                                (##cdr _%$%e189746189768%_)))
                                           (if (gx#stx-null?
                                                _%$%tl189748189773%_)
                                               (gx#identifier? _%hd189766%_)
                                               (_%$%E189742189754%_))))
                                       (_%$%E189742189754%_)))))
                             (_%$%E189742189754%_)))))
                 (_%$%E189741189776%_)))
             _%stx189737%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind189693%_)
        (let* ((_%$%e189694189704%_ _%bind189693%_)
               (_%$%E189696189708%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189694189704%_)))
               (_%$%E189695189733%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189694189704%_)
                      (let ((_%$%e189697189712%_
                             (gx#syntax-e _%$%e189694189704%_)))
                        (let ((_%$%hd189698189715%_
                               (##car _%$%e189697189712%_))
                              (_%$%tl189699189717%_
                               (##cdr _%$%e189697189712%_)))
                          (if (gx#stx-pair? _%$%tl189699189717%_)
                              (let ((_%$%e189700189720%_
                                     (gx#syntax-e _%$%tl189699189717%_)))
                                (let ((_%$%hd189701189723%_
                                       (##car _%$%e189700189720%_))
                                      (_%$%tl189702189725%_
                                       (##cdr _%$%e189700189720%_)))
                                  (let ((_%expr189728%_ _%$%hd189701189723%_))
                                    (if (gx#stx-null? _%$%tl189702189725%_)
                                        (let ((_g191651_
                                               (gx#core-expand-expression+1
                                                _%expr189728%_)))
                                          (begin
                                            (let ((_g191652_
                                                   (if (##values? _g191651_)
                                                       (##values-length
                                                        _g191651_)
                                                       1)))
                                              (if (not (##fx= _g191652_ 2))
                                                  (error "Context expects 2 values"
                                                         _g191652_)))
                                            (let ((_%_189730%_
                                                   (##values-ref _g191651_ 0))
                                                  (_%e189731%_
                                                   (##values-ref _g191651_ 1)))
                                              _%e189731%_)))
                                        (_%$%E189696189708%_)))))
                              (_%$%E189696189708%_))))
                      (_%$%E189696189708%_)))))
          (_%$%E189695189733%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind189638%_ _%e189639%_ _%rebind?189640%_)
        (let* ((_%$%e189641189651%_ _%bind189638%_)
               (_%$%E189643189655%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189641189651%_)))
               (_%$%E189642189677%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189641189651%_)
                      (let ((_%$%e189644189659%_
                             (gx#syntax-e _%$%e189641189651%_)))
                        (let ((_%$%hd189645189662%_
                               (##car _%$%e189644189659%_))
                              (_%$%tl189646189664%_
                               (##cdr _%$%e189644189659%_)))
                          (let ((_%id189667%_ _%$%hd189645189662%_))
                            (if (gx#stx-pair? _%$%tl189646189664%_)
                                (let ((_%$%e189647189669%_
                                       (gx#syntax-e _%$%tl189646189664%_)))
                                  (let ((_%$%hd189648189672%_
                                         (##car _%$%e189647189669%_))
                                        (_%$%tl189649189674%_
                                         (##cdr _%$%e189647189669%_)))
                                    (if (gx#stx-null? _%$%tl189649189674%_)
                                        (gx#core-bind-syntax!__1
                                         _%id189667%_
                                         _%e189639%_
                                         _%rebind?189640%_)
                                        (_%$%E189643189655%_))))
                                (_%$%E189643189655%_)))))
                      (_%$%E189643189655%_)))))
          (_%$%E189642189677%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind189684%_ _%e189685%_)
        (let ((_%rebind?189687%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind189684%_
           _%e189685%_
           _%rebind?189687%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g191653_
        (let ((_g191654_ (##length _g191653_)))
          (cond ((##fx= _g191654_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g191653_))
                ((##fx= _g191654_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g191653_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g191653_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx189596%_)
        (let* ((_%$%e189597189607%_ _%stx189596%_)
               (_%$%E189599189611%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189597189607%_)))
               (_%$%E189598189633%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189597189607%_)
                      (let ((_%$%e189600189615%_
                             (gx#syntax-e _%$%e189597189607%_)))
                        (let ((_%$%hd189601189618%_
                               (##car _%$%e189600189615%_))
                              (_%$%tl189602189620%_
                               (##cdr _%$%e189600189615%_)))
                          (if (gx#stx-pair? _%$%tl189602189620%_)
                              (let ((_%$%e189603189623%_
                                     (gx#syntax-e _%$%tl189602189620%_)))
                                (let ((_%$%hd189604189626%_
                                       (##car _%$%e189603189623%_))
                                      (_%$%tl189605189628%_
                                       (##cdr _%$%e189603189623%_)))
                                  (let ((_%expr189631%_ _%$%hd189604189626%_))
                                    (if (gx#stx-null? _%$%tl189605189628%_)
                                        (gx#core-expand-expression
                                         _%expr189631%_)
                                        (_%$%E189599189611%_)))))
                              (_%$%E189599189611%_))))
                      (_%$%E189599189611%_)))))
          (_%$%E189598189633%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx189555%_)
        (let* ((_%$%e189556189566%_ _%stx189555%_)
               (_%$%E189558189570%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189556189566%_)))
               (_%$%E189557189592%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189556189566%_)
                      (let ((_%$%e189559189574%_
                             (gx#syntax-e _%$%e189556189566%_)))
                        (let ((_%$%hd189560189577%_
                               (##car _%$%e189559189574%_))
                              (_%$%tl189561189579%_
                               (##cdr _%$%e189559189574%_)))
                          (if (gx#stx-pair? _%$%tl189561189579%_)
                              (let ((_%$%e189562189582%_
                                     (gx#syntax-e _%$%tl189561189579%_)))
                                (let ((_%$%hd189563189585%_
                                       (##car _%$%e189562189582%_))
                                      (_%$%tl189564189587%_
                                       (##cdr _%$%e189562189582%_)))
                                  (let ((_%e189590%_ _%$%hd189563189585%_))
                                    (if (gx#stx-null? _%$%tl189564189587%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e189590%_)
                                                     '()))
                                         (gx#stx-source _%stx189555%_))
                                        (_%$%E189558189570%_)))))
                              (_%$%E189558189570%_))))
                      (_%$%E189558189570%_)))))
          (_%$%E189557189592%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx189514%_)
        (let* ((_%$%e189515189525%_ _%stx189514%_)
               (_%$%E189517189529%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189515189525%_)))
               (_%$%E189516189551%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189515189525%_)
                      (let ((_%$%e189518189533%_
                             (gx#syntax-e _%$%e189515189525%_)))
                        (let ((_%$%hd189519189536%_
                               (##car _%$%e189518189533%_))
                              (_%$%tl189520189538%_
                               (##cdr _%$%e189518189533%_)))
                          (if (gx#stx-pair? _%$%tl189520189538%_)
                              (let ((_%$%e189521189541%_
                                     (gx#syntax-e _%$%tl189520189538%_)))
                                (let ((_%$%hd189522189544%_
                                       (##car _%$%e189521189541%_))
                                      (_%$%tl189523189546%_
                                       (##cdr _%$%e189521189541%_)))
                                  (let ((_%e189549%_ _%$%hd189522189544%_))
                                    (if (gx#stx-null? _%$%tl189523189546%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e189549%_)
                                                     '()))
                                         (gx#stx-source _%stx189514%_))
                                        (_%$%E189517189529%_)))))
                              (_%$%E189517189529%_))))
                      (_%$%E189517189529%_)))))
          (_%$%E189516189551%_))))
    (define gx#core-expand-call%
      (lambda (_%stx189408%_)
        (letrec ((_%expand-runtime-call189410%_
                  (lambda (_%rator-expr189511%_ _%args189512%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr189511%_
                      (gx#stx-map1 gx#core-expand-expression _%args189512%_))
                     (gx#stx-source _%stx189408%_)))))
          (let* ((_%$%e189411189421%_ _%stx189408%_)
                 (_%$%E189413189425%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e189411189421%_)))
                 (_%$%E189412189507%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e189411189421%_)
                        (let ((_%$%e189414189429%_
                               (gx#syntax-e _%$%e189411189421%_)))
                          (let ((_%$%hd189415189432%_
                                 (##car _%$%e189414189429%_))
                                (_%$%tl189416189434%_
                                 (##cdr _%$%e189414189429%_)))
                            (if (gx#stx-pair? _%$%tl189416189434%_)
                                (let ((_%$%e189417189437%_
                                       (gx#syntax-e _%$%tl189416189434%_)))
                                  (let ((_%$%hd189418189440%_
                                         (##car _%$%e189417189437%_))
                                        (_%$%tl189419189442%_
                                         (##cdr _%$%e189417189437%_)))
                                    (let* ((_%rator189445%_
                                            _%$%hd189418189440%_)
                                           (_%args189447%_
                                            _%$%tl189419189442%_))
                                      (if (gx#stx-list? _%args189447%_)
                                          (let* ((_%rator-expr189449%_
                                                  (gx#core-expand-expression
                                                   _%rator189445%_))
                                                 (_%$%e189450189460%_
                                                  _%rator-expr189449%_)
                                                 (_%$%E189452189464%_
                                                  (lambda ()
                                                    (_%expand-runtime-call189410%_
                                                     _%rator-expr189449%_
                                                     _%args189447%_)))
                                                 (_%$%E189451189503%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%$%e189450189460%_)
                                                        (let ((_%$%e189453189468%_
                                                               (gx#syntax-e
                                                                _%$%e189450189460%_)))
                                                          (let ((_%$%hd189454189471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e189453189468%_))
                        (_%$%tl189455189473%_ (##cdr _%$%e189453189468%_)))
                    (if (and (gx#identifier? _%$%hd189454189471%_)
                             (gx#core-identifier=?
                              _%$%hd189454189471%_
                              '%#ref))
                        (if (gx#stx-pair? _%$%tl189455189473%_)
                            (let ((_%$%e189456189476%_
                                   (gx#syntax-e _%$%tl189455189473%_)))
                              (let ((_%$%hd189457189479%_
                                     (##car _%$%e189456189476%_))
                                    (_%$%tl189458189481%_
                                     (##cdr _%$%e189456189476%_)))
                                (let ((_%id189484%_ _%$%hd189457189479%_))
                                  (if (gx#stx-null? _%$%tl189458189481%_)
                                      (let ((_%$e189486%_
                                             (gx#resolve-identifier__0
                                              _%id189484%_)))
                                        (if _%$e189486%_
                                            (let _%again189491%_ ((_%bind189493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e189486%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_%$e189495%_
                                                     (if (##structure-instance-of?
                                                          _%bind189493%_
                                                          'gx#runtime-binding::t)
                                                         (##unchecked-structure-ref
                                                          _%bind189493%_
                                                          '6
                                                          '#f
                                                          '#f)
                                                         '#f)))
                                                (if _%$e189495%_
                                                    (gx#core-expand-expression
                                                     (gx#stx-wrap-source
                                                      (cons _%$e189495%_
                                                            _%args189447%_)
                                                      (gx#stx-source
                                                       _%stx189408%_)))
                                                    (if (##structure-direct-instance-of?
                                                         _%bind189493%_
                                                         'gx#import-binding::t)
                                                        (_%again189491%_
                                                         (##unchecked-structure-ref
                                                          _%bind189493%_
                                                          '5
                                                          '#f
                                                          '#f))
                                                        (_%expand-runtime-call189410%_
                                                         _%rator-expr189449%_
                                                         _%args189447%_)))))
                                            (_%expand-runtime-call189410%_
                                             _%rator-expr189449%_
                                             _%args189447%_)))
                                      (_%$%E189452189464%_)))))
                            (_%$%E189452189464%_))
                        (_%$%E189452189464%_))))
                (_%$%E189452189464%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E189451189503%_))
                                          (_%$%E189413189425%_)))))
                                (_%$%E189413189425%_))))
                        (_%$%E189413189425%_)))))
            (_%$%E189412189507%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx189341%_)
        (let* ((_%$%e189342189358%_ _%stx189341%_)
               (_%$%E189344189362%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189342189358%_)))
               (_%$%E189343189404%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189342189358%_)
                      (let ((_%$%e189345189366%_
                             (gx#syntax-e _%$%e189342189358%_)))
                        (let ((_%$%hd189346189369%_
                               (##car _%$%e189345189366%_))
                              (_%$%tl189347189371%_
                               (##cdr _%$%e189345189366%_)))
                          (if (gx#stx-pair? _%$%tl189347189371%_)
                              (let ((_%$%e189348189374%_
                                     (gx#syntax-e _%$%tl189347189371%_)))
                                (let ((_%$%hd189349189377%_
                                       (##car _%$%e189348189374%_))
                                      (_%$%tl189350189379%_
                                       (##cdr _%$%e189348189374%_)))
                                  (let ((_%test189382%_ _%$%hd189349189377%_))
                                    (if (gx#stx-pair? _%$%tl189350189379%_)
                                        (let ((_%$%e189351189384%_
                                               (gx#syntax-e
                                                _%$%tl189350189379%_)))
                                          (let ((_%$%hd189352189387%_
                                                 (##car _%$%e189351189384%_))
                                                (_%$%tl189353189389%_
                                                 (##cdr _%$%e189351189384%_)))
                                            (let ((_%K189392%_
                                                   _%$%hd189352189387%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl189353189389%_)
                                                  (let ((_%$%e189354189394%_
                                                         (gx#syntax-e
                                                          _%$%tl189353189389%_)))
                                                    (let ((_%$%hd189355189397%_
                                                           (##car _%$%e189354189394%_))
                                                          (_%$%tl189356189399%_
                                                           (##cdr _%$%e189354189394%_)))
                                                      (let ((_%E189402%_
                                                             _%$%hd189355189397%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl189356189399%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test189382%_)
                                 (cons (gx#core-expand-expression _%K189392%_)
                                       (cons (gx#core-expand-expression
                                              _%E189402%_)
                                             '()))))
                     (gx#stx-source _%stx189341%_))
                    (_%$%E189344189362%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E189344189362%_)))))
                                        (_%$%E189344189362%_)))))
                              (_%$%E189344189362%_))))
                      (_%$%E189344189362%_)))))
          (_%$%E189343189404%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx189300%_)
        (let* ((_%$%e189301189311%_ _%stx189300%_)
               (_%$%E189303189315%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189301189311%_)))
               (_%$%E189302189337%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189301189311%_)
                      (let ((_%$%e189304189319%_
                             (gx#syntax-e _%$%e189301189311%_)))
                        (let ((_%$%hd189305189322%_
                               (##car _%$%e189304189319%_))
                              (_%$%tl189306189324%_
                               (##cdr _%$%e189304189319%_)))
                          (if (gx#stx-pair? _%$%tl189306189324%_)
                              (let ((_%$%e189307189327%_
                                     (gx#syntax-e _%$%tl189306189324%_)))
                                (let ((_%$%hd189308189330%_
                                       (##car _%$%e189307189327%_))
                                      (_%$%tl189309189332%_
                                       (##cdr _%$%e189307189327%_)))
                                  (let ((_%id189335%_ _%$%hd189308189330%_))
                                    (if (gx#stx-null? _%$%tl189309189332%_)
                                        (if (gx#identifier? _%id189335%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id189335%_
                                                          _%stx189300%_)
                                                         '()))
                                             (gx#stx-source _%stx189300%_))
                                            (_%$%E189303189315%_))
                                        (_%$%E189303189315%_)))))
                              (_%$%E189303189315%_))))
                      (_%$%E189303189315%_)))))
          (_%$%E189302189337%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx189246%_)
        (let* ((_%$%e189247189260%_ _%stx189246%_)
               (_%$%E189249189264%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189247189260%_)))
               (_%$%E189248189296%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189247189260%_)
                      (let ((_%$%e189250189268%_
                             (gx#syntax-e _%$%e189247189260%_)))
                        (let ((_%$%hd189251189271%_
                               (##car _%$%e189250189268%_))
                              (_%$%tl189252189273%_
                               (##cdr _%$%e189250189268%_)))
                          (if (gx#stx-pair? _%$%tl189252189273%_)
                              (let ((_%$%e189253189276%_
                                     (gx#syntax-e _%$%tl189252189273%_)))
                                (let ((_%$%hd189254189279%_
                                       (##car _%$%e189253189276%_))
                                      (_%$%tl189255189281%_
                                       (##cdr _%$%e189253189276%_)))
                                  (let ((_%id189284%_ _%$%hd189254189279%_))
                                    (if (gx#stx-pair? _%$%tl189255189281%_)
                                        (let ((_%$%e189256189286%_
                                               (gx#syntax-e
                                                _%$%tl189255189281%_)))
                                          (let ((_%$%hd189257189289%_
                                                 (##car _%$%e189256189286%_))
                                                (_%$%tl189258189291%_
                                                 (##cdr _%$%e189256189286%_)))
                                            (let ((_%expr189294%_
                                                   _%$%hd189257189289%_))
                                              (if (gx#stx-null?
                                                   _%$%tl189258189291%_)
                                                  (if (gx#identifier?
                                                       _%id189284%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id189284%_
                            _%stx189246%_)
                           (cons (gx#core-expand-expression _%expr189294%_)
                                 '())))
               (gx#stx-source _%stx189246%_))
              (_%$%E189249189264%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E189249189264%_)))))
                                        (_%$%E189249189264%_)))))
                              (_%$%E189249189264%_))))
                      (_%$%E189249189264%_)))))
          (_%$%E189248189296%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx189091%_)
        (letrec ((_%generate189093%_
                  (lambda (_%body189123%_)
                    (let _%lp189125%_ ((_%rest189127%_ _%body189123%_)
                                       (_%ns189128%_
                                        (gx#core-context-namespace__0))
                                       (_%r189129%_ '()))
                      (let* ((_%$%e189130189145%_ _%rest189127%_)
                             (_%$%E189143189149%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%$%e189130189145%_)))
                             (_%$%E189139189153%_
                              (lambda ()
                                (if (gx#stx-null? _%$%e189130189145%_)
                                    (reverse _%r189129%_)
                                    (_%$%E189143189149%_))))
                             (_%$%E189132189210%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e189130189145%_)
                                    (let ((_%$%e189140189157%_
                                           (gx#syntax-e _%$%e189130189145%_)))
                                      (let ((_%$%hd189141189160%_
                                             (##car _%$%e189140189157%_))
                                            (_%$%tl189142189162%_
                                             (##cdr _%$%e189140189157%_)))
                                        (let* ((_%hd189165%_
                                                _%$%hd189141189160%_)
                                               (_%rest189167%_
                                                _%$%tl189142189162%_))
                                          (if (gx#identifier? _%hd189165%_)
                                              (_%lp189125%_
                                               _%rest189167%_
                                               _%ns189128%_
                                               (cons (cons _%hd189165%_
                                                           (cons (if _%ns189128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd189165%_
                              _%ns189128%_
                              '"#"
                              _%hd189165%_)
                             _%hd189165%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r189129%_))
                                              (let* ((_%$%e189168189178%_
                                                      _%hd189165%_)
                                                     (_%$%E189170189182%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%$%e189168189178%_)))
                                                     (_%$%E189169189206%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%$%e189168189178%_)
                                                            (let ((_%$%e189171189186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%e189168189178%_)))
                      (let ((_%$%hd189172189189%_ (##car _%$%e189171189186%_))
                            (_%$%tl189173189191%_ (##cdr _%$%e189171189186%_)))
                        (let ((_%id189194%_ _%$%hd189172189189%_))
                          (if (gx#stx-pair? _%$%tl189173189191%_)
                              (let ((_%$%e189174189196%_
                                     (gx#syntax-e _%$%tl189173189191%_)))
                                (let ((_%$%hd189175189199%_
                                       (##car _%$%e189174189196%_))
                                      (_%$%tl189176189201%_
                                       (##cdr _%$%e189174189196%_)))
                                  (let ((_%eid189204%_ _%$%hd189175189199%_))
                                    (if (gx#stx-null? _%$%tl189176189201%_)
                                        (if (and (gx#identifier? _%id189194%_)
                                                 (gx#identifier?
                                                  _%eid189204%_))
                                            (_%lp189125%_
                                             _%rest189167%_
                                             _%ns189128%_
                                             (cons (cons _%id189194%_
                                                         (cons _%eid189204%_
                                                               '()))
                                                   _%r189129%_))
                                            (_%$%E189170189182%_))
                                        (_%$%E189170189182%_)))))
                              (_%$%E189170189182%_)))))
                    (_%$%E189170189182%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E189169189206%_))))))
                                    (_%$%E189139189153%_))))
                             (_%$%E189131189242%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e189130189145%_)
                                    (let ((_%$%e189133189214%_
                                           (gx#syntax-e _%$%e189130189145%_)))
                                      (let ((_%$%hd189134189217%_
                                             (##car _%$%e189133189214%_))
                                            (_%$%tl189135189219%_
                                             (##cdr _%$%e189133189214%_)))
                                        (if (eq? (gx#stx-e
                                                  _%$%hd189134189217%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%$%tl189135189219%_)
                                                (let ((_%$%e189136189222%_
                                                       (gx#syntax-e
                                                        _%$%tl189135189219%_)))
                                                  (let ((_%$%hd189137189225%_
                                                         (##car _%$%e189136189222%_))
                                                        (_%$%tl189138189227%_
                                                         (##cdr _%$%e189136189222%_)))
                                                    (let* ((_%ns189230%_
                                                            _%$%hd189137189225%_)
                                                           (_%rest189232%_
                                                            _%$%tl189138189227%_)
                                                           (_%ns189240%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns189230%_)
                        (symbol->string (gx#stx-e _%ns189230%_))
                        (if (or (gx#stx-string? _%ns189230%_)
                                (gx#stx-false? _%ns189230%_))
                            (gx#stx-e _%ns189230%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx189091%_
                             _%ns189230%_)))))
              (_%lp189125%_ _%rest189232%_ _%ns189240%_ _%r189129%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E189132189210%_))
                                            (_%$%E189132189210%_))))
                                    (_%$%E189132189210%_)))))
                        (_%$%E189131189242%_))))))
          (let* ((_%$%e189094189101%_ _%stx189091%_)
                 (_%$%E189096189105%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e189094189101%_)))
                 (_%$%E189095189119%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e189094189101%_)
                        (let ((_%$%e189097189109%_
                               (gx#syntax-e _%$%e189094189101%_)))
                          (let ((_%$%hd189098189112%_
                                 (##car _%$%e189097189109%_))
                                (_%$%tl189099189114%_
                                 (##cdr _%$%e189097189109%_)))
                            (let ((_%body189117%_ _%$%tl189099189114%_))
                              (if (gx#stx-list? _%body189117%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate189093%_ _%body189117%_))
                                  (_%$%E189096189105%_)))))
                        (_%$%E189096189105%_)))))
            (_%$%E189095189119%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx189048%_)
        (let* ((_%$%e189049189059%_ _%stx189048%_)
               (_%$%E189051189063%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189049189059%_)))
               (_%$%E189050189087%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189049189059%_)
                      (let ((_%$%e189052189067%_
                             (gx#syntax-e _%$%e189049189059%_)))
                        (let ((_%$%hd189053189070%_
                               (##car _%$%e189052189067%_))
                              (_%$%tl189054189072%_
                               (##cdr _%$%e189052189067%_)))
                          (if (gx#stx-pair? _%$%tl189054189072%_)
                              (let ((_%$%e189055189075%_
                                     (gx#syntax-e _%$%tl189054189072%_)))
                                (let ((_%$%hd189056189078%_
                                       (##car _%$%e189055189075%_))
                                      (_%$%tl189057189080%_
                                       (##cdr _%$%e189055189075%_)))
                                  (let* ((_%hd189083%_ _%$%hd189056189078%_)
                                         (_%body189085%_ _%$%tl189057189080%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd189083%_)
                                             (gx#stx-list? _%body189085%_)
                                             (not (gx#stx-null?
                                                   _%body189085%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd189083%_)
                                         _%body189085%_)
                                        (_%$%E189051189063%_)))))
                              (_%$%E189051189063%_))))
                      (_%$%E189051189063%_)))))
          (_%$%E189050189087%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx188984%_)
        (letrec ((_%generate188986%_
                  (lambda (_%clause189016%_)
                    (let* ((_%$%e189017189024%_ _%clause189016%_)
                           (_%$%E189019189028%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx188984%_
                               _%clause189016%_)))
                           (_%$%E189018189044%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189017189024%_)
                                  (let ((_%$%e189020189032%_
                                         (gx#syntax-e _%$%e189017189024%_)))
                                    (let ((_%$%hd189021189035%_
                                           (##car _%$%e189020189032%_))
                                          (_%$%tl189022189037%_
                                           (##cdr _%$%e189020189032%_)))
                                      (let* ((_%hd189040%_
                                              _%$%hd189021189035%_)
                                             (_%body189042%_
                                              _%$%tl189022189037%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd189040%_)
                                                 (gx#stx-list? _%body189042%_)
                                                 (not (gx#stx-null?
                                                       _%body189042%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd189040%_)
                                                   _%body189042%_)
                                             (gx#stx-source _%clause189016%_))
                                            (_%$%E189019189028%_)))))
                                  (_%$%E189019189028%_)))))
                      (_%$%E189018189044%_)))))
          (let* ((_%$%e188987188994%_ _%stx188984%_)
                 (_%$%E188989188998%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e188987188994%_)))
                 (_%$%E188988189012%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e188987188994%_)
                        (let ((_%$%e188990189002%_
                               (gx#syntax-e _%$%e188987188994%_)))
                          (let ((_%$%hd188991189005%_
                                 (##car _%$%e188990189002%_))
                                (_%$%tl188992189007%_
                                 (##cdr _%$%e188990189002%_)))
                            (let ((_%clauses189010%_ _%$%tl188992189007%_))
                              (if (gx#stx-list? _%clauses189010%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate188986%_
                                    _%clauses189010%_))
                                  (_%$%E188989188998%_)))))
                        (_%$%E188989188998%_)))))
            (_%$%E188988189012%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx188885%_ _%form188886%_)
        (letrec ((_%generate188888%_
                  (lambda (_%bind188931%_)
                    (let* ((_%$%e188932188942%_ _%bind188931%_)
                           (_%$%E188934188946%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx188885%_
                               _%bind188931%_)))
                           (_%$%E188933188970%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e188932188942%_)
                                  (let ((_%$%e188935188950%_
                                         (gx#syntax-e _%$%e188932188942%_)))
                                    (let ((_%$%hd188936188953%_
                                           (##car _%$%e188935188950%_))
                                          (_%$%tl188937188955%_
                                           (##cdr _%$%e188935188950%_)))
                                      (let ((_%ids188958%_
                                             _%$%hd188936188953%_))
                                        (if (gx#stx-pair? _%$%tl188937188955%_)
                                            (let ((_%$%e188938188960%_
                                                   (gx#syntax-e
                                                    _%$%tl188937188955%_)))
                                              (let ((_%$%hd188939188963%_
                                                     (##car _%$%e188938188960%_))
                                                    (_%$%tl188940188965%_
                                                     (##cdr _%$%e188938188960%_)))
                                                (let ((_%expr188968%_
                                                       _%$%hd188939188963%_))
                                                  (if (gx#stx-null?
                                                       _%$%tl188940188965%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids188958%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids188958%_)
                        (cons _%expr188968%_ '()))
                  (_%$%E188934188946%_))
              (_%$%E188934188946%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E188934188946%_)))))
                                  (_%$%E188934188946%_)))))
                      (_%$%E188933188970%_)))))
          (let* ((_%$%e188889188899%_ _%stx188885%_)
                 (_%$%E188891188903%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e188889188899%_)))
                 (_%$%E188890188927%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e188889188899%_)
                        (let ((_%$%e188892188907%_
                               (gx#syntax-e _%$%e188889188899%_)))
                          (let ((_%$%hd188893188910%_
                                 (##car _%$%e188892188907%_))
                                (_%$%tl188894188912%_
                                 (##cdr _%$%e188892188907%_)))
                            (if (gx#stx-pair? _%$%tl188894188912%_)
                                (let ((_%$%e188895188915%_
                                       (gx#syntax-e _%$%tl188894188912%_)))
                                  (let ((_%$%hd188896188918%_
                                         (##car _%$%e188895188915%_))
                                        (_%$%tl188897188920%_
                                         (##cdr _%$%e188895188915%_)))
                                    (let* ((_%hd188923%_ _%$%hd188896188918%_)
                                           (_%body188925%_
                                            _%$%tl188897188920%_))
                                      (if (and (gx#stx-list? _%hd188923%_)
                                               (gx#stx-list? _%body188925%_)
                                               (not (gx#stx-null?
                                                     _%body188925%_)))
                                          (gx#core-cons*
                                           _%form188886%_
                                           (gx#stx-map1
                                            _%generate188888%_
                                            _%hd188923%_)
                                           _%body188925%_)
                                          (_%$%E188891188903%_)))))
                                (_%$%E188891188903%_))))
                        (_%$%E188891188903%_)))))
            (_%$%E188890188927%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx188977%_)
        (let ((_%form188979%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx188977%_ _%form188979%_))))
    (define gx#macro-expand-let-values
      (lambda _g191655_
        (let ((_g191656_ (##length _g191655_)))
          (cond ((##fx= _g191656_ 1)
                 (apply gx#macro-expand-let-values__0 _g191655_))
                ((##fx= _g191656_ 2)
                 (apply gx#macro-expand-let-values__% _g191655_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g191655_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx188882%_)
        (gx#macro-expand-let-values__% _%stx188882%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx188880%_)
        (gx#macro-expand-let-values__% _%stx188880%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx188771%_)
        (let* ((_%$%e188772188798%_ _%stx188771%_)
               (_%$%E188784188802%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188772188798%_)))
               (_%$%E188774188844%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188772188798%_)
                      (let ((_%$%e188785188806%_
                             (gx#syntax-e _%$%e188772188798%_)))
                        (let ((_%$%hd188786188809%_
                               (##car _%$%e188785188806%_))
                              (_%$%tl188787188811%_
                               (##cdr _%$%e188785188806%_)))
                          (if (gx#stx-pair? _%$%tl188787188811%_)
                              (let ((_%$%e188788188814%_
                                     (gx#syntax-e _%$%tl188787188811%_)))
                                (let ((_%$%hd188789188817%_
                                       (##car _%$%e188788188814%_))
                                      (_%$%tl188790188819%_
                                       (##cdr _%$%e188788188814%_)))
                                  (let ((_%test188822%_ _%$%hd188789188817%_))
                                    (if (gx#stx-pair? _%$%tl188790188819%_)
                                        (let ((_%$%e188791188824%_
                                               (gx#syntax-e
                                                _%$%tl188790188819%_)))
                                          (let ((_%$%hd188792188827%_
                                                 (##car _%$%e188791188824%_))
                                                (_%$%tl188793188829%_
                                                 (##cdr _%$%e188791188824%_)))
                                            (let ((_%K188832%_
                                                   _%$%hd188792188827%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl188793188829%_)
                                                  (let ((_%$%e188794188834%_
                                                         (gx#syntax-e
                                                          _%$%tl188793188829%_)))
                                                    (let ((_%$%hd188795188837%_
                                                           (##car _%$%e188794188834%_))
                                                          (_%$%tl188796188839%_
                                                           (##cdr _%$%e188794188834%_)))
                                                      (let ((_%E188842%_
                                                             _%$%hd188795188837%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl188796188839%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test188822%_
                                                             _%K188832%_
                                                             _%E188842%_)
                                                            (_%$%E188784188802%_)))))
                                                  (_%$%E188784188802%_)))))
                                        (_%$%E188784188802%_)))))
                              (_%$%E188784188802%_))))
                      (_%$%E188784188802%_))))
               (_%$%E188773188876%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188772188798%_)
                      (let ((_%$%e188775188848%_
                             (gx#syntax-e _%$%e188772188798%_)))
                        (let ((_%$%hd188776188851%_
                               (##car _%$%e188775188848%_))
                              (_%$%tl188777188853%_
                               (##cdr _%$%e188775188848%_)))
                          (if (gx#stx-pair? _%$%tl188777188853%_)
                              (let ((_%$%e188778188856%_
                                     (gx#syntax-e _%$%tl188777188853%_)))
                                (let ((_%$%hd188779188859%_
                                       (##car _%$%e188778188856%_))
                                      (_%$%tl188780188861%_
                                       (##cdr _%$%e188778188856%_)))
                                  (let ((_%test188864%_ _%$%hd188779188859%_))
                                    (if (gx#stx-pair? _%$%tl188780188861%_)
                                        (let ((_%$%e188781188866%_
                                               (gx#syntax-e
                                                _%$%tl188780188861%_)))
                                          (let ((_%$%hd188782188869%_
                                                 (##car _%$%e188781188866%_))
                                                (_%$%tl188783188871%_
                                                 (##cdr _%$%e188781188866%_)))
                                            (let ((_%K188874%_
                                                   _%$%hd188782188869%_))
                                              (if (gx#stx-null?
                                                   _%$%tl188783188871%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test188864%_
                                                   _%K188874%_
                                                   '#!void)
                                                  (_%$%E188774188844%_)))))
                                        (_%$%E188774188844%_)))))
                              (_%$%E188774188844%_))))
                      (_%$%E188774188844%_)))))
          (_%$%E188773188876%_))))
    (define gx#free-identifier=?
      (lambda (_%xid188756%_ _%yid188757%_)
        (let ((_%xe188759%_ (gx#resolve-identifier__0 _%xid188756%_))
              (_%ye188760%_ (gx#resolve-identifier__0 _%yid188757%_)))
          (if (and _%xe188759%_ _%ye188760%_)
              (let ((_%$e188763%_ (eq? _%xe188759%_ _%ye188760%_)))
                (if _%$e188763%_
                    _%$e188763%_
                    (if (##structure-instance-of? _%xe188759%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye188760%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe188759%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye188760%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe188759%_ _%ye188760%_)
                  '#f
                  (gx#stx-eq? _%xid188756%_ _%yid188757%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid188737%_ _%yid188738%_)
        (letrec ((_%context188740%_
                  (lambda (_%e188754%_)
                    (if (##structure-direct-instance-of?
                         _%e188754%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e188754%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks188741%_
                  (lambda (_%e188749%_)
                    (if (symbol? _%e188749%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e188749%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e188749%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e188749%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap188742%_
                  (lambda (_%e188747%_)
                    (if (symbol? _%e188747%_)
                        _%e188747%_
                        (gx#syntax-local-unwrap _%e188747%_)))))
          (let ((_%x188744%_ (_%unwrap188742%_ _%xid188737%_))
                (_%y188745%_ (_%unwrap188742%_ _%yid188738%_)))
            (if (gx#stx-eq? _%x188744%_ _%y188745%_)
                (if (eq? (_%context188740%_ _%x188744%_)
                         (_%context188740%_ _%y188745%_))
                    (equal? (_%marks188741%_ _%x188744%_)
                            (_%marks188741%_ _%y188745%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx188735%_)
        (if (gx#identifier? _%stx188735%_)
            (gx#core-identifier=? _%stx188735%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx188733%_)
        (if (gx#identifier? _%stx188733%_)
            (gx#core-identifier=? _%stx188733%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx188676%_ _%where188677%_)
        (let _%lp188679%_ ((_%rest188681%_ (gx#syntax->list _%stx188676%_)))
          (let* ((_%$%rest188682188690%_ _%rest188681%_)
                 (_%$%else188684188698%_ (lambda () '#t))
                 (_%$%K188686188711%_
                  (lambda (_%rest188701%_ _%hd188702%_)
                    (if (gx#identifier? _%hd188702%_)
                        (if (__find (lambda (_%$%g188704188706%_)
                                      (gx#bound-identifier=?
                                       _%$%g188704188706%_
                                       _%hd188702%_))
                                    _%rest188701%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where188677%_
                             _%hd188702%_)
                            (_%lp188679%_ _%rest188701%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where188677%_
                         _%hd188702%_)))))
            (if (pair? _%$%rest188682188690%_)
                (let ((_%$%hd188687188714%_ (##car _%$%rest188682188690%_))
                      (_%$%tl188688188716%_ (##cdr _%$%rest188682188690%_)))
                  (let* ((_%hd188719%_ _%$%hd188687188714%_)
                         (_%rest188721%_ _%$%tl188688188716%_))
                    (_%$%K188686188711%_ _%rest188721%_ _%hd188719%_)))
                (_%$%else188684188698%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx188726%_)
        (let ((_%where188728%_ _%stx188726%_))
          (gx#check-duplicate-identifiers__% _%stx188726%_ _%where188728%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g191657_
        (let ((_g191658_ (##length _g191657_)))
          (cond ((##fx= _g191658_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g191657_))
                ((##fx= _g191658_ 2)
                 (apply gx#check-duplicate-identifiers__% _g191657_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g191657_))))))
    (define gx#core-bind-values?
      (lambda (_%stx188668%_)
        (gx#stx-andmap
         (lambda (_%x188670%_)
           (let ((_%$e188672%_ (gx#identifier? _%x188670%_)))
             (if _%$e188672%_ _%$e188672%_ (gx#stx-false? _%x188670%_))))
         _%stx188668%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx188632%_ _%rebind?188633%_ _%phi188634%_ _%ctx188635%_)
        (gx#stx-for-each1
         (lambda (_%id188637%_)
           (if (gx#identifier? _%id188637%_)
               (gx#core-bind-runtime!__%
                _%id188637%_
                _%rebind?188633%_
                _%phi188634%_
                _%ctx188635%_)
               '#!void))
         _%stx188632%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx188642%_)
        (let* ((_%rebind?188644%_ '#f)
               (_%phi188646%_ (gx#current-expander-phi))
               (_%ctx188648%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx188642%_
           _%rebind?188644%_
           _%phi188646%_
           _%ctx188648%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx188650%_ _%rebind?188651%_)
        (let* ((_%phi188653%_ (gx#current-expander-phi))
               (_%ctx188655%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx188650%_
           _%rebind?188651%_
           _%phi188653%_
           _%ctx188655%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx188657%_ _%rebind?188658%_ _%phi188659%_)
        (let ((_%ctx188661%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx188657%_
           _%rebind?188658%_
           _%phi188659%_
           _%ctx188661%_))))
    (define gx#core-bind-values!
      (lambda _g191659_
        (let ((_g191660_ (##length _g191659_)))
          (cond ((##fx= _g191660_ 1) (apply gx#core-bind-values!__0 _g191659_))
                ((##fx= _g191660_ 2) (apply gx#core-bind-values!__1 _g191659_))
                ((##fx= _g191660_ 3) (apply gx#core-bind-values!__2 _g191659_))
                ((##fx= _g191660_ 4) (apply gx#core-bind-values!__% _g191659_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g191659_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx188627%_)
        (gx#stx-map1
         (lambda (_%x188629%_)
           (if (gx#identifier? _%x188629%_)
               (gx#core-quote-syntax__0 _%x188629%_)
               '#f))
         _%stx188627%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx188620%_)
        (if (gx#identifier? _%stx188620%_)
            (let* ((_%bind188622%_ (gx#resolve-identifier__0 _%stx188620%_))
                   (_%$e188624%_ (not _%bind188622%_)))
              (if _%$e188624%_
                  _%$e188624%_
                  (##structure-instance-of?
                   _%bind188622%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id188609%_ _%form188610%_)
        (let ((_%bind188612%_ (gx#resolve-identifier__0 _%id188609%_)))
          (if (##structure-instance-of? _%bind188612%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id188609%_)
              (if (not _%bind188612%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id188609%_)))
                      (gx#core-quote-syntax__0 _%id188609%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form188610%_
                       _%id188609%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form188610%_
                   _%id188609%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id188564%_ _%rebind?188565%_ _%phi188566%_ _%ctx188567%_)
        (let* ((_%key188569%_ (gx#core-identifier-key _%id188564%_))
               (_%eid188571%_
                (gx#make-binding-id__%
                 _%key188569%_
                 '#f
                 _%phi188566%_
                 _%ctx188567%_))
               (_%bind188577%_
                (if (##structure-instance-of?
                     _%ctx188567%_
                     'gx#module-context::t)
                    (let ((__obj191636
                           (##structure
                            gx#module-binding::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#module-binding:::init!
                       __obj191636
                       _%eid188571%_
                       _%key188569%_
                       _%phi188566%_
                       _%ctx188567%_)
                      __obj191636)
                    (if (##structure-instance-of?
                         _%ctx188567%_
                         'gx#top-context::t)
                        (let ((__obj191635
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj191635
                           _%eid188571%_
                           _%key188569%_
                           _%phi188566%_)
                          __obj191635)
                        (if (##structure-instance-of?
                             _%ctx188567%_
                             'gx#local-context::t)
                            (let ((__obj191634
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj191634
                               _%eid188571%_
                               _%key188569%_
                               _%phi188566%_)
                              __obj191634)
                            (let ((__obj191633
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj191633
                               _%eid188571%_
                               _%key188569%_
                               _%phi188566%_)
                              __obj191633))))))
          (gx#bind-identifier!__%
           _%id188564%_
           _%bind188577%_
           _%rebind?188565%_
           _%phi188566%_
           _%ctx188567%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id188583%_)
        (let* ((_%rebind?188585%_ '#f)
               (_%phi188587%_ (gx#current-expander-phi))
               (_%ctx188589%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id188583%_
           _%rebind?188585%_
           _%phi188587%_
           _%ctx188589%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id188591%_ _%rebind?188592%_)
        (let* ((_%phi188594%_ (gx#current-expander-phi))
               (_%ctx188596%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id188591%_
           _%rebind?188592%_
           _%phi188594%_
           _%ctx188596%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id188598%_ _%rebind?188599%_ _%phi188600%_)
        (let ((_%ctx188602%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id188598%_
           _%rebind?188599%_
           _%phi188600%_
           _%ctx188602%_))))
    (define gx#core-bind-runtime!
      (lambda _g191661_
        (let ((_g191662_ (##length _g191661_)))
          (cond ((##fx= _g191662_ 1)
                 (apply gx#core-bind-runtime!__0 _g191661_))
                ((##fx= _g191662_ 2)
                 (apply gx#core-bind-runtime!__1 _g191661_))
                ((##fx= _g191662_ 3)
                 (apply gx#core-bind-runtime!__2 _g191661_))
                ((##fx= _g191662_ 4)
                 (apply gx#core-bind-runtime!__% _g191661_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g191661_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id188516%_
               _%eid188517%_
               _%rebind?188518%_
               _%phi188519%_
               _%ctx188520%_)
        (let* ((_%key188522%_ (gx#core-identifier-key _%id188516%_))
               (_%bind188527%_
                (if (##structure-instance-of?
                     _%ctx188520%_
                     'gx#module-context::t)
                    (let ((__obj191639
                           (##structure
                            gx#module-binding::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#module-binding:::init!
                       __obj191639
                       _%eid188517%_
                       _%key188522%_
                       _%phi188519%_
                       _%ctx188520%_)
                      __obj191639)
                    (if (##structure-instance-of?
                         _%ctx188520%_
                         'gx#top-context::t)
                        (let ((__obj191638
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj191638
                           _%eid188517%_
                           _%key188522%_
                           _%phi188519%_)
                          __obj191638)
                        (let ((__obj191637
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj191637
                           _%eid188517%_
                           _%key188522%_
                           _%phi188519%_)
                          __obj191637)))))
          (gx#bind-identifier!__%
           _%id188516%_
           _%bind188527%_
           _%rebind?188518%_
           _%phi188519%_
           _%ctx188520%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id188533%_ _%eid188534%_)
        (let* ((_%rebind?188536%_ '#f)
               (_%phi188538%_ (gx#current-expander-phi))
               (_%ctx188540%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id188533%_
           _%eid188534%_
           _%rebind?188536%_
           _%phi188538%_
           _%ctx188540%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id188542%_ _%eid188543%_ _%rebind?188544%_)
        (let* ((_%phi188546%_ (gx#current-expander-phi))
               (_%ctx188548%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id188542%_
           _%eid188543%_
           _%rebind?188544%_
           _%phi188546%_
           _%ctx188548%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id188550%_ _%eid188551%_ _%rebind?188552%_ _%phi188553%_)
        (let ((_%ctx188555%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id188550%_
           _%eid188551%_
           _%rebind?188552%_
           _%phi188553%_
           _%ctx188555%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g191663_
        (let ((_g191664_ (##length _g191663_)))
          (cond ((##fx= _g191664_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g191663_))
                ((##fx= _g191664_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g191663_))
                ((##fx= _g191664_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g191663_))
                ((##fx= _g191664_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g191663_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g191663_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id188476%_
               _%eid188477%_
               _%rebind?188478%_
               _%phi188479%_
               _%ctx188480%_)
        (gx#bind-identifier!__%
         _%id188476%_
         (let ((__obj191640
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj191640
            _%eid188477%_
            (gx#core-identifier-key _%id188476%_)
            _%phi188479%_)
           __obj191640)
         _%rebind?188478%_
         _%phi188479%_
         _%ctx188480%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id188485%_ _%eid188486%_)
        (let* ((_%rebind?188488%_ '#f)
               (_%phi188490%_ (gx#current-expander-phi))
               (_%ctx188492%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id188485%_
           _%eid188486%_
           _%rebind?188488%_
           _%phi188490%_
           _%ctx188492%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id188494%_ _%eid188495%_ _%rebind?188496%_)
        (let* ((_%phi188498%_ (gx#current-expander-phi))
               (_%ctx188500%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id188494%_
           _%eid188495%_
           _%rebind?188496%_
           _%phi188498%_
           _%ctx188500%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id188502%_ _%eid188503%_ _%rebind?188504%_ _%phi188505%_)
        (let ((_%ctx188507%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id188502%_
           _%eid188503%_
           _%rebind?188504%_
           _%phi188505%_
           _%ctx188507%_))))
    (define gx#core-bind-extern!
      (lambda _g191665_
        (let ((_g191666_ (##length _g191665_)))
          (cond ((##fx= _g191666_ 2) (apply gx#core-bind-extern!__0 _g191665_))
                ((##fx= _g191666_ 3) (apply gx#core-bind-extern!__1 _g191665_))
                ((##fx= _g191666_ 4) (apply gx#core-bind-extern!__2 _g191665_))
                ((##fx= _g191666_ 5) (apply gx#core-bind-extern!__% _g191665_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g191665_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id188430%_
               _%e188431%_
               _%rebind?188432%_
               _%phi188433%_
               _%ctx188434%_)
        (gx#bind-identifier!__%
         _%id188430%_
         (let ((_%key188439%_ (gx#core-identifier-key _%id188430%_))
               (_%e188440%_
                (if (or (##structure-instance-of? _%e188431%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e188431%_
                         'gx#expander-context::t))
                    _%e188431%_
                    (##structure
                     gx#user-expander::t
                     _%e188431%_
                     _%ctx188434%_
                     _%phi188433%_))))
           (let ((__obj191641
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj191641
              (gx#make-binding-id__%
               _%key188439%_
               '#t
               _%phi188433%_
               _%ctx188434%_)
              _%key188439%_
              _%phi188433%_
              _%e188440%_)
             __obj191641))
         _%rebind?188432%_
         _%phi188433%_
         _%ctx188434%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id188445%_ _%e188446%_)
        (let* ((_%rebind?188448%_ '#f)
               (_%phi188450%_ (gx#current-expander-phi))
               (_%ctx188452%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id188445%_
           _%e188446%_
           _%rebind?188448%_
           _%phi188450%_
           _%ctx188452%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id188454%_ _%e188455%_ _%rebind?188456%_)
        (let* ((_%phi188458%_ (gx#current-expander-phi))
               (_%ctx188460%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id188454%_
           _%e188455%_
           _%rebind?188456%_
           _%phi188458%_
           _%ctx188460%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id188462%_ _%e188463%_ _%rebind?188464%_ _%phi188465%_)
        (let ((_%ctx188467%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id188462%_
           _%e188463%_
           _%rebind?188464%_
           _%phi188465%_
           _%ctx188467%_))))
    (define gx#core-bind-syntax!
      (lambda _g191667_
        (let ((_g191668_ (##length _g191667_)))
          (cond ((##fx= _g191668_ 2) (apply gx#core-bind-syntax!__0 _g191667_))
                ((##fx= _g191668_ 3) (apply gx#core-bind-syntax!__1 _g191667_))
                ((##fx= _g191668_ 4) (apply gx#core-bind-syntax!__2 _g191667_))
                ((##fx= _g191668_ 5) (apply gx#core-bind-syntax!__% _g191667_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g191667_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id188413%_ _%e188414%_ _%rebind?188415%_)
        (gx#core-bind-syntax!__%
         _%id188413%_
         _%e188414%_
         _%rebind?188415%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id188420%_ _%e188421%_)
        (let ((_%rebind?188423%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id188420%_
           _%e188421%_
           _%rebind?188423%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g191669_
        (let ((_g191670_ (##length _g191669_)))
          (cond ((##fx= _g191670_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g191669_))
                ((##fx= _g191670_ 3)
                 (apply gx#core-bind-root-syntax!__% _g191669_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g191669_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id188371%_
               _%alias-id188372%_
               _%rebind?188373%_
               _%phi188374%_
               _%ctx188375%_)
        (gx#bind-identifier!__%
         _%id188371%_
         (let* ((_%key188377%_ (gx#core-identifier-key _%id188371%_))
                (__obj191642
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj191642
            (gx#make-binding-id__%
             _%key188377%_
             '#t
             _%phi188374%_
             _%ctx188375%_)
            _%key188377%_
            _%phi188374%_
            _%alias-id188372%_)
           __obj191642)
         _%rebind?188373%_
         _%phi188374%_
         _%ctx188375%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id188382%_ _%alias-id188383%_)
        (let* ((_%rebind?188385%_ '#f)
               (_%phi188387%_ (gx#current-expander-phi))
               (_%ctx188389%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id188382%_
           _%alias-id188383%_
           _%rebind?188385%_
           _%phi188387%_
           _%ctx188389%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id188391%_ _%alias-id188392%_ _%rebind?188393%_)
        (let* ((_%phi188395%_ (gx#current-expander-phi))
               (_%ctx188397%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id188391%_
           _%alias-id188392%_
           _%rebind?188393%_
           _%phi188395%_
           _%ctx188397%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id188399%_ _%alias-id188400%_ _%rebind?188401%_ _%phi188402%_)
        (let ((_%ctx188404%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id188399%_
           _%alias-id188400%_
           _%rebind?188401%_
           _%phi188402%_
           _%ctx188404%_))))
    (define gx#core-bind-alias!
      (lambda _g191671_
        (let ((_g191672_ (##length _g191671_)))
          (cond ((##fx= _g191672_ 2) (apply gx#core-bind-alias!__0 _g191671_))
                ((##fx= _g191672_ 3) (apply gx#core-bind-alias!__1 _g191671_))
                ((##fx= _g191672_ 4) (apply gx#core-bind-alias!__2 _g191671_))
                ((##fx= _g191672_ 5) (apply gx#core-bind-alias!__% _g191671_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g191671_))))))
    (define gx#make-binding-id__%
      (lambda (_%key188321%_ _%syntax?188322%_ _%phi188323%_ _%ctx188324%_)
        (if (uninterned-symbol? _%key188321%_)
            (##gensym 'L)
            (if (pair? _%key188321%_)
                (gensym (##car _%key188321%_))
                (if (##structure-instance-of? _%ctx188324%_ 'gx#top-context::t)
                    (let ((_%ns188329%_
                           (gx#core-context-namespace__% _%ctx188324%_)))
                      (if (and (fxzero? _%phi188323%_) (not _%syntax?188322%_))
                          (if _%ns188329%_
                              (make-symbol__1 _%ns188329%_ '"#" _%key188321%_)
                              _%key188321%_)
                          (if _%syntax?188322%_
                              (make-symbol__1
                               (let ((_%$e188333%_ _%ns188329%_))
                                 (if _%$e188333%_ _%$e188333%_ '""))
                               '"[:"
                               (number->string _%phi188323%_)
                               '":]#"
                               _%key188321%_)
                              (make-symbol__1
                               (let ((_%$e188337%_ _%ns188329%_))
                                 (if _%$e188337%_ _%$e188337%_ '""))
                               '"["
                               (number->string _%phi188323%_)
                               '"]#"
                               _%key188321%_))))
                    (gensym _%key188321%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key188344%_)
        (let* ((_%syntax?188346%_ '#f)
               (_%phi188348%_ (gx#current-expander-phi))
               (_%ctx188350%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key188344%_
           _%syntax?188346%_
           _%phi188348%_
           _%ctx188350%_))))
    (define gx#make-binding-id__1
      (lambda (_%key188352%_ _%syntax?188353%_)
        (let* ((_%phi188355%_ (gx#current-expander-phi))
               (_%ctx188357%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key188352%_
           _%syntax?188353%_
           _%phi188355%_
           _%ctx188357%_))))
    (define gx#make-binding-id__2
      (lambda (_%key188359%_ _%syntax?188360%_ _%phi188361%_)
        (let ((_%ctx188363%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key188359%_
           _%syntax?188360%_
           _%phi188361%_
           _%ctx188363%_))))
    (define gx#make-binding-id
      (lambda _g191673_
        (let ((_g191674_ (##length _g191673_)))
          (cond ((##fx= _g191674_ 1) (apply gx#make-binding-id__0 _g191673_))
                ((##fx= _g191674_ 2) (apply gx#make-binding-id__1 _g191673_))
                ((##fx= _g191674_ 3) (apply gx#make-binding-id__2 _g191673_))
                ((##fx= _g191674_ 4) (apply gx#make-binding-id__% _g191673_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g191673_))))))))
