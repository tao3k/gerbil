(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1789188908)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx191814%_)
        (letrec ((_%expand-special191816%_
                  (lambda (_%hd191818%_ _%K191819%_ _%rest191820%_ _%r191821%_)
                    (_%K191819%_
                     _%rest191820%_
                     (cons (gx#core-expand-top _%hd191818%_) _%r191821%_)))))
          (gx#core-expand-block__0 _%stx191814%_ _%expand-special191816%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx191468%_)
        (letrec ((_%expand-special191470%_
                  (lambda (_%hd191590%_ _%K191591%_ _%rest191592%_ _%r191593%_)
                    (let* ((_%K*191597%_
                            (lambda (_%e191595%_)
                              (_%K191591%_
                               _%rest191592%_
                               (cons _%e191595%_ _%r191593%_))))
                           (_%$%e191598191650%_ _%hd191590%_)
                           (_%$%E191636191654%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e191598191650%_)))
                           (_%$%E191632191696%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191598191650%_)
                                  (let ((_%$%e191637191658%_
                                         (gx#syntax-e _%$%e191598191650%_)))
                                    (let ((_%$%hd191638191661%_
                                           (##car _%$%e191637191658%_))
                                          (_%$%tl191639191663%_
                                           (##cdr _%$%e191637191658%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191638191661%_)
                                               (gx#core-identifier=?
                                                _%$%hd191638191661%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl191639191663%_)
                                              (let ((_%$%e191640191666%_
                                                     (gx#syntax-e
                                                      _%$%tl191639191663%_)))
                                                (let ((_%$%hd191641191669%_
                                                       (##car _%$%e191640191666%_))
                                                      (_%$%tl191642191671%_
                                                       (##cdr _%$%e191640191666%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd191641191669%_)
                                                      (let ((_%$%e191646191674%_
                                                             (gx#syntax-e
                                                              _%$%hd191641191669%_)))
                                                        (let ((_%$%hd191647191677%_
                                                               (##car _%$%e191646191674%_))
                                                              (_%$%tl191648191679%_
                                                               (##cdr _%$%e191646191674%_)))
                                                          (let ((_%id191682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd191647191677%_))
                    (if (gx#stx-null? _%$%tl191648191679%_)
                        (if (gx#stx-pair? _%$%tl191642191671%_)
                            (let ((_%$%e191643191684%_
                                   (gx#syntax-e _%$%tl191642191671%_)))
                              (let ((_%$%hd191644191687%_
                                     (##car _%$%e191643191684%_))
                                    (_%$%tl191645191689%_
                                     (##cdr _%$%e191643191684%_)))
                                (let ((_%props191692%_ _%$%hd191644191687%_))
                                  (if (gx#stx-null? _%$%tl191645191689%_)
                                      (let ((_%bind191694%_
                                             (gx#resolve-identifier__0
                                              _%id191682%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind191694%_
                                         _%props191692%_)
                                        (_%K191591%_
                                         _%rest191592%_
                                         _%r191593%_))
                                      (_%$%E191636191654%_)))))
                            (_%$%E191636191654%_))
                        (_%$%E191636191654%_)))))
              (_%$%E191636191654%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E191636191654%_))
                                          (_%$%E191636191654%_))))
                                  (_%$%E191636191654%_))))
                           (_%$%E191628191708%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191598191650%_)
                                  (let ((_%$%e191633191700%_
                                         (gx#syntax-e _%$%e191598191650%_)))
                                    (let ((_%$%hd191634191703%_
                                           (##car _%$%e191633191700%_))
                                          (_%$%tl191635191705%_
                                           (##cdr _%$%e191633191700%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191634191703%_)
                                               (gx#core-identifier=?
                                                _%$%hd191634191703%_
                                                '%#define-runtime))
                                          (_%K*191597%_
                                           (gx#core-expand-define-runtime%
                                            _%hd191590%_))
                                          (_%$%E191632191696%_))))
                                  (_%$%E191632191696%_))))
                           (_%$%E191624191720%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191598191650%_)
                                  (let ((_%$%e191629191712%_
                                         (gx#syntax-e _%$%e191598191650%_)))
                                    (let ((_%$%hd191630191715%_
                                           (##car _%$%e191629191712%_))
                                          (_%$%tl191631191717%_
                                           (##cdr _%$%e191629191712%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191630191715%_)
                                               (gx#core-identifier=?
                                                _%$%hd191630191715%_
                                                '%#define-alias))
                                          (_%K*191597%_
                                           (gx#core-expand-define-alias%
                                            _%hd191590%_))
                                          (_%$%E191628191708%_))))
                                  (_%$%E191628191708%_))))
                           (_%$%E191614191732%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191598191650%_)
                                  (let ((_%$%e191625191724%_
                                         (gx#syntax-e _%$%e191598191650%_)))
                                    (let ((_%$%hd191626191727%_
                                           (##car _%$%e191625191724%_))
                                          (_%$%tl191627191729%_
                                           (##cdr _%$%e191625191724%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191626191727%_)
                                               (gx#core-identifier=?
                                                _%$%hd191626191727%_
                                                '%#define-syntax))
                                          (_%K*191597%_
                                           (gx#core-expand-define-syntax%
                                            _%hd191590%_))
                                          (_%$%E191624191720%_))))
                                  (_%$%E191624191720%_))))
                           (_%$%E191604191764%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191598191650%_)
                                  (let ((_%$%e191615191736%_
                                         (gx#syntax-e _%$%e191598191650%_)))
                                    (let ((_%$%hd191616191739%_
                                           (##car _%$%e191615191736%_))
                                          (_%$%tl191617191741%_
                                           (##cdr _%$%e191615191736%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191616191739%_)
                                               (gx#core-identifier=?
                                                _%$%hd191616191739%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl191617191741%_)
                                              (let ((_%$%e191618191744%_
                                                     (gx#syntax-e
                                                      _%$%tl191617191741%_)))
                                                (let ((_%$%hd191619191747%_
                                                       (##car _%$%e191618191744%_))
                                                      (_%$%tl191620191749%_
                                                       (##cdr _%$%e191618191744%_)))
                                                  (let ((_%hd-bind191752%_
                                                         _%$%hd191619191747%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl191620191749%_)
                                                        (let ((_%$%e191621191754%_
                                                               (gx#syntax-e
                                                                _%$%tl191620191749%_)))
                                                          (let ((_%$%hd191622191757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e191621191754%_))
                        (_%$%tl191623191759%_ (##cdr _%$%e191621191754%_)))
                    (let ((_%expr191762%_ _%$%hd191622191757%_))
                      (if (gx#stx-null? _%$%tl191623191759%_)
                          (if (gx#core-bind-values? _%hd-bind191752%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind191752%_)
                                (_%K*191597%_ _%hd191590%_))
                              (_%$%E191614191732%_))
                          (_%$%E191614191732%_)))))
                (_%$%E191614191732%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E191614191732%_))
                                          (_%$%E191614191732%_))))
                                  (_%$%E191614191732%_))))
                           (_%$%E191600191798%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191598191650%_)
                                  (let ((_%$%e191605191768%_
                                         (gx#syntax-e _%$%e191598191650%_)))
                                    (let ((_%$%hd191606191771%_
                                           (##car _%$%e191605191768%_))
                                          (_%$%tl191607191773%_
                                           (##cdr _%$%e191605191768%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191606191771%_)
                                               (gx#core-identifier=?
                                                _%$%hd191606191771%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl191607191773%_)
                                              (let ((_%$%e191608191776%_
                                                     (gx#syntax-e
                                                      _%$%tl191607191773%_)))
                                                (let ((_%$%hd191609191779%_
                                                       (##car _%$%e191608191776%_))
                                                      (_%$%tl191610191781%_
                                                       (##cdr _%$%e191608191776%_)))
                                                  (let ((_%hd-bind191784%_
                                                         _%$%hd191609191779%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl191610191781%_)
                                                        (let ((_%$%e191611191786%_
                                                               (gx#syntax-e
                                                                _%$%tl191610191781%_)))
                                                          (let ((_%$%hd191612191789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e191611191786%_))
                        (_%$%tl191613191791%_ (##cdr _%$%e191611191786%_)))
                    (let* ((_%expr191794%_ _%$%hd191612191789%_)
                           (_%props191796%_ _%$%tl191613191791%_))
                      (if (and (gx#core-bind-values? _%hd-bind191784%_)
                               (gx#stx-list? _%props191796%_)
                               (not (gx#stx-null? _%props191796%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind191784%_)
                            (_%K191591%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind191784%_
                                          (cons _%props191796%_ '())))
                                   _%rest191592%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind191784%_
                                          (cons _%expr191794%_ '())))
                                   _%r191593%_)))
                          (_%$%E191604191764%_)))))
                (_%$%E191604191764%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E191604191764%_))
                                          (_%$%E191604191764%_))))
                                  (_%$%E191604191764%_))))
                           (_%$%E191599191810%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191598191650%_)
                                  (let ((_%$%e191601191802%_
                                         (gx#syntax-e _%$%e191598191650%_)))
                                    (let ((_%$%hd191602191805%_
                                           (##car _%$%e191601191802%_))
                                          (_%$%tl191603191807%_
                                           (##cdr _%$%e191601191802%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191602191805%_)
                                               (gx#core-identifier=?
                                                _%$%hd191602191805%_
                                                '%#begin-syntax))
                                          (_%K*191597%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd191590%_))
                                          (_%$%E191600191798%_))))
                                  (_%$%E191600191798%_)))))
                      (_%$%E191599191810%_))))
                 (_%eval-body191471%_
                  (lambda (_%rbody191479%_)
                    (let _%lp191481%_ ((_%rest191483%_ _%rbody191479%_)
                                       (_%body191484%_ '())
                                       (_%ebody191485%_ '()))
                      (let* ((_%$%rest191486191494%_ _%rest191483%_)
                             (_%$%else191488191502%_
                              (lambda ()
                                (values _%body191484%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody191485%_)
                                          (gx#stx-source _%stx191468%_))))))
                             (_%$%K191490191578%_
                              (lambda (_%rest191505%_ _%hd191506%_)
                                (let* ((_%$%e191507191524%_ _%hd191506%_)
                                       (_%$%E191519191528%_
                                        (lambda ()
                                          (_%lp191481%_
                                           _%rest191505%_
                                           (cons _%hd191506%_ _%body191484%_)
                                           (cons _%hd191506%_
                                                 _%ebody191485%_))))
                                       (_%$%E191509191540%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e191507191524%_)
                                              (let ((_%$%e191520191532%_
                                                     (gx#syntax-e
                                                      _%$%e191507191524%_)))
                                                (let ((_%$%hd191521191535%_
                                                       (##car _%$%e191520191532%_))
                                                      (_%$%tl191522191537%_
                                                       (##cdr _%$%e191520191532%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd191521191535%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd191521191535%_
                                                            '%#begin-syntax))
                                                      (_%lp191481%_
                                                       _%rest191505%_
                                                       (cons _%hd191506%_
                                                             _%body191484%_)
                                                       _%ebody191485%_)
                                                      (_%$%E191519191528%_))))
                                              (_%$%E191519191528%_))))
                                       (_%$%E191508191574%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e191507191524%_)
                                              (let ((_%$%e191510191544%_
                                                     (gx#syntax-e
                                                      _%$%e191507191524%_)))
                                                (let ((_%$%hd191511191547%_
                                                       (##car _%$%e191510191544%_))
                                                      (_%$%tl191512191549%_
                                                       (##cdr _%$%e191510191544%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd191511191547%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd191511191547%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl191512191549%_)
                                                          (let ((_%$%e191513191552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl191512191549%_)))
                    (let ((_%$%hd191514191555%_ (##car _%$%e191513191552%_))
                          (_%$%tl191515191557%_ (##cdr _%$%e191513191552%_)))
                      (let ((_%hd-bind191560%_ _%$%hd191514191555%_))
                        (if (gx#stx-pair? _%$%tl191515191557%_)
                            (let ((_%$%e191516191562%_
                                   (gx#syntax-e _%$%tl191515191557%_)))
                              (let ((_%$%hd191517191565%_
                                     (##car _%$%e191516191562%_))
                                    (_%$%tl191518191567%_
                                     (##cdr _%$%e191516191562%_)))
                                (let ((_%expr191570%_ _%$%hd191517191565%_))
                                  (if (gx#stx-null? _%$%tl191518191567%_)
                                      (let ((_%ehd191572%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind191560%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr191570%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd191506%_))))
                                        (_%lp191481%_
                                         _%rest191505%_
                                         (cons _%ehd191572%_ _%body191484%_)
                                         (cons _%ehd191572%_ _%ebody191485%_)))
                                      (_%$%E191509191540%_)))))
                            (_%$%E191509191540%_)))))
                  (_%$%E191509191540%_))
              (_%$%E191509191540%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E191509191540%_)))))
                                  (_%$%E191508191574%_)))))
                        (if (pair? _%$%rest191486191494%_)
                            (let ((_%$%hd191491191581%_
                                   (##car _%$%rest191486191494%_))
                                  (_%$%tl191492191583%_
                                   (##cdr _%$%rest191486191494%_)))
                              (let* ((_%hd191586%_ _%$%hd191491191581%_)
                                     (_%rest191588%_ _%$%tl191492191583%_))
                                (_%$%K191490191578%_
                                 _%rest191588%_
                                 _%hd191586%_)))
                            (_%$%else191488191502%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody191474%_
                     (gx#core-expand-block__1
                      _%stx191468%_
                      _%expand-special191470%_
                      '#f))
                    (_g191847_ (_%eval-body191471%_ _%rbody191474%_)))
               (begin
                 (let ((_g191848_
                        (if (##values? _g191847_)
                            (##values-length _g191847_)
                            1)))
                   (if (not (##fx= _g191848_ 2))
                       (error "Context expects 2 values" _g191848_)))
                 (let ((_%expanded-body191476%_ (##values-ref _g191847_ 0))
                       (_%value191477%_ (##values-ref _g191847_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body191476%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value191477%_ '())))
                    (gx#stx-source _%stx191468%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx191438%_)
        (let* ((_%$%e191439191446%_ _%stx191438%_)
               (_%$%E191441191450%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191439191446%_)))
               (_%$%E191440191464%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191439191446%_)
                      (let ((_%$%e191442191454%_
                             (gx#syntax-e _%$%e191439191446%_)))
                        (let ((_%$%hd191443191457%_
                               (##car _%$%e191442191454%_))
                              (_%$%tl191444191459%_
                               (##cdr _%$%e191442191454%_)))
                          (let ((_%body191462%_ _%$%tl191444191459%_))
                            (if (gx#stx-list? _%body191462%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body191462%_)
                                 (gx#stx-source _%stx191438%_))
                                (_%$%E191441191450%_)))))
                      (_%$%E191441191450%_)))))
          (_%$%E191440191464%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx191436%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx191436%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx191382%_)
        (let* ((_%$%e191383191396%_ _%stx191382%_)
               (_%$%E191385191400%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191383191396%_)))
               (_%$%E191384191432%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191383191396%_)
                      (let ((_%$%e191386191404%_
                             (gx#syntax-e _%$%e191383191396%_)))
                        (let ((_%$%hd191387191407%_
                               (##car _%$%e191386191404%_))
                              (_%$%tl191388191409%_
                               (##cdr _%$%e191386191404%_)))
                          (if (gx#stx-pair? _%$%tl191388191409%_)
                              (let ((_%$%e191389191412%_
                                     (gx#syntax-e _%$%tl191388191409%_)))
                                (let ((_%$%hd191390191415%_
                                       (##car _%$%e191389191412%_))
                                      (_%$%tl191391191417%_
                                       (##cdr _%$%e191389191412%_)))
                                  (let ((_%ann191420%_ _%$%hd191390191415%_))
                                    (if (gx#stx-pair? _%$%tl191391191417%_)
                                        (let ((_%$%e191392191422%_
                                               (gx#syntax-e
                                                _%$%tl191391191417%_)))
                                          (let ((_%$%hd191393191425%_
                                                 (##car _%$%e191392191422%_))
                                                (_%$%tl191394191427%_
                                                 (##cdr _%$%e191392191422%_)))
                                            (let ((_%expr191430%_
                                                   _%$%hd191393191425%_))
                                              (if (gx#stx-null?
                                                   _%$%tl191394191427%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann191420%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr191430%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx191382%_))
                                                  (_%$%E191385191400%_)))))
                                        (_%$%E191385191400%_)))))
                              (_%$%E191385191400%_))))
                      (_%$%E191385191400%_)))))
          (_%$%E191384191432%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx191007%_ _%body191008%_)
        (letrec ((_%expand-special191010%_
                  (lambda (_%hd191377%_ _%K191378%_ _%rest191379%_ _%r191380%_)
                    (_%K191378%_
                     '()
                     (cons (_%expand-internal191011%_
                            _%hd191377%_
                            _%rest191379%_)
                           _%r191380%_))))
                 (_%expand-internal191011%_
                  (lambda (_%hd191373%_ _%rest191374%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal191013%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd191373%_ _%rest191374%_))
                          (gx#stx-source _%stx191007%_))
                         _%expand-internal-special191012%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj191831
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj191831)
                       __obj191831))))
                 (_%expand-internal-special191012%_
                  (lambda (_%hd191169%_ _%K191170%_ _%rest191171%_ _%r191172%_)
                    (let* ((_%$%e191173191221%_ _%hd191169%_)
                           (_%$%E191216191225%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e191173191221%_)))
                           (_%$%E191203191237%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191173191221%_)
                                  (let ((_%$%e191217191229%_
                                         (gx#syntax-e _%$%e191173191221%_)))
                                    (let ((_%$%hd191218191232%_
                                           (##car _%$%e191217191229%_))
                                          (_%$%tl191219191234%_
                                           (##cdr _%$%e191217191229%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191218191232%_)
                                               (gx#core-identifier=?
                                                _%$%hd191218191232%_
                                                '%#declare))
                                          (_%K191170%_
                                           _%rest191171%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd191169%_)
                                                 _%r191172%_))
                                          (_%$%E191216191225%_))))
                                  (_%$%E191216191225%_))))
                           (_%$%E191199191279%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191173191221%_)
                                  (let ((_%$%e191204191241%_
                                         (gx#syntax-e _%$%e191173191221%_)))
                                    (let ((_%$%hd191205191244%_
                                           (##car _%$%e191204191241%_))
                                          (_%$%tl191206191246%_
                                           (##cdr _%$%e191204191241%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191205191244%_)
                                               (gx#core-identifier=?
                                                _%$%hd191205191244%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl191206191246%_)
                                              (let ((_%$%e191207191249%_
                                                     (gx#syntax-e
                                                      _%$%tl191206191246%_)))
                                                (let ((_%$%hd191208191252%_
                                                       (##car _%$%e191207191249%_))
                                                      (_%$%tl191209191254%_
                                                       (##cdr _%$%e191207191249%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd191208191252%_)
                                                      (let ((_%$%e191213191257%_
                                                             (gx#syntax-e
                                                              _%$%hd191208191252%_)))
                                                        (let ((_%$%hd191214191260%_
                                                               (##car _%$%e191213191257%_))
                                                              (_%$%tl191215191262%_
                                                               (##cdr _%$%e191213191257%_)))
                                                          (let ((_%id191265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd191214191260%_))
                    (if (gx#stx-null? _%$%tl191215191262%_)
                        (if (gx#stx-pair? _%$%tl191209191254%_)
                            (let ((_%$%e191210191267%_
                                   (gx#syntax-e _%$%tl191209191254%_)))
                              (let ((_%$%hd191211191270%_
                                     (##car _%$%e191210191267%_))
                                    (_%$%tl191212191272%_
                                     (##cdr _%$%e191210191267%_)))
                                (let ((_%props191275%_ _%$%hd191211191270%_))
                                  (if (gx#stx-null? _%$%tl191212191272%_)
                                      (let ((_%bind191277%_
                                             (gx#resolve-identifier__0
                                              _%id191265%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind191277%_
                                         _%props191275%_)
                                        (_%K191170%_
                                         _%rest191171%_
                                         _%r191172%_))
                                      (_%$%E191203191237%_)))))
                            (_%$%E191203191237%_))
                        (_%$%E191203191237%_)))))
              (_%$%E191203191237%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E191203191237%_))
                                          (_%$%E191203191237%_))))
                                  (_%$%E191203191237%_))))
                           (_%$%E191195191291%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191173191221%_)
                                  (let ((_%$%e191200191283%_
                                         (gx#syntax-e _%$%e191173191221%_)))
                                    (let ((_%$%hd191201191286%_
                                           (##car _%$%e191200191283%_))
                                          (_%$%tl191202191288%_
                                           (##cdr _%$%e191200191283%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191201191286%_)
                                               (gx#core-identifier=?
                                                _%$%hd191201191286%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd191169%_)
                                            (_%K191170%_
                                             _%rest191171%_
                                             _%r191172%_))
                                          (_%$%E191199191279%_))))
                                  (_%$%E191199191279%_))))
                           (_%$%E191185191303%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191173191221%_)
                                  (let ((_%$%e191196191295%_
                                         (gx#syntax-e _%$%e191173191221%_)))
                                    (let ((_%$%hd191197191298%_
                                           (##car _%$%e191196191295%_))
                                          (_%$%tl191198191300%_
                                           (##cdr _%$%e191196191295%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191197191298%_)
                                               (gx#core-identifier=?
                                                _%$%hd191197191298%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd191169%_)
                                            (_%K191170%_
                                             _%rest191171%_
                                             _%r191172%_))
                                          (_%$%E191195191291%_))))
                                  (_%$%E191195191291%_))))
                           (_%$%E191175191335%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191173191221%_)
                                  (let ((_%$%e191186191307%_
                                         (gx#syntax-e _%$%e191173191221%_)))
                                    (let ((_%$%hd191187191310%_
                                           (##car _%$%e191186191307%_))
                                          (_%$%tl191188191312%_
                                           (##cdr _%$%e191186191307%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191187191310%_)
                                               (gx#core-identifier=?
                                                _%$%hd191187191310%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl191188191312%_)
                                              (let ((_%$%e191189191315%_
                                                     (gx#syntax-e
                                                      _%$%tl191188191312%_)))
                                                (let ((_%$%hd191190191318%_
                                                       (##car _%$%e191189191315%_))
                                                      (_%$%tl191191191320%_
                                                       (##cdr _%$%e191189191315%_)))
                                                  (let ((_%hd-bind191323%_
                                                         _%$%hd191190191318%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl191191191320%_)
                                                        (let ((_%$%e191192191325%_
                                                               (gx#syntax-e
                                                                _%$%tl191191191320%_)))
                                                          (let ((_%$%hd191193191328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e191192191325%_))
                        (_%$%tl191194191330%_ (##cdr _%$%e191192191325%_)))
                    (let ((_%expr191333%_ _%$%hd191193191328%_))
                      (if (gx#stx-null? _%$%tl191194191330%_)
                          (if (gx#core-bind-values? _%hd-bind191323%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind191323%_)
                                (_%K191170%_
                                 _%rest191171%_
                                 (cons _%hd191169%_ _%r191172%_)))
                              (_%$%E191185191303%_))
                          (_%$%E191185191303%_)))))
                (_%$%E191185191303%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E191185191303%_))
                                          (_%$%E191185191303%_))))
                                  (_%$%E191185191303%_))))
                           (_%$%E191174191369%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191173191221%_)
                                  (let ((_%$%e191176191339%_
                                         (gx#syntax-e _%$%e191173191221%_)))
                                    (let ((_%$%hd191177191342%_
                                           (##car _%$%e191176191339%_))
                                          (_%$%tl191178191344%_
                                           (##cdr _%$%e191176191339%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191177191342%_)
                                               (gx#core-identifier=?
                                                _%$%hd191177191342%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl191178191344%_)
                                              (let ((_%$%e191179191347%_
                                                     (gx#syntax-e
                                                      _%$%tl191178191344%_)))
                                                (let ((_%$%hd191180191350%_
                                                       (##car _%$%e191179191347%_))
                                                      (_%$%tl191181191352%_
                                                       (##cdr _%$%e191179191347%_)))
                                                  (let ((_%hd-bind191355%_
                                                         _%$%hd191180191350%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl191181191352%_)
                                                        (let ((_%$%e191182191357%_
                                                               (gx#syntax-e
                                                                _%$%tl191181191352%_)))
                                                          (let ((_%$%hd191183191360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e191182191357%_))
                        (_%$%tl191184191362%_ (##cdr _%$%e191182191357%_)))
                    (let* ((_%expr191365%_ _%$%hd191183191360%_)
                           (_%props191367%_ _%$%tl191184191362%_))
                      (if (and (gx#core-bind-values? _%hd-bind191355%_)
                               (gx#stx-list? _%props191367%_)
                               (not (gx#stx-null? _%props191367%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind191355%_)
                            (_%K191170%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind191355%_
                                          (cons _%props191367%_ '())))
                                   _%rest191171%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind191355%_
                                          (cons _%expr191365%_ '())))
                                   _%r191172%_)))
                          (_%$%E191175191335%_)))))
                (_%$%E191175191335%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E191175191335%_))
                                          (_%$%E191175191335%_))))
                                  (_%$%E191175191335%_)))))
                      (_%$%E191174191369%_))))
                 (_%wrap-internal191013%_
                  (lambda (_%rbody191015%_)
                    (let _%lp191017%_ ((_%rest191019%_ _%rbody191015%_)
                                       (_%decls191020%_ '())
                                       (_%bind191021%_ '())
                                       (_%body191022%_ '()))
                      (let* ((_%$%e191023191030%_ _%rest191019%_)
                             (_%$%E191025191079%_
                              (lambda ()
                                (let* ((_%body191074%_
                                        (let* ((_%$%body191033191043%_
                                                _%body191022%_)
                                               (_%$%else191036191051%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body191022%_)
                                                   (gx#stx-source
                                                    _%stx191007%_)))))
                                          (let ((_%$%K191041191071%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx191007%_)))
                                                (_%$%K191038191057%_
                                                 (lambda (_%expr191055%_)
                                                   _%expr191055%_)))
                                            (let ((_%$%try-match191035191067%_
                                                   (lambda ()
                                                     (if (pair? _%$%body191033191043%_)
                                                         (let ((_%$%tl191040191062%_
                                                                (##cdr _%$%body191033191043%_))
                                                               (_%$%hd191039191060%_
                                                                (##car _%$%body191033191043%_)))
                                                           (if (null? _%$%tl191040191062%_)
                                                               (let ((_%expr191065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%hd191039191060%_))
                         (_%$%K191038191057%_ _%expr191065%_))
                       (_%$%else191036191051%_)))
                 (_%$%else191036191051%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%$%body191033191043%_)
                                                  (_%$%K191041191071%_)
                                                  (_%$%try-match191035191067%_))))))
                                       (_%body191076%_
                                        (if (null? _%bind191021%_)
                                            _%body191074%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind191021%_
                                                         (cons _%body191074%_
                                                               '())))
                                             (gx#stx-source _%stx191007%_)))))
                                  (if (null? _%decls191020%_)
                                      _%body191076%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls191020%_
                                                   (cons _%body191076%_ '())))
                                       (gx#stx-source _%stx191007%_))))))
                             (_%$%E191024191165%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e191023191030%_)
                                    (let ((_%$%e191026191083%_
                                           (gx#syntax-e _%$%e191023191030%_)))
                                      (let ((_%$%hd191027191086%_
                                             (##car _%$%e191026191083%_))
                                            (_%$%tl191028191088%_
                                             (##cdr _%$%e191026191083%_)))
                                        (let* ((_%hd191091%_
                                                _%$%hd191027191086%_)
                                               (_%rest191093%_
                                                _%$%tl191028191088%_)
                                               (_%$%e191094191111%_
                                                _%hd191091%_)
                                               (_%$%E191106191115%_
                                                (lambda ()
                                                  (if (null? _%bind191021%_)
                                                      (_%lp191017%_
                                                       _%rest191093%_
                                                       _%decls191020%_
                                                       _%bind191021%_
                                                       (cons _%hd191091%_
                                                             _%body191022%_))
                                                      (_%lp191017%_
                                                       _%rest191093%_
                                                       _%decls191020%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd191091%_ '()))
                     _%bind191021%_)
               _%body191022%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E191096191129%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e191094191111%_)
                                                      (let ((_%$%e191107191119%_
                                                             (gx#syntax-e
                                                              _%$%e191094191111%_)))
                                                        (let ((_%$%hd191108191122%_
                                                               (##car _%$%e191107191119%_))
                                                              (_%$%tl191109191124%_
                                                               (##cdr _%$%e191107191119%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd191108191122%_)
                           (gx#core-identifier=?
                            _%$%hd191108191122%_
                            '%#declare))
                      (let ((_%xdecls191127%_ _%$%tl191109191124%_))
                        (_%lp191017%_
                         _%rest191093%_
                         (gx#stx-foldr cons _%decls191020%_ _%xdecls191127%_)
                         _%bind191021%_
                         _%body191022%_))
                      (_%$%E191106191115%_))))
              (_%$%E191106191115%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E191095191161%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e191094191111%_)
                                                      (let ((_%$%e191097191133%_
                                                             (gx#syntax-e
                                                              _%$%e191094191111%_)))
                                                        (let ((_%$%hd191098191136%_
                                                               (##car _%$%e191097191133%_))
                                                              (_%$%tl191099191138%_
                                                               (##cdr _%$%e191097191133%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd191098191136%_)
                           (gx#core-identifier=?
                            _%$%hd191098191136%_
                            '%#define-values))
                      (if (gx#stx-pair? _%$%tl191099191138%_)
                          (let ((_%$%e191100191141%_
                                 (gx#syntax-e _%$%tl191099191138%_)))
                            (let ((_%$%hd191101191144%_
                                   (##car _%$%e191100191141%_))
                                  (_%$%tl191102191146%_
                                   (##cdr _%$%e191100191141%_)))
                              (let ((_%hd-bind191149%_ _%$%hd191101191144%_))
                                (if (gx#stx-pair? _%$%tl191102191146%_)
                                    (let ((_%$%e191103191151%_
                                           (gx#syntax-e _%$%tl191102191146%_)))
                                      (let ((_%$%hd191104191154%_
                                             (##car _%$%e191103191151%_))
                                            (_%$%tl191105191156%_
                                             (##cdr _%$%e191103191151%_)))
                                        (let ((_%expr191159%_
                                               _%$%hd191104191154%_))
                                          (if (gx#stx-null?
                                               _%$%tl191105191156%_)
                                              (_%lp191017%_
                                               _%rest191093%_
                                               _%decls191020%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind191149%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr191159%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind191021%_)
                                               _%body191022%_)
                                              (_%$%E191096191129%_)))))
                                    (_%$%E191096191129%_)))))
                          (_%$%E191096191129%_))
                      (_%$%E191096191129%_))))
              (_%$%E191096191129%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%E191095191161%_))))
                                    (_%$%E191025191079%_)))))
                        (_%$%E191024191165%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body191008%_)
            (gx#stx-source _%stx191007%_))
           _%expand-special191010%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx190945%_)
        (let* ((_%$%e190946190953%_ _%stx190945%_)
               (_%$%E190948190957%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190946190953%_)))
               (_%$%E190947191003%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190946190953%_)
                      (let ((_%$%e190949190961%_
                             (gx#syntax-e _%$%e190946190953%_)))
                        (let ((_%$%hd190950190964%_
                               (##car _%$%e190949190961%_))
                              (_%$%tl190951190966%_
                               (##cdr _%$%e190949190961%_)))
                          (let ((_%body190969%_ _%$%tl190951190966%_))
                            (if (gx#stx-list? _%body190969%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl190971%_)
                                     (let* ((_%$%e190972190979%_
                                             _%decl190971%_)
                                            (_%$%E190974190983%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%$%e190972190979%_)))
                                            (_%$%E190973190999%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%$%e190972190979%_)
                                                   (let ((_%$%e190975190987%_
                                                          (gx#syntax-e
                                                           _%$%e190972190979%_)))
                                                     (let ((_%$%hd190976190990%_
                                                            (##car _%$%e190975190987%_))
                                                           (_%$%tl190977190992%_
                                                            (##cdr _%$%e190975190987%_)))
                                                       (let* ((_%head190995%_
                                                               _%$%hd190976190990%_)
                                                              (_%args190997%_
                                                               _%$%tl190977190992%_))
                                                         (if (gx#stx-list?
                                                              _%args190997%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl190971%_)
                                                             (_%$%E190974190983%_)))))
                                                   (_%$%E190974190983%_)))))
                                       (_%$%E190973190999%_)))
                                   _%body190969%_))
                                 (gx#stx-source _%stx190945%_))
                                (_%$%E190948190957%_)))))
                      (_%$%E190948190957%_)))))
          (_%$%E190947191003%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx190849%_)
        (let* ((_%$%e190850190857%_ _%stx190849%_)
               (_%$%E190852190861%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190850190857%_)))
               (_%$%E190851190941%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190850190857%_)
                      (let ((_%$%e190853190865%_
                             (gx#syntax-e _%$%e190850190857%_)))
                        (let ((_%$%hd190854190868%_
                               (##car _%$%e190853190865%_))
                              (_%$%tl190855190870%_
                               (##cdr _%$%e190853190865%_)))
                          (let ((_%body190873%_ _%$%tl190855190870%_))
                            (let _%lp190875%_ ((_%rest190877%_ _%body190873%_)
                                               (_%r190878%_ '()))
                              (let* ((_%$%e190879190893%_ _%rest190877%_)
                                     (_%$%E190891190897%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx190849%_)))
                                     (_%$%E190881190901%_
                                      (lambda ()
                                        (if (gx#stx-null? _%$%e190879190893%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r190878%_))
                                             (gx#stx-source _%stx190849%_))
                                            (_%$%E190891190897%_))))
                                     (_%$%E190880190937%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e190879190893%_)
                                            (let ((_%$%e190882190905%_
                                                   (gx#syntax-e
                                                    _%$%e190879190893%_)))
                                              (let ((_%$%hd190883190908%_
                                                     (##car _%$%e190882190905%_))
                                                    (_%$%tl190884190910%_
                                                     (##cdr _%$%e190882190905%_)))
                                                (if (gx#stx-pair?
                                                     _%$%hd190883190908%_)
                                                    (let ((_%$%e190885190913%_
                                                           (gx#syntax-e
                                                            _%$%hd190883190908%_)))
                                                      (let ((_%$%hd190886190916%_
                                                             (##car _%$%e190885190913%_))
                                                            (_%$%tl190887190918%_
                                                             (##cdr _%$%e190885190913%_)))
                                                        (let ((_%id190921%_
                                                               _%$%hd190886190916%_))
                                                          (if (gx#stx-pair?
                                                               _%$%tl190887190918%_)
                                                              (let ((_%$%e190888190923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl190887190918%_)))
                        (let ((_%$%hd190889190926%_
                               (##car _%$%e190888190923%_))
                              (_%$%tl190890190928%_
                               (##cdr _%$%e190888190923%_)))
                          (let ((_%eid190931%_ _%$%hd190889190926%_))
                            (if (gx#stx-null? _%$%tl190890190928%_)
                                (let ((_%rest190933%_ _%$%tl190884190910%_))
                                  (if (and (gx#identifier? _%id190921%_)
                                           (gx#identifier? _%eid190931%_))
                                      (let ((_%eid190935%_
                                             (gx#stx-e _%eid190931%_)))
                                        (gx#core-bind-extern!__0
                                         _%id190921%_
                                         _%eid190935%_)
                                        (_%lp190875%_
                                         _%rest190933%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id190921%_)
                                                     (cons _%eid190935%_ '()))
                                               _%r190878%_)))
                                      (_%$%E190881190901%_)))
                                (_%$%E190881190901%_)))))
                      (_%$%E190881190901%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E190881190901%_))))
                                            (_%$%E190881190901%_)))))
                                (_%$%E190880190937%_))))))
                      (_%$%E190852190861%_)))))
          (_%$%E190851190941%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx190751%_)
        (let* ((_%$%e190752190775%_ _%stx190751%_)
               (_%$%E190764190779%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190752190775%_)))
               (_%$%E190754190811%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190752190775%_)
                      (let ((_%$%e190765190783%_
                             (gx#syntax-e _%$%e190752190775%_)))
                        (let ((_%$%hd190766190786%_
                               (##car _%$%e190765190783%_))
                              (_%$%tl190767190788%_
                               (##cdr _%$%e190765190783%_)))
                          (if (gx#stx-pair? _%$%tl190767190788%_)
                              (let ((_%$%e190768190791%_
                                     (gx#syntax-e _%$%tl190767190788%_)))
                                (let ((_%$%hd190769190794%_
                                       (##car _%$%e190768190791%_))
                                      (_%$%tl190770190796%_
                                       (##cdr _%$%e190768190791%_)))
                                  (let ((_%hd190799%_ _%$%hd190769190794%_))
                                    (if (gx#stx-pair? _%$%tl190770190796%_)
                                        (let ((_%$%e190771190801%_
                                               (gx#syntax-e
                                                _%$%tl190770190796%_)))
                                          (let ((_%$%hd190772190804%_
                                                 (##car _%$%e190771190801%_))
                                                (_%$%tl190773190806%_
                                                 (##cdr _%$%e190771190801%_)))
                                            (let ((_%expr190809%_
                                                   _%$%hd190772190804%_))
                                              (if (gx#stx-null?
                                                   _%$%tl190773190806%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd190799%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd190799%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd190799%_)
                             (cons (gx#core-expand-expression _%expr190809%_)
                                   '())))
                 (gx#stx-source _%stx190751%_)))
              (_%$%E190764190779%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E190764190779%_)))))
                                        (_%$%E190764190779%_)))))
                              (_%$%E190764190779%_))))
                      (_%$%E190764190779%_))))
               (_%$%E190753190845%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190752190775%_)
                      (let ((_%$%e190755190815%_
                             (gx#syntax-e _%$%e190752190775%_)))
                        (let ((_%$%hd190756190818%_
                               (##car _%$%e190755190815%_))
                              (_%$%tl190757190820%_
                               (##cdr _%$%e190755190815%_)))
                          (if (gx#stx-pair? _%$%tl190757190820%_)
                              (let ((_%$%e190758190823%_
                                     (gx#syntax-e _%$%tl190757190820%_)))
                                (let ((_%$%hd190759190826%_
                                       (##car _%$%e190758190823%_))
                                      (_%$%tl190760190828%_
                                       (##cdr _%$%e190758190823%_)))
                                  (let ((_%hd190831%_ _%$%hd190759190826%_))
                                    (if (gx#stx-pair? _%$%tl190760190828%_)
                                        (let ((_%$%e190761190833%_
                                               (gx#syntax-e
                                                _%$%tl190760190828%_)))
                                          (let ((_%$%hd190762190836%_
                                                 (##car _%$%e190761190833%_))
                                                (_%$%tl190763190838%_
                                                 (##cdr _%$%e190761190833%_)))
                                            (let* ((_%expr190841%_
                                                    _%$%hd190762190836%_)
                                                   (_%props190843%_
                                                    _%$%tl190763190838%_))
                                              (if (and (gx#stx-list?
                                                        _%props190843%_)
                                                       (not (gx#stx-null?
                                                             _%props190843%_)))
                                                  (gx#core-cons
                                                   '%#begin
                                                   (cons (gx#core-cons
                                                          '%#define-values
                                                          (cons _%hd190831%_
                                                                (cons _%expr190841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                 (cons (gx#core-cons
                        '%#bind-runtime-properties!
                        (cons _%hd190831%_ (cons _%props190843%_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E190754190811%_)))))
                                        (_%$%E190754190811%_)))))
                              (_%$%E190754190811%_))))
                      (_%$%E190754190811%_)))))
          (_%$%E190753190845%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx190690%_)
        (let* ((_%$%e190691190704%_ _%stx190690%_)
               (_%$%E190693190708%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190691190704%_)))
               (_%$%E190692190747%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190691190704%_)
                      (let ((_%$%e190694190712%_
                             (gx#syntax-e _%$%e190691190704%_)))
                        (let ((_%$%hd190695190715%_
                               (##car _%$%e190694190712%_))
                              (_%$%tl190696190717%_
                               (##cdr _%$%e190694190712%_)))
                          (if (gx#stx-pair? _%$%tl190696190717%_)
                              (let ((_%$%e190697190720%_
                                     (gx#syntax-e _%$%tl190696190717%_)))
                                (let ((_%$%hd190698190723%_
                                       (##car _%$%e190697190720%_))
                                      (_%$%tl190699190725%_
                                       (##cdr _%$%e190697190720%_)))
                                  (let ((_%id190728%_ _%$%hd190698190723%_))
                                    (if (gx#stx-pair? _%$%tl190699190725%_)
                                        (let ((_%$%e190700190730%_
                                               (gx#syntax-e
                                                _%$%tl190699190725%_)))
                                          (let ((_%$%hd190701190733%_
                                                 (##car _%$%e190700190730%_))
                                                (_%$%tl190702190735%_
                                                 (##cdr _%$%e190700190730%_)))
                                            (let* ((_%binding-id190738%_
                                                    _%$%hd190701190733%_)
                                                   (_%props190740%_
                                                    _%$%tl190702190735%_))
                                              (if (and (gx#identifier?
                                                        _%id190728%_)
                                                       (gx#identifier?
                                                        _%binding-id190738%_)
                                                       (gx#stx-list?
                                                        _%props190740%_))
                                                  (let* ((_%eid190742%_
                                                          (gx#stx-e
                                                           _%binding-id190738%_))
                                                         (_%bind190744%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id190728%_
                                                           _%eid190742%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind190744%_
                                                     _%props190740%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id190728%_)
                         (cons _%eid190742%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E190693190708%_)))))
                                        (_%$%E190693190708%_)))))
                              (_%$%E190693190708%_))))
                      (_%$%E190693190708%_)))))
          (_%$%E190692190747%_))))
    (define gx#core-expand-bind-runtime-properties%
      (lambda (_%stx190623%_)
        (let* ((_%$%e190624190640%_ _%stx190623%_)
               (_%$%E190626190644%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190624190640%_)))
               (_%$%E190625190686%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190624190640%_)
                      (let ((_%$%e190627190648%_
                             (gx#syntax-e _%$%e190624190640%_)))
                        (let ((_%$%hd190628190651%_
                               (##car _%$%e190627190648%_))
                              (_%$%tl190629190653%_
                               (##cdr _%$%e190627190648%_)))
                          (if (gx#stx-pair? _%$%tl190629190653%_)
                              (let ((_%$%e190630190656%_
                                     (gx#syntax-e _%$%tl190629190653%_)))
                                (let ((_%$%hd190631190659%_
                                       (##car _%$%e190630190656%_))
                                      (_%$%tl190632190661%_
                                       (##cdr _%$%e190630190656%_)))
                                  (if (gx#stx-pair? _%$%hd190631190659%_)
                                      (let ((_%$%e190636190664%_
                                             (gx#syntax-e
                                              _%$%hd190631190659%_)))
                                        (let ((_%$%hd190637190667%_
                                               (##car _%$%e190636190664%_))
                                              (_%$%tl190638190669%_
                                               (##cdr _%$%e190636190664%_)))
                                          (let ((_%id190672%_
                                                 _%$%hd190637190667%_))
                                            (if (gx#stx-null?
                                                 _%$%tl190638190669%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl190632190661%_)
                                                    (let ((_%$%e190633190674%_
                                                           (gx#syntax-e
                                                            _%$%tl190632190661%_)))
                                                      (let ((_%$%hd190634190677%_
                                                             (##car _%$%e190633190674%_))
                                                            (_%$%tl190635190679%_
                                                             (##cdr _%$%e190633190674%_)))
                                                        (let ((_%props190682%_
                                                               _%$%hd190634190677%_))
                                                          (if (gx#stx-null?
                                                               _%$%tl190635190679%_)
                                                              (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%id190672%_)
                               (gx#stx-list? _%props190682%_))
                          (let ((_%bind190684%_
                                 (gx#resolve-identifier__0 _%id190672%_)))
                            (if (##structure-instance-of?
                                 _%bind190684%_
                                 'gx#runtime-binding::t)
                                '#!void
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; expected runtime binding"
                                 _%stx190623%_
                                 _%id190672%_
                                 _%bind190684%_))
                            (gx#core-bind-runtime-properties!
                             _%bind190684%_
                             _%props190682%_)
                            (gx#core-cons '%#begin '()))
                          (_%$%E190626190644%_))
                      (_%$%E190626190644%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E190626190644%_))
                                                (_%$%E190626190644%_)))))
                                      (_%$%E190626190644%_))))
                              (_%$%E190626190644%_))))
                      (_%$%E190626190644%_)))))
          (_%$%E190625190686%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind190558%_ _%props190559%_)
        (letrec ((_%eval-prop190561%_
                  (lambda (_%prop190621%_)
                    (gx#eval-expression+1 _%prop190621%_))))
          (let _%loop190563%_ ((_%rest190565%_ _%props190559%_)
                               (_%props190566%_ '()))
            (let* ((_%$%e190567190578%_ _%rest190565%_)
                   (_%$%E190576190582%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e190567190578%_)))
                   (_%$%E190569190586%_
                    (lambda ()
                      (if (gx#stx-null? _%$%e190567190578%_)
                          (if (null? _%props190566%_)
                              '#!void
                              (##structure-set!
                               _%bind190558%_
                               (reverse! _%props190566%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%$%E190576190582%_))))
                   (_%$%E190568190617%_
                    (lambda ()
                      (if (gx#stx-pair? _%$%e190567190578%_)
                          (let ((_%$%e190570190590%_
                                 (gx#syntax-e _%$%e190567190578%_)))
                            (let ((_%$%hd190571190593%_
                                   (##car _%$%e190570190590%_))
                                  (_%$%tl190572190595%_
                                   (##cdr _%$%e190570190590%_)))
                              (let ((_%key190598%_ _%$%hd190571190593%_))
                                (if (gx#stx-pair? _%$%tl190572190595%_)
                                    (let ((_%$%e190573190600%_
                                           (gx#syntax-e _%$%tl190572190595%_)))
                                      (let ((_%$%hd190574190603%_
                                             (##car _%$%e190573190600%_))
                                            (_%$%tl190575190605%_
                                             (##cdr _%$%e190573190600%_)))
                                        (let* ((_%prop190608%_
                                                _%$%hd190574190603%_)
                                               (_%rest190610%_
                                                _%$%tl190575190605%_))
                                          (if (gx#stx-keyword? _%key190598%_)
                                              (let* ((_%key190612%_
                                                      (gx#stx-e _%key190598%_))
                                                     (_%$e190614%_
                                                      _%key190612%_))
                                                (if (eq? 'macro: _%$e190614%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind190558%_
                                                       (if (gx#identifier?
                                                            _%prop190608%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop190608%_)
                                                           (gx#eval-expression+1
                                                            _%prop190608%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop190563%_
                                                       _%rest190610%_
                                                       _%props190566%_))
                                                    (if (eq? 'type:
                                                             _%$e190614%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind190558%_
                                                           (gx#eval-expression+1
                                                            _%prop190608%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop190563%_
                                                           _%rest190610%_
                                                           _%props190566%_))
                                                        (_%loop190563%_
                                                         _%rest190610%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop190608%_)
                                                               (cons _%key190612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props190566%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E190569190586%_)))))
                                    (_%$%E190569190586%_)))))
                          (_%$%E190569190586%_)))))
              (_%$%E190568190617%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx190501%_)
        (let* ((_%$%e190502190515%_ _%stx190501%_)
               (_%$%E190504190519%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190502190515%_)))
               (_%$%E190503190554%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190502190515%_)
                      (let ((_%$%e190505190523%_
                             (gx#syntax-e _%$%e190502190515%_)))
                        (let ((_%$%hd190506190526%_
                               (##car _%$%e190505190523%_))
                              (_%$%tl190507190528%_
                               (##cdr _%$%e190505190523%_)))
                          (if (gx#stx-pair? _%$%tl190507190528%_)
                              (let ((_%$%e190508190531%_
                                     (gx#syntax-e _%$%tl190507190528%_)))
                                (let ((_%$%hd190509190534%_
                                       (##car _%$%e190508190531%_))
                                      (_%$%tl190510190536%_
                                       (##cdr _%$%e190508190531%_)))
                                  (let ((_%id190539%_ _%$%hd190509190534%_))
                                    (if (gx#stx-pair? _%$%tl190510190536%_)
                                        (let ((_%$%e190511190541%_
                                               (gx#syntax-e
                                                _%$%tl190510190536%_)))
                                          (let ((_%$%hd190512190544%_
                                                 (##car _%$%e190511190541%_))
                                                (_%$%tl190513190546%_
                                                 (##cdr _%$%e190511190541%_)))
                                            (let ((_%expr190549%_
                                                   _%$%hd190512190544%_))
                                              (if (gx#stx-null?
                                                   _%$%tl190513190546%_)
                                                  (if (gx#identifier?
                                                       _%id190539%_)
                                                      (let ((_g191849_
                                                             (gx#core-expand-expression+1
                                                              _%expr190549%_)))
                                                        (begin
                                                          (let ((_g191850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g191849_)
                             (##values-length _g191849_)
                             1)))
                    (if (not (##fx= _g191850_ 2))
                        (error "Context expects 2 values" _g191850_)))
                  (let ((_%e-stx190551%_ (##values-ref _g191849_ 0))
                        (_%e190552%_ (##values-ref _g191849_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id190539%_ _%e190552%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id190539%_)
                                   (cons _%e-stx190551%_ '())))
                       (gx#stx-source _%stx190501%_))))))
              (_%$%E190504190519%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E190504190519%_)))))
                                        (_%$%E190504190519%_)))))
                              (_%$%E190504190519%_))))
                      (_%$%E190504190519%_)))))
          (_%$%E190503190554%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx190445%_)
        (let* ((_%$%e190446190459%_ _%stx190445%_)
               (_%$%E190448190463%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190446190459%_)))
               (_%$%E190447190497%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190446190459%_)
                      (let ((_%$%e190449190467%_
                             (gx#syntax-e _%$%e190446190459%_)))
                        (let ((_%$%hd190450190470%_
                               (##car _%$%e190449190467%_))
                              (_%$%tl190451190472%_
                               (##cdr _%$%e190449190467%_)))
                          (if (gx#stx-pair? _%$%tl190451190472%_)
                              (let ((_%$%e190452190475%_
                                     (gx#syntax-e _%$%tl190451190472%_)))
                                (let ((_%$%hd190453190478%_
                                       (##car _%$%e190452190475%_))
                                      (_%$%tl190454190480%_
                                       (##cdr _%$%e190452190475%_)))
                                  (let ((_%id190483%_ _%$%hd190453190478%_))
                                    (if (gx#stx-pair? _%$%tl190454190480%_)
                                        (let ((_%$%e190455190485%_
                                               (gx#syntax-e
                                                _%$%tl190454190480%_)))
                                          (let ((_%$%hd190456190488%_
                                                 (##car _%$%e190455190485%_))
                                                (_%$%tl190457190490%_
                                                 (##cdr _%$%e190455190485%_)))
                                            (let ((_%alias-id190493%_
                                                   _%$%hd190456190488%_))
                                              (if (gx#stx-null?
                                                   _%$%tl190457190490%_)
                                                  (if (and (gx#identifier?
                                                            _%id190483%_)
                                                           (gx#identifier?
                                                            _%alias-id190493%_))
                                                      (let ((_%alias-id190495%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id190493%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id190483%_
                                                         _%alias-id190495%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id190483%_)
                             (cons _%alias-id190495%_ '())))))
              (_%$%E190448190463%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E190448190463%_)))))
                                        (_%$%E190448190463%_)))))
                              (_%$%E190448190463%_))))
                      (_%$%E190448190463%_)))))
          (_%$%E190447190497%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx190388%_ _%wrap?190389%_)
        (let* ((_%$%e190390190400%_ _%stx190388%_)
               (_%$%E190392190404%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190390190400%_)))
               (_%$%E190391190431%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190390190400%_)
                      (let ((_%$%e190393190408%_
                             (gx#syntax-e _%$%e190390190400%_)))
                        (let ((_%$%hd190394190411%_
                               (##car _%$%e190393190408%_))
                              (_%$%tl190395190413%_
                               (##cdr _%$%e190393190408%_)))
                          (if (gx#stx-pair? _%$%tl190395190413%_)
                              (let ((_%$%e190396190416%_
                                     (gx#syntax-e _%$%tl190395190413%_)))
                                (let ((_%$%hd190397190419%_
                                       (##car _%$%e190396190416%_))
                                      (_%$%tl190398190421%_
                                       (##cdr _%$%e190396190416%_)))
                                  (let* ((_%hd190424%_ _%$%hd190397190419%_)
                                         (_%body190426%_ _%$%tl190398190421%_))
                                    (if (gx#core-bind-values? _%hd190424%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd190424%_)
                                           (let ((_%body190429%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd190424%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx190388%_
                                                               _%body190426%_)
                                                              '()))))
                                             (if _%wrap?190389%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body190429%_)
                                                  (gx#stx-source
                                                   _%stx190388%_))
                                                 _%body190429%_)))
                                         gx#current-expander-context
                                         (let ((__obj191832
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj191832)
                                           __obj191832))
                                        (_%$%E190392190404%_)))))
                              (_%$%E190392190404%_))))
                      (_%$%E190392190404%_)))))
          (_%$%E190391190431%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx190438%_)
        (let ((_%wrap?190440%_ '#t))
          (gx#core-expand-lambda%__% _%stx190438%_ _%wrap?190440%_))))
    (define gx#core-expand-lambda%
      (lambda _g191851_
        (let ((_g191852_ (##length _g191851_)))
          (cond ((##fx= _g191852_ 1)
                 (apply gx#core-expand-lambda%__0 _g191851_))
                ((##fx= _g191852_ 2)
                 (apply gx#core-expand-lambda%__% _g191851_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g191851_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx190352%_)
        (let* ((_%$%e190353190360%_ _%stx190352%_)
               (_%$%E190355190364%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190353190360%_)))
               (_%$%E190354190383%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190353190360%_)
                      (let ((_%$%e190356190368%_
                             (gx#syntax-e _%$%e190353190360%_)))
                        (let ((_%$%hd190357190371%_
                               (##car _%$%e190356190368%_))
                              (_%$%tl190358190373%_
                               (##cdr _%$%e190356190368%_)))
                          (let ((_%clauses190376%_ _%$%tl190358190373%_))
                            (if (gx#stx-list? _%clauses190376%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause190378%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause190378%_)
                                       (let ((_%$e190380%_
                                              (gx#stx-source
                                               _%clause190378%_)))
                                         (if _%$e190380%_
                                             _%$e190380%_
                                             (gx#stx-source _%stx190352%_))))
                                      '#f))
                                   _%clauses190376%_))
                                 (gx#stx-source _%stx190352%_))
                                (_%$%E190355190364%_)))))
                      (_%$%E190355190364%_)))))
          (_%$%E190354190383%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx190306%_)
        (let* ((_%$%e190307190317%_ _%stx190306%_)
               (_%$%E190309190321%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190307190317%_)))
               (_%$%E190308190348%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190307190317%_)
                      (let ((_%$%e190310190325%_
                             (gx#syntax-e _%$%e190307190317%_)))
                        (let ((_%$%hd190311190328%_
                               (##car _%$%e190310190325%_))
                              (_%$%tl190312190330%_
                               (##cdr _%$%e190310190325%_)))
                          (if (gx#stx-pair? _%$%tl190312190330%_)
                              (let ((_%$%e190313190333%_
                                     (gx#syntax-e _%$%tl190312190330%_)))
                                (let ((_%$%hd190314190336%_
                                       (##car _%$%e190313190333%_))
                                      (_%$%tl190315190338%_
                                       (##cdr _%$%e190313190333%_)))
                                  (let* ((_%hd190341%_ _%$%hd190314190336%_)
                                         (_%body190343%_ _%$%tl190315190338%_))
                                    (if (gx#core-expand-let-bind? _%hd190341%_)
                                        (let ((_%expressions190345%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd190341%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd190341%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd190341%_
                                                           _%expressions190345%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx190306%_
                         _%body190343%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx190306%_)))
                                           gx#current-expander-context
                                           (let ((__obj191833
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj191833)
                                             __obj191833)))
                                        (_%$%E190309190321%_)))))
                              (_%$%E190309190321%_))))
                      (_%$%E190309190321%_)))))
          (_%$%E190308190348%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx190251%_ _%form190252%_)
        (let* ((_%$%e190253190263%_ _%stx190251%_)
               (_%$%E190255190267%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190253190263%_)))
               (_%$%E190254190292%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190253190263%_)
                      (let ((_%$%e190256190271%_
                             (gx#syntax-e _%$%e190253190263%_)))
                        (let ((_%$%hd190257190274%_
                               (##car _%$%e190256190271%_))
                              (_%$%tl190258190276%_
                               (##cdr _%$%e190256190271%_)))
                          (if (gx#stx-pair? _%$%tl190258190276%_)
                              (let ((_%$%e190259190279%_
                                     (gx#syntax-e _%$%tl190258190276%_)))
                                (let ((_%$%hd190260190282%_
                                       (##car _%$%e190259190279%_))
                                      (_%$%tl190261190284%_
                                       (##cdr _%$%e190259190279%_)))
                                  (let* ((_%hd190287%_ _%$%hd190260190282%_)
                                         (_%body190289%_ _%$%tl190261190284%_))
                                    (if (gx#core-expand-let-bind? _%hd190287%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd190287%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form190252%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd190287%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd190287%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx190251%_
                                                               _%body190289%_)
                                                              '())))
                                            (gx#stx-source _%stx190251%_)))
                                         gx#current-expander-context
                                         (let ((__obj191834
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj191834)
                                           __obj191834))
                                        (_%$%E190255190267%_)))))
                              (_%$%E190255190267%_))))
                      (_%$%E190255190267%_)))))
          (_%$%E190254190292%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx190299%_)
        (let ((_%form190301%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx190299%_ _%form190301%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g191853_
        (let ((_g191854_ (##length _g191853_)))
          (cond ((##fx= _g191854_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g191853_))
                ((##fx= _g191854_ 2)
                 (apply gx#core-expand-letrec-values%__% _g191853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g191853_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx190248%_)
        (gx#core-expand-letrec-values%__% _%stx190248%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx190205%_)
        (if (gx#stx-list? _%stx190205%_)
            (gx#stx-andmap
             (lambda (_%bind190207%_)
               (let* ((_%$%e190208190218%_ _%bind190207%_)
                      (_%$%E190210190222%_ (lambda () '#f))
                      (_%$%E190209190244%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e190208190218%_)
                             (let ((_%$%e190211190226%_
                                    (gx#syntax-e _%$%e190208190218%_)))
                               (let ((_%$%hd190212190229%_
                                      (##car _%$%e190211190226%_))
                                     (_%$%tl190213190231%_
                                      (##cdr _%$%e190211190226%_)))
                                 (let ((_%hd190234%_ _%$%hd190212190229%_))
                                   (if (gx#stx-pair? _%$%tl190213190231%_)
                                       (let ((_%$%e190214190236%_
                                              (gx#syntax-e
                                               _%$%tl190213190231%_)))
                                         (let ((_%$%hd190215190239%_
                                                (##car _%$%e190214190236%_))
                                               (_%$%tl190216190241%_
                                                (##cdr _%$%e190214190236%_)))
                                           (if (gx#stx-null?
                                                _%$%tl190216190241%_)
                                               (gx#core-bind-values?
                                                _%hd190234%_)
                                               (_%$%E190210190222%_))))
                                       (_%$%E190210190222%_)))))
                             (_%$%E190210190222%_)))))
                 (_%$%E190209190244%_)))
             _%stx190205%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind190164%_)
        (let* ((_%$%e190165190175%_ _%bind190164%_)
               (_%$%E190167190179%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190165190175%_)))
               (_%$%E190166190201%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190165190175%_)
                      (let ((_%$%e190168190183%_
                             (gx#syntax-e _%$%e190165190175%_)))
                        (let ((_%$%hd190169190186%_
                               (##car _%$%e190168190183%_))
                              (_%$%tl190170190188%_
                               (##cdr _%$%e190168190183%_)))
                          (if (gx#stx-pair? _%$%tl190170190188%_)
                              (let ((_%$%e190171190191%_
                                     (gx#syntax-e _%$%tl190170190188%_)))
                                (let ((_%$%hd190172190194%_
                                       (##car _%$%e190171190191%_))
                                      (_%$%tl190173190196%_
                                       (##cdr _%$%e190171190191%_)))
                                  (let ((_%expr190199%_ _%$%hd190172190194%_))
                                    (if (gx#stx-null? _%$%tl190173190196%_)
                                        (gx#core-expand-expression
                                         _%expr190199%_)
                                        (_%$%E190167190179%_)))))
                              (_%$%E190167190179%_))))
                      (_%$%E190167190179%_)))))
          (_%$%E190166190201%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind190123%_)
        (let* ((_%$%e190124190134%_ _%bind190123%_)
               (_%$%E190126190138%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190124190134%_)))
               (_%$%E190125190160%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190124190134%_)
                      (let ((_%$%e190127190142%_
                             (gx#syntax-e _%$%e190124190134%_)))
                        (let ((_%$%hd190128190145%_
                               (##car _%$%e190127190142%_))
                              (_%$%tl190129190147%_
                               (##cdr _%$%e190127190142%_)))
                          (let ((_%hd190150%_ _%$%hd190128190145%_))
                            (if (gx#stx-pair? _%$%tl190129190147%_)
                                (let ((_%$%e190130190152%_
                                       (gx#syntax-e _%$%tl190129190147%_)))
                                  (let ((_%$%hd190131190155%_
                                         (##car _%$%e190130190152%_))
                                        (_%$%tl190132190157%_
                                         (##cdr _%$%e190130190152%_)))
                                    (if (gx#stx-null? _%$%tl190132190157%_)
                                        (gx#core-bind-values!__0 _%hd190150%_)
                                        (_%$%E190126190138%_))))
                                (_%$%E190126190138%_)))))
                      (_%$%E190126190138%_)))))
          (_%$%E190125190160%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind190081%_ _%expr190082%_)
        (let* ((_%$%e190083190093%_ _%bind190081%_)
               (_%$%E190085190097%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190083190093%_)))
               (_%$%E190084190119%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190083190093%_)
                      (let ((_%$%e190086190101%_
                             (gx#syntax-e _%$%e190083190093%_)))
                        (let ((_%$%hd190087190104%_
                               (##car _%$%e190086190101%_))
                              (_%$%tl190088190106%_
                               (##cdr _%$%e190086190101%_)))
                          (let ((_%hd190109%_ _%$%hd190087190104%_))
                            (if (gx#stx-pair? _%$%tl190088190106%_)
                                (let ((_%$%e190089190111%_
                                       (gx#syntax-e _%$%tl190088190106%_)))
                                  (let ((_%$%hd190090190114%_
                                         (##car _%$%e190089190111%_))
                                        (_%$%tl190091190116%_
                                         (##cdr _%$%e190089190111%_)))
                                    (if (gx#stx-null? _%$%tl190091190116%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd190109%_)
                                              (cons _%expr190082%_ '()))
                                        (_%$%E190085190097%_))))
                                (_%$%E190085190097%_)))))
                      (_%$%E190085190097%_)))))
          (_%$%E190084190119%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx190035%_)
        (let* ((_%$%e190036190046%_ _%stx190035%_)
               (_%$%E190038190050%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190036190046%_)))
               (_%$%E190037190077%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190036190046%_)
                      (let ((_%$%e190039190054%_
                             (gx#syntax-e _%$%e190036190046%_)))
                        (let ((_%$%hd190040190057%_
                               (##car _%$%e190039190054%_))
                              (_%$%tl190041190059%_
                               (##cdr _%$%e190039190054%_)))
                          (if (gx#stx-pair? _%$%tl190041190059%_)
                              (let ((_%$%e190042190062%_
                                     (gx#syntax-e _%$%tl190041190059%_)))
                                (let ((_%$%hd190043190065%_
                                       (##car _%$%e190042190062%_))
                                      (_%$%tl190044190067%_
                                       (##cdr _%$%e190042190062%_)))
                                  (let* ((_%hd190070%_ _%$%hd190043190065%_)
                                         (_%body190072%_ _%$%tl190044190067%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd190070%_)
                                        (let ((_%expanders190074%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd190070%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd190070%_
                                              _%expanders190074%_)
                                             (gx#core-expand-local-block
                                              _%stx190035%_
                                              _%body190072%_))
                                           gx#current-expander-context
                                           (let ((__obj191835
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj191835)
                                             __obj191835)))
                                        (_%$%E190038190050%_)))))
                              (_%$%E190038190050%_))))
                      (_%$%E190038190050%_)))))
          (_%$%E190037190077%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx189984%_)
        (let* ((_%$%e189985189995%_ _%stx189984%_)
               (_%$%E189987189999%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189985189995%_)))
               (_%$%E189986190031%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189985189995%_)
                      (let ((_%$%e189988190003%_
                             (gx#syntax-e _%$%e189985189995%_)))
                        (let ((_%$%hd189989190006%_
                               (##car _%$%e189988190003%_))
                              (_%$%tl189990190008%_
                               (##cdr _%$%e189988190003%_)))
                          (if (gx#stx-pair? _%$%tl189990190008%_)
                              (let ((_%$%e189991190011%_
                                     (gx#syntax-e _%$%tl189990190008%_)))
                                (let ((_%$%hd189992190014%_
                                       (##car _%$%e189991190011%_))
                                      (_%$%tl189993190016%_
                                       (##cdr _%$%e189991190011%_)))
                                  (let* ((_%hd190019%_ _%$%hd189992190014%_)
                                         (_%body190021%_ _%$%tl189993190016%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd190019%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd190019%_
                                            (make-list
                                             (gx#stx-length _%hd190019%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%$%g190023190026%_
                                                     _%$%g190024190028%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%$%g190023190026%_
                                               _%$%g190024190028%_
                                               '#t))
                                            _%hd190019%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd190019%_))
                                           (gx#core-expand-local-block
                                            _%stx189984%_
                                            _%body190021%_))
                                         gx#current-expander-context
                                         (let ((__obj191836
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj191836)
                                           __obj191836))
                                        (_%$%E189987189999%_)))))
                              (_%$%E189987189999%_))))
                      (_%$%E189987189999%_)))))
          (_%$%E189986190031%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx189941%_)
        (if (gx#stx-list? _%stx189941%_)
            (gx#stx-andmap
             (lambda (_%bind189943%_)
               (let* ((_%$%e189944189954%_ _%bind189943%_)
                      (_%$%E189946189958%_ (lambda () '#f))
                      (_%$%E189945189980%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e189944189954%_)
                             (let ((_%$%e189947189962%_
                                    (gx#syntax-e _%$%e189944189954%_)))
                               (let ((_%$%hd189948189965%_
                                      (##car _%$%e189947189962%_))
                                     (_%$%tl189949189967%_
                                      (##cdr _%$%e189947189962%_)))
                                 (let ((_%hd189970%_ _%$%hd189948189965%_))
                                   (if (gx#stx-pair? _%$%tl189949189967%_)
                                       (let ((_%$%e189950189972%_
                                              (gx#syntax-e
                                               _%$%tl189949189967%_)))
                                         (let ((_%$%hd189951189975%_
                                                (##car _%$%e189950189972%_))
                                               (_%$%tl189952189977%_
                                                (##cdr _%$%e189950189972%_)))
                                           (if (gx#stx-null?
                                                _%$%tl189952189977%_)
                                               (gx#identifier? _%hd189970%_)
                                               (_%$%E189946189958%_))))
                                       (_%$%E189946189958%_)))))
                             (_%$%E189946189958%_)))))
                 (_%$%E189945189980%_)))
             _%stx189941%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind189897%_)
        (let* ((_%$%e189898189908%_ _%bind189897%_)
               (_%$%E189900189912%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189898189908%_)))
               (_%$%E189899189937%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189898189908%_)
                      (let ((_%$%e189901189916%_
                             (gx#syntax-e _%$%e189898189908%_)))
                        (let ((_%$%hd189902189919%_
                               (##car _%$%e189901189916%_))
                              (_%$%tl189903189921%_
                               (##cdr _%$%e189901189916%_)))
                          (if (gx#stx-pair? _%$%tl189903189921%_)
                              (let ((_%$%e189904189924%_
                                     (gx#syntax-e _%$%tl189903189921%_)))
                                (let ((_%$%hd189905189927%_
                                       (##car _%$%e189904189924%_))
                                      (_%$%tl189906189929%_
                                       (##cdr _%$%e189904189924%_)))
                                  (let ((_%expr189932%_ _%$%hd189905189927%_))
                                    (if (gx#stx-null? _%$%tl189906189929%_)
                                        (let ((_g191855_
                                               (gx#core-expand-expression+1
                                                _%expr189932%_)))
                                          (begin
                                            (let ((_g191856_
                                                   (if (##values? _g191855_)
                                                       (##values-length
                                                        _g191855_)
                                                       1)))
                                              (if (not (##fx= _g191856_ 2))
                                                  (error "Context expects 2 values"
                                                         _g191856_)))
                                            (let ((_%_189934%_
                                                   (##values-ref _g191855_ 0))
                                                  (_%e189935%_
                                                   (##values-ref _g191855_ 1)))
                                              _%e189935%_)))
                                        (_%$%E189900189912%_)))))
                              (_%$%E189900189912%_))))
                      (_%$%E189900189912%_)))))
          (_%$%E189899189937%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind189842%_ _%e189843%_ _%rebind?189844%_)
        (let* ((_%$%e189845189855%_ _%bind189842%_)
               (_%$%E189847189859%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189845189855%_)))
               (_%$%E189846189881%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189845189855%_)
                      (let ((_%$%e189848189863%_
                             (gx#syntax-e _%$%e189845189855%_)))
                        (let ((_%$%hd189849189866%_
                               (##car _%$%e189848189863%_))
                              (_%$%tl189850189868%_
                               (##cdr _%$%e189848189863%_)))
                          (let ((_%id189871%_ _%$%hd189849189866%_))
                            (if (gx#stx-pair? _%$%tl189850189868%_)
                                (let ((_%$%e189851189873%_
                                       (gx#syntax-e _%$%tl189850189868%_)))
                                  (let ((_%$%hd189852189876%_
                                         (##car _%$%e189851189873%_))
                                        (_%$%tl189853189878%_
                                         (##cdr _%$%e189851189873%_)))
                                    (if (gx#stx-null? _%$%tl189853189878%_)
                                        (gx#core-bind-syntax!__1
                                         _%id189871%_
                                         _%e189843%_
                                         _%rebind?189844%_)
                                        (_%$%E189847189859%_))))
                                (_%$%E189847189859%_)))))
                      (_%$%E189847189859%_)))))
          (_%$%E189846189881%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind189888%_ _%e189889%_)
        (let ((_%rebind?189891%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind189888%_
           _%e189889%_
           _%rebind?189891%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g191857_
        (let ((_g191858_ (##length _g191857_)))
          (cond ((##fx= _g191858_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g191857_))
                ((##fx= _g191858_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g191857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g191857_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx189800%_)
        (let* ((_%$%e189801189811%_ _%stx189800%_)
               (_%$%E189803189815%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189801189811%_)))
               (_%$%E189802189837%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189801189811%_)
                      (let ((_%$%e189804189819%_
                             (gx#syntax-e _%$%e189801189811%_)))
                        (let ((_%$%hd189805189822%_
                               (##car _%$%e189804189819%_))
                              (_%$%tl189806189824%_
                               (##cdr _%$%e189804189819%_)))
                          (if (gx#stx-pair? _%$%tl189806189824%_)
                              (let ((_%$%e189807189827%_
                                     (gx#syntax-e _%$%tl189806189824%_)))
                                (let ((_%$%hd189808189830%_
                                       (##car _%$%e189807189827%_))
                                      (_%$%tl189809189832%_
                                       (##cdr _%$%e189807189827%_)))
                                  (let ((_%expr189835%_ _%$%hd189808189830%_))
                                    (if (gx#stx-null? _%$%tl189809189832%_)
                                        (gx#core-expand-expression
                                         _%expr189835%_)
                                        (_%$%E189803189815%_)))))
                              (_%$%E189803189815%_))))
                      (_%$%E189803189815%_)))))
          (_%$%E189802189837%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx189759%_)
        (let* ((_%$%e189760189770%_ _%stx189759%_)
               (_%$%E189762189774%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189760189770%_)))
               (_%$%E189761189796%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189760189770%_)
                      (let ((_%$%e189763189778%_
                             (gx#syntax-e _%$%e189760189770%_)))
                        (let ((_%$%hd189764189781%_
                               (##car _%$%e189763189778%_))
                              (_%$%tl189765189783%_
                               (##cdr _%$%e189763189778%_)))
                          (if (gx#stx-pair? _%$%tl189765189783%_)
                              (let ((_%$%e189766189786%_
                                     (gx#syntax-e _%$%tl189765189783%_)))
                                (let ((_%$%hd189767189789%_
                                       (##car _%$%e189766189786%_))
                                      (_%$%tl189768189791%_
                                       (##cdr _%$%e189766189786%_)))
                                  (let ((_%e189794%_ _%$%hd189767189789%_))
                                    (if (gx#stx-null? _%$%tl189768189791%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e189794%_)
                                                     '()))
                                         (gx#stx-source _%stx189759%_))
                                        (_%$%E189762189774%_)))))
                              (_%$%E189762189774%_))))
                      (_%$%E189762189774%_)))))
          (_%$%E189761189796%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx189718%_)
        (let* ((_%$%e189719189729%_ _%stx189718%_)
               (_%$%E189721189733%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189719189729%_)))
               (_%$%E189720189755%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189719189729%_)
                      (let ((_%$%e189722189737%_
                             (gx#syntax-e _%$%e189719189729%_)))
                        (let ((_%$%hd189723189740%_
                               (##car _%$%e189722189737%_))
                              (_%$%tl189724189742%_
                               (##cdr _%$%e189722189737%_)))
                          (if (gx#stx-pair? _%$%tl189724189742%_)
                              (let ((_%$%e189725189745%_
                                     (gx#syntax-e _%$%tl189724189742%_)))
                                (let ((_%$%hd189726189748%_
                                       (##car _%$%e189725189745%_))
                                      (_%$%tl189727189750%_
                                       (##cdr _%$%e189725189745%_)))
                                  (let ((_%e189753%_ _%$%hd189726189748%_))
                                    (if (gx#stx-null? _%$%tl189727189750%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e189753%_)
                                                     '()))
                                         (gx#stx-source _%stx189718%_))
                                        (_%$%E189721189733%_)))))
                              (_%$%E189721189733%_))))
                      (_%$%E189721189733%_)))))
          (_%$%E189720189755%_))))
    (define gx#core-expand-call%
      (lambda (_%stx189612%_)
        (letrec ((_%expand-runtime-call189614%_
                  (lambda (_%rator-expr189715%_ _%args189716%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr189715%_
                      (gx#stx-map1 gx#core-expand-expression _%args189716%_))
                     (gx#stx-source _%stx189612%_)))))
          (let* ((_%$%e189615189625%_ _%stx189612%_)
                 (_%$%E189617189629%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e189615189625%_)))
                 (_%$%E189616189711%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e189615189625%_)
                        (let ((_%$%e189618189633%_
                               (gx#syntax-e _%$%e189615189625%_)))
                          (let ((_%$%hd189619189636%_
                                 (##car _%$%e189618189633%_))
                                (_%$%tl189620189638%_
                                 (##cdr _%$%e189618189633%_)))
                            (if (gx#stx-pair? _%$%tl189620189638%_)
                                (let ((_%$%e189621189641%_
                                       (gx#syntax-e _%$%tl189620189638%_)))
                                  (let ((_%$%hd189622189644%_
                                         (##car _%$%e189621189641%_))
                                        (_%$%tl189623189646%_
                                         (##cdr _%$%e189621189641%_)))
                                    (let* ((_%rator189649%_
                                            _%$%hd189622189644%_)
                                           (_%args189651%_
                                            _%$%tl189623189646%_))
                                      (if (gx#stx-list? _%args189651%_)
                                          (let* ((_%rator-expr189653%_
                                                  (gx#core-expand-expression
                                                   _%rator189649%_))
                                                 (_%$%e189654189664%_
                                                  _%rator-expr189653%_)
                                                 (_%$%E189656189668%_
                                                  (lambda ()
                                                    (_%expand-runtime-call189614%_
                                                     _%rator-expr189653%_
                                                     _%args189651%_)))
                                                 (_%$%E189655189707%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%$%e189654189664%_)
                                                        (let ((_%$%e189657189672%_
                                                               (gx#syntax-e
                                                                _%$%e189654189664%_)))
                                                          (let ((_%$%hd189658189675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e189657189672%_))
                        (_%$%tl189659189677%_ (##cdr _%$%e189657189672%_)))
                    (if (and (gx#identifier? _%$%hd189658189675%_)
                             (gx#core-identifier=?
                              _%$%hd189658189675%_
                              '%#ref))
                        (if (gx#stx-pair? _%$%tl189659189677%_)
                            (let ((_%$%e189660189680%_
                                   (gx#syntax-e _%$%tl189659189677%_)))
                              (let ((_%$%hd189661189683%_
                                     (##car _%$%e189660189680%_))
                                    (_%$%tl189662189685%_
                                     (##cdr _%$%e189660189680%_)))
                                (let ((_%id189688%_ _%$%hd189661189683%_))
                                  (if (gx#stx-null? _%$%tl189662189685%_)
                                      (let ((_%$e189690%_
                                             (gx#resolve-identifier__0
                                              _%id189688%_)))
                                        (if _%$e189690%_
                                            (let _%again189695%_ ((_%bind189697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e189690%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_%$e189699%_
                                                     (if (##structure-instance-of?
                                                          _%bind189697%_
                                                          'gx#runtime-binding::t)
                                                         (##unchecked-structure-ref
                                                          _%bind189697%_
                                                          '6
                                                          '#f
                                                          '#f)
                                                         '#f)))
                                                (if _%$e189699%_
                                                    (gx#core-expand-expression
                                                     (gx#stx-wrap-source
                                                      (cons _%$e189699%_
                                                            _%args189651%_)
                                                      (gx#stx-source
                                                       _%stx189612%_)))
                                                    (if (##structure-direct-instance-of?
                                                         _%bind189697%_
                                                         'gx#import-binding::t)
                                                        (_%again189695%_
                                                         (##unchecked-structure-ref
                                                          _%bind189697%_
                                                          '5
                                                          '#f
                                                          '#f))
                                                        (_%expand-runtime-call189614%_
                                                         _%rator-expr189653%_
                                                         _%args189651%_)))))
                                            (_%expand-runtime-call189614%_
                                             _%rator-expr189653%_
                                             _%args189651%_)))
                                      (_%$%E189656189668%_)))))
                            (_%$%E189656189668%_))
                        (_%$%E189656189668%_))))
                (_%$%E189656189668%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E189655189707%_))
                                          (_%$%E189617189629%_)))))
                                (_%$%E189617189629%_))))
                        (_%$%E189617189629%_)))))
            (_%$%E189616189711%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx189545%_)
        (let* ((_%$%e189546189562%_ _%stx189545%_)
               (_%$%E189548189566%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189546189562%_)))
               (_%$%E189547189608%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189546189562%_)
                      (let ((_%$%e189549189570%_
                             (gx#syntax-e _%$%e189546189562%_)))
                        (let ((_%$%hd189550189573%_
                               (##car _%$%e189549189570%_))
                              (_%$%tl189551189575%_
                               (##cdr _%$%e189549189570%_)))
                          (if (gx#stx-pair? _%$%tl189551189575%_)
                              (let ((_%$%e189552189578%_
                                     (gx#syntax-e _%$%tl189551189575%_)))
                                (let ((_%$%hd189553189581%_
                                       (##car _%$%e189552189578%_))
                                      (_%$%tl189554189583%_
                                       (##cdr _%$%e189552189578%_)))
                                  (let ((_%test189586%_ _%$%hd189553189581%_))
                                    (if (gx#stx-pair? _%$%tl189554189583%_)
                                        (let ((_%$%e189555189588%_
                                               (gx#syntax-e
                                                _%$%tl189554189583%_)))
                                          (let ((_%$%hd189556189591%_
                                                 (##car _%$%e189555189588%_))
                                                (_%$%tl189557189593%_
                                                 (##cdr _%$%e189555189588%_)))
                                            (let ((_%K189596%_
                                                   _%$%hd189556189591%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl189557189593%_)
                                                  (let ((_%$%e189558189598%_
                                                         (gx#syntax-e
                                                          _%$%tl189557189593%_)))
                                                    (let ((_%$%hd189559189601%_
                                                           (##car _%$%e189558189598%_))
                                                          (_%$%tl189560189603%_
                                                           (##cdr _%$%e189558189598%_)))
                                                      (let ((_%E189606%_
                                                             _%$%hd189559189601%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl189560189603%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test189586%_)
                                 (cons (gx#core-expand-expression _%K189596%_)
                                       (cons (gx#core-expand-expression
                                              _%E189606%_)
                                             '()))))
                     (gx#stx-source _%stx189545%_))
                    (_%$%E189548189566%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E189548189566%_)))))
                                        (_%$%E189548189566%_)))))
                              (_%$%E189548189566%_))))
                      (_%$%E189548189566%_)))))
          (_%$%E189547189608%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx189504%_)
        (let* ((_%$%e189505189515%_ _%stx189504%_)
               (_%$%E189507189519%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189505189515%_)))
               (_%$%E189506189541%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189505189515%_)
                      (let ((_%$%e189508189523%_
                             (gx#syntax-e _%$%e189505189515%_)))
                        (let ((_%$%hd189509189526%_
                               (##car _%$%e189508189523%_))
                              (_%$%tl189510189528%_
                               (##cdr _%$%e189508189523%_)))
                          (if (gx#stx-pair? _%$%tl189510189528%_)
                              (let ((_%$%e189511189531%_
                                     (gx#syntax-e _%$%tl189510189528%_)))
                                (let ((_%$%hd189512189534%_
                                       (##car _%$%e189511189531%_))
                                      (_%$%tl189513189536%_
                                       (##cdr _%$%e189511189531%_)))
                                  (let ((_%id189539%_ _%$%hd189512189534%_))
                                    (if (gx#stx-null? _%$%tl189513189536%_)
                                        (if (gx#identifier? _%id189539%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id189539%_
                                                          _%stx189504%_)
                                                         '()))
                                             (gx#stx-source _%stx189504%_))
                                            (_%$%E189507189519%_))
                                        (_%$%E189507189519%_)))))
                              (_%$%E189507189519%_))))
                      (_%$%E189507189519%_)))))
          (_%$%E189506189541%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx189450%_)
        (let* ((_%$%e189451189464%_ _%stx189450%_)
               (_%$%E189453189468%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189451189464%_)))
               (_%$%E189452189500%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189451189464%_)
                      (let ((_%$%e189454189472%_
                             (gx#syntax-e _%$%e189451189464%_)))
                        (let ((_%$%hd189455189475%_
                               (##car _%$%e189454189472%_))
                              (_%$%tl189456189477%_
                               (##cdr _%$%e189454189472%_)))
                          (if (gx#stx-pair? _%$%tl189456189477%_)
                              (let ((_%$%e189457189480%_
                                     (gx#syntax-e _%$%tl189456189477%_)))
                                (let ((_%$%hd189458189483%_
                                       (##car _%$%e189457189480%_))
                                      (_%$%tl189459189485%_
                                       (##cdr _%$%e189457189480%_)))
                                  (let ((_%id189488%_ _%$%hd189458189483%_))
                                    (if (gx#stx-pair? _%$%tl189459189485%_)
                                        (let ((_%$%e189460189490%_
                                               (gx#syntax-e
                                                _%$%tl189459189485%_)))
                                          (let ((_%$%hd189461189493%_
                                                 (##car _%$%e189460189490%_))
                                                (_%$%tl189462189495%_
                                                 (##cdr _%$%e189460189490%_)))
                                            (let ((_%expr189498%_
                                                   _%$%hd189461189493%_))
                                              (if (gx#stx-null?
                                                   _%$%tl189462189495%_)
                                                  (if (gx#identifier?
                                                       _%id189488%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id189488%_
                            _%stx189450%_)
                           (cons (gx#core-expand-expression _%expr189498%_)
                                 '())))
               (gx#stx-source _%stx189450%_))
              (_%$%E189453189468%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E189453189468%_)))))
                                        (_%$%E189453189468%_)))))
                              (_%$%E189453189468%_))))
                      (_%$%E189453189468%_)))))
          (_%$%E189452189500%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx189295%_)
        (letrec ((_%generate189297%_
                  (lambda (_%body189327%_)
                    (let _%lp189329%_ ((_%rest189331%_ _%body189327%_)
                                       (_%ns189332%_
                                        (gx#core-context-namespace__0))
                                       (_%r189333%_ '()))
                      (let* ((_%$%e189334189349%_ _%rest189331%_)
                             (_%$%E189347189353%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%$%e189334189349%_)))
                             (_%$%E189343189357%_
                              (lambda ()
                                (if (gx#stx-null? _%$%e189334189349%_)
                                    (reverse _%r189333%_)
                                    (_%$%E189347189353%_))))
                             (_%$%E189336189414%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e189334189349%_)
                                    (let ((_%$%e189344189361%_
                                           (gx#syntax-e _%$%e189334189349%_)))
                                      (let ((_%$%hd189345189364%_
                                             (##car _%$%e189344189361%_))
                                            (_%$%tl189346189366%_
                                             (##cdr _%$%e189344189361%_)))
                                        (let* ((_%hd189369%_
                                                _%$%hd189345189364%_)
                                               (_%rest189371%_
                                                _%$%tl189346189366%_))
                                          (if (gx#identifier? _%hd189369%_)
                                              (_%lp189329%_
                                               _%rest189371%_
                                               _%ns189332%_
                                               (cons (cons _%hd189369%_
                                                           (cons (if _%ns189332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd189369%_
                              _%ns189332%_
                              '"#"
                              _%hd189369%_)
                             _%hd189369%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r189333%_))
                                              (let* ((_%$%e189372189382%_
                                                      _%hd189369%_)
                                                     (_%$%E189374189386%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%$%e189372189382%_)))
                                                     (_%$%E189373189410%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%$%e189372189382%_)
                                                            (let ((_%$%e189375189390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%e189372189382%_)))
                      (let ((_%$%hd189376189393%_ (##car _%$%e189375189390%_))
                            (_%$%tl189377189395%_ (##cdr _%$%e189375189390%_)))
                        (let ((_%id189398%_ _%$%hd189376189393%_))
                          (if (gx#stx-pair? _%$%tl189377189395%_)
                              (let ((_%$%e189378189400%_
                                     (gx#syntax-e _%$%tl189377189395%_)))
                                (let ((_%$%hd189379189403%_
                                       (##car _%$%e189378189400%_))
                                      (_%$%tl189380189405%_
                                       (##cdr _%$%e189378189400%_)))
                                  (let ((_%eid189408%_ _%$%hd189379189403%_))
                                    (if (gx#stx-null? _%$%tl189380189405%_)
                                        (if (and (gx#identifier? _%id189398%_)
                                                 (gx#identifier?
                                                  _%eid189408%_))
                                            (_%lp189329%_
                                             _%rest189371%_
                                             _%ns189332%_
                                             (cons (cons _%id189398%_
                                                         (cons _%eid189408%_
                                                               '()))
                                                   _%r189333%_))
                                            (_%$%E189374189386%_))
                                        (_%$%E189374189386%_)))))
                              (_%$%E189374189386%_)))))
                    (_%$%E189374189386%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E189373189410%_))))))
                                    (_%$%E189343189357%_))))
                             (_%$%E189335189446%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e189334189349%_)
                                    (let ((_%$%e189337189418%_
                                           (gx#syntax-e _%$%e189334189349%_)))
                                      (let ((_%$%hd189338189421%_
                                             (##car _%$%e189337189418%_))
                                            (_%$%tl189339189423%_
                                             (##cdr _%$%e189337189418%_)))
                                        (if (eq? (gx#stx-e
                                                  _%$%hd189338189421%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%$%tl189339189423%_)
                                                (let ((_%$%e189340189426%_
                                                       (gx#syntax-e
                                                        _%$%tl189339189423%_)))
                                                  (let ((_%$%hd189341189429%_
                                                         (##car _%$%e189340189426%_))
                                                        (_%$%tl189342189431%_
                                                         (##cdr _%$%e189340189426%_)))
                                                    (let* ((_%ns189434%_
                                                            _%$%hd189341189429%_)
                                                           (_%rest189436%_
                                                            _%$%tl189342189431%_)
                                                           (_%ns189444%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns189434%_)
                        (symbol->string (gx#stx-e _%ns189434%_))
                        (if (or (gx#stx-string? _%ns189434%_)
                                (gx#stx-false? _%ns189434%_))
                            (gx#stx-e _%ns189434%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx189295%_
                             _%ns189434%_)))))
              (_%lp189329%_ _%rest189436%_ _%ns189444%_ _%r189333%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E189336189414%_))
                                            (_%$%E189336189414%_))))
                                    (_%$%E189336189414%_)))))
                        (_%$%E189335189446%_))))))
          (let* ((_%$%e189298189305%_ _%stx189295%_)
                 (_%$%E189300189309%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e189298189305%_)))
                 (_%$%E189299189323%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e189298189305%_)
                        (let ((_%$%e189301189313%_
                               (gx#syntax-e _%$%e189298189305%_)))
                          (let ((_%$%hd189302189316%_
                                 (##car _%$%e189301189313%_))
                                (_%$%tl189303189318%_
                                 (##cdr _%$%e189301189313%_)))
                            (let ((_%body189321%_ _%$%tl189303189318%_))
                              (if (gx#stx-list? _%body189321%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate189297%_ _%body189321%_))
                                  (_%$%E189300189309%_)))))
                        (_%$%E189300189309%_)))))
            (_%$%E189299189323%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx189252%_)
        (let* ((_%$%e189253189263%_ _%stx189252%_)
               (_%$%E189255189267%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189253189263%_)))
               (_%$%E189254189291%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189253189263%_)
                      (let ((_%$%e189256189271%_
                             (gx#syntax-e _%$%e189253189263%_)))
                        (let ((_%$%hd189257189274%_
                               (##car _%$%e189256189271%_))
                              (_%$%tl189258189276%_
                               (##cdr _%$%e189256189271%_)))
                          (if (gx#stx-pair? _%$%tl189258189276%_)
                              (let ((_%$%e189259189279%_
                                     (gx#syntax-e _%$%tl189258189276%_)))
                                (let ((_%$%hd189260189282%_
                                       (##car _%$%e189259189279%_))
                                      (_%$%tl189261189284%_
                                       (##cdr _%$%e189259189279%_)))
                                  (let* ((_%hd189287%_ _%$%hd189260189282%_)
                                         (_%body189289%_ _%$%tl189261189284%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd189287%_)
                                             (gx#stx-list? _%body189289%_)
                                             (not (gx#stx-null?
                                                   _%body189289%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd189287%_)
                                         _%body189289%_)
                                        (_%$%E189255189267%_)))))
                              (_%$%E189255189267%_))))
                      (_%$%E189255189267%_)))))
          (_%$%E189254189291%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx189188%_)
        (letrec ((_%generate189190%_
                  (lambda (_%clause189220%_)
                    (let* ((_%$%e189221189228%_ _%clause189220%_)
                           (_%$%E189223189232%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx189188%_
                               _%clause189220%_)))
                           (_%$%E189222189248%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189221189228%_)
                                  (let ((_%$%e189224189236%_
                                         (gx#syntax-e _%$%e189221189228%_)))
                                    (let ((_%$%hd189225189239%_
                                           (##car _%$%e189224189236%_))
                                          (_%$%tl189226189241%_
                                           (##cdr _%$%e189224189236%_)))
                                      (let* ((_%hd189244%_
                                              _%$%hd189225189239%_)
                                             (_%body189246%_
                                              _%$%tl189226189241%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd189244%_)
                                                 (gx#stx-list? _%body189246%_)
                                                 (not (gx#stx-null?
                                                       _%body189246%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd189244%_)
                                                   _%body189246%_)
                                             (gx#stx-source _%clause189220%_))
                                            (_%$%E189223189232%_)))))
                                  (_%$%E189223189232%_)))))
                      (_%$%E189222189248%_)))))
          (let* ((_%$%e189191189198%_ _%stx189188%_)
                 (_%$%E189193189202%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e189191189198%_)))
                 (_%$%E189192189216%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e189191189198%_)
                        (let ((_%$%e189194189206%_
                               (gx#syntax-e _%$%e189191189198%_)))
                          (let ((_%$%hd189195189209%_
                                 (##car _%$%e189194189206%_))
                                (_%$%tl189196189211%_
                                 (##cdr _%$%e189194189206%_)))
                            (let ((_%clauses189214%_ _%$%tl189196189211%_))
                              (if (gx#stx-list? _%clauses189214%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate189190%_
                                    _%clauses189214%_))
                                  (_%$%E189193189202%_)))))
                        (_%$%E189193189202%_)))))
            (_%$%E189192189216%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx189089%_ _%form189090%_)
        (letrec ((_%generate189092%_
                  (lambda (_%bind189135%_)
                    (let* ((_%$%e189136189146%_ _%bind189135%_)
                           (_%$%E189138189150%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx189089%_
                               _%bind189135%_)))
                           (_%$%E189137189174%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189136189146%_)
                                  (let ((_%$%e189139189154%_
                                         (gx#syntax-e _%$%e189136189146%_)))
                                    (let ((_%$%hd189140189157%_
                                           (##car _%$%e189139189154%_))
                                          (_%$%tl189141189159%_
                                           (##cdr _%$%e189139189154%_)))
                                      (let ((_%ids189162%_
                                             _%$%hd189140189157%_))
                                        (if (gx#stx-pair? _%$%tl189141189159%_)
                                            (let ((_%$%e189142189164%_
                                                   (gx#syntax-e
                                                    _%$%tl189141189159%_)))
                                              (let ((_%$%hd189143189167%_
                                                     (##car _%$%e189142189164%_))
                                                    (_%$%tl189144189169%_
                                                     (##cdr _%$%e189142189164%_)))
                                                (let ((_%expr189172%_
                                                       _%$%hd189143189167%_))
                                                  (if (gx#stx-null?
                                                       _%$%tl189144189169%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids189162%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids189162%_)
                        (cons _%expr189172%_ '()))
                  (_%$%E189138189150%_))
              (_%$%E189138189150%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E189138189150%_)))))
                                  (_%$%E189138189150%_)))))
                      (_%$%E189137189174%_)))))
          (let* ((_%$%e189093189103%_ _%stx189089%_)
                 (_%$%E189095189107%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e189093189103%_)))
                 (_%$%E189094189131%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e189093189103%_)
                        (let ((_%$%e189096189111%_
                               (gx#syntax-e _%$%e189093189103%_)))
                          (let ((_%$%hd189097189114%_
                                 (##car _%$%e189096189111%_))
                                (_%$%tl189098189116%_
                                 (##cdr _%$%e189096189111%_)))
                            (if (gx#stx-pair? _%$%tl189098189116%_)
                                (let ((_%$%e189099189119%_
                                       (gx#syntax-e _%$%tl189098189116%_)))
                                  (let ((_%$%hd189100189122%_
                                         (##car _%$%e189099189119%_))
                                        (_%$%tl189101189124%_
                                         (##cdr _%$%e189099189119%_)))
                                    (let* ((_%hd189127%_ _%$%hd189100189122%_)
                                           (_%body189129%_
                                            _%$%tl189101189124%_))
                                      (if (and (gx#stx-list? _%hd189127%_)
                                               (gx#stx-list? _%body189129%_)
                                               (not (gx#stx-null?
                                                     _%body189129%_)))
                                          (gx#core-cons*
                                           _%form189090%_
                                           (gx#stx-map1
                                            _%generate189092%_
                                            _%hd189127%_)
                                           _%body189129%_)
                                          (_%$%E189095189107%_)))))
                                (_%$%E189095189107%_))))
                        (_%$%E189095189107%_)))))
            (_%$%E189094189131%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx189181%_)
        (let ((_%form189183%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx189181%_ _%form189183%_))))
    (define gx#macro-expand-let-values
      (lambda _g191859_
        (let ((_g191860_ (##length _g191859_)))
          (cond ((##fx= _g191860_ 1)
                 (apply gx#macro-expand-let-values__0 _g191859_))
                ((##fx= _g191860_ 2)
                 (apply gx#macro-expand-let-values__% _g191859_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g191859_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx189086%_)
        (gx#macro-expand-let-values__% _%stx189086%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx189084%_)
        (gx#macro-expand-let-values__% _%stx189084%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx188975%_)
        (let* ((_%$%e188976189002%_ _%stx188975%_)
               (_%$%E188988189006%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188976189002%_)))
               (_%$%E188978189048%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188976189002%_)
                      (let ((_%$%e188989189010%_
                             (gx#syntax-e _%$%e188976189002%_)))
                        (let ((_%$%hd188990189013%_
                               (##car _%$%e188989189010%_))
                              (_%$%tl188991189015%_
                               (##cdr _%$%e188989189010%_)))
                          (if (gx#stx-pair? _%$%tl188991189015%_)
                              (let ((_%$%e188992189018%_
                                     (gx#syntax-e _%$%tl188991189015%_)))
                                (let ((_%$%hd188993189021%_
                                       (##car _%$%e188992189018%_))
                                      (_%$%tl188994189023%_
                                       (##cdr _%$%e188992189018%_)))
                                  (let ((_%test189026%_ _%$%hd188993189021%_))
                                    (if (gx#stx-pair? _%$%tl188994189023%_)
                                        (let ((_%$%e188995189028%_
                                               (gx#syntax-e
                                                _%$%tl188994189023%_)))
                                          (let ((_%$%hd188996189031%_
                                                 (##car _%$%e188995189028%_))
                                                (_%$%tl188997189033%_
                                                 (##cdr _%$%e188995189028%_)))
                                            (let ((_%K189036%_
                                                   _%$%hd188996189031%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl188997189033%_)
                                                  (let ((_%$%e188998189038%_
                                                         (gx#syntax-e
                                                          _%$%tl188997189033%_)))
                                                    (let ((_%$%hd188999189041%_
                                                           (##car _%$%e188998189038%_))
                                                          (_%$%tl189000189043%_
                                                           (##cdr _%$%e188998189038%_)))
                                                      (let ((_%E189046%_
                                                             _%$%hd188999189041%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl189000189043%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test189026%_
                                                             _%K189036%_
                                                             _%E189046%_)
                                                            (_%$%E188988189006%_)))))
                                                  (_%$%E188988189006%_)))))
                                        (_%$%E188988189006%_)))))
                              (_%$%E188988189006%_))))
                      (_%$%E188988189006%_))))
               (_%$%E188977189080%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188976189002%_)
                      (let ((_%$%e188979189052%_
                             (gx#syntax-e _%$%e188976189002%_)))
                        (let ((_%$%hd188980189055%_
                               (##car _%$%e188979189052%_))
                              (_%$%tl188981189057%_
                               (##cdr _%$%e188979189052%_)))
                          (if (gx#stx-pair? _%$%tl188981189057%_)
                              (let ((_%$%e188982189060%_
                                     (gx#syntax-e _%$%tl188981189057%_)))
                                (let ((_%$%hd188983189063%_
                                       (##car _%$%e188982189060%_))
                                      (_%$%tl188984189065%_
                                       (##cdr _%$%e188982189060%_)))
                                  (let ((_%test189068%_ _%$%hd188983189063%_))
                                    (if (gx#stx-pair? _%$%tl188984189065%_)
                                        (let ((_%$%e188985189070%_
                                               (gx#syntax-e
                                                _%$%tl188984189065%_)))
                                          (let ((_%$%hd188986189073%_
                                                 (##car _%$%e188985189070%_))
                                                (_%$%tl188987189075%_
                                                 (##cdr _%$%e188985189070%_)))
                                            (let ((_%K189078%_
                                                   _%$%hd188986189073%_))
                                              (if (gx#stx-null?
                                                   _%$%tl188987189075%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test189068%_
                                                   _%K189078%_
                                                   '#!void)
                                                  (_%$%E188978189048%_)))))
                                        (_%$%E188978189048%_)))))
                              (_%$%E188978189048%_))))
                      (_%$%E188978189048%_)))))
          (_%$%E188977189080%_))))
    (define gx#free-identifier=?
      (lambda (_%xid188960%_ _%yid188961%_)
        (let ((_%xe188963%_ (gx#resolve-identifier__0 _%xid188960%_))
              (_%ye188964%_ (gx#resolve-identifier__0 _%yid188961%_)))
          (if (and _%xe188963%_ _%ye188964%_)
              (let ((_%$e188967%_ (eq? _%xe188963%_ _%ye188964%_)))
                (if _%$e188967%_
                    _%$e188967%_
                    (if (##structure-instance-of? _%xe188963%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye188964%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe188963%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye188964%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe188963%_ _%ye188964%_)
                  '#f
                  (gx#stx-eq? _%xid188960%_ _%yid188961%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid188941%_ _%yid188942%_)
        (letrec ((_%context188944%_
                  (lambda (_%e188958%_)
                    (if (##structure-direct-instance-of?
                         _%e188958%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e188958%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks188945%_
                  (lambda (_%e188953%_)
                    (if (symbol? _%e188953%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e188953%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e188953%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e188953%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap188946%_
                  (lambda (_%e188951%_)
                    (if (symbol? _%e188951%_)
                        _%e188951%_
                        (gx#syntax-local-unwrap _%e188951%_)))))
          (let ((_%x188948%_ (_%unwrap188946%_ _%xid188941%_))
                (_%y188949%_ (_%unwrap188946%_ _%yid188942%_)))
            (if (gx#stx-eq? _%x188948%_ _%y188949%_)
                (if (eq? (_%context188944%_ _%x188948%_)
                         (_%context188944%_ _%y188949%_))
                    (equal? (_%marks188945%_ _%x188948%_)
                            (_%marks188945%_ _%y188949%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx188939%_)
        (if (gx#identifier? _%stx188939%_)
            (gx#core-identifier=? _%stx188939%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx188937%_)
        (if (gx#identifier? _%stx188937%_)
            (gx#core-identifier=? _%stx188937%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx188880%_ _%where188881%_)
        (let _%lp188883%_ ((_%rest188885%_ (gx#syntax->list _%stx188880%_)))
          (let* ((_%$%rest188886188894%_ _%rest188885%_)
                 (_%$%else188888188902%_ (lambda () '#t))
                 (_%$%K188890188915%_
                  (lambda (_%rest188905%_ _%hd188906%_)
                    (if (gx#identifier? _%hd188906%_)
                        (if (__find (lambda (_%$%g188908188910%_)
                                      (gx#bound-identifier=?
                                       _%$%g188908188910%_
                                       _%hd188906%_))
                                    _%rest188905%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where188881%_
                             _%hd188906%_)
                            (_%lp188883%_ _%rest188905%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where188881%_
                         _%hd188906%_)))))
            (if (pair? _%$%rest188886188894%_)
                (let ((_%$%hd188891188918%_ (##car _%$%rest188886188894%_))
                      (_%$%tl188892188920%_ (##cdr _%$%rest188886188894%_)))
                  (let* ((_%hd188923%_ _%$%hd188891188918%_)
                         (_%rest188925%_ _%$%tl188892188920%_))
                    (_%$%K188890188915%_ _%rest188925%_ _%hd188923%_)))
                (_%$%else188888188902%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx188930%_)
        (let ((_%where188932%_ _%stx188930%_))
          (gx#check-duplicate-identifiers__% _%stx188930%_ _%where188932%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g191861_
        (let ((_g191862_ (##length _g191861_)))
          (cond ((##fx= _g191862_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g191861_))
                ((##fx= _g191862_ 2)
                 (apply gx#check-duplicate-identifiers__% _g191861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g191861_))))))
    (define gx#core-bind-values?
      (lambda (_%stx188872%_)
        (gx#stx-andmap
         (lambda (_%x188874%_)
           (let ((_%$e188876%_ (gx#identifier? _%x188874%_)))
             (if _%$e188876%_ _%$e188876%_ (gx#stx-false? _%x188874%_))))
         _%stx188872%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx188836%_ _%rebind?188837%_ _%phi188838%_ _%ctx188839%_)
        (gx#stx-for-each1
         (lambda (_%id188841%_)
           (if (gx#identifier? _%id188841%_)
               (gx#core-bind-runtime!__%
                _%id188841%_
                _%rebind?188837%_
                _%phi188838%_
                _%ctx188839%_)
               '#!void))
         _%stx188836%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx188846%_)
        (let* ((_%rebind?188848%_ '#f)
               (_%phi188850%_ (gx#current-expander-phi))
               (_%ctx188852%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx188846%_
           _%rebind?188848%_
           _%phi188850%_
           _%ctx188852%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx188854%_ _%rebind?188855%_)
        (let* ((_%phi188857%_ (gx#current-expander-phi))
               (_%ctx188859%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx188854%_
           _%rebind?188855%_
           _%phi188857%_
           _%ctx188859%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx188861%_ _%rebind?188862%_ _%phi188863%_)
        (let ((_%ctx188865%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx188861%_
           _%rebind?188862%_
           _%phi188863%_
           _%ctx188865%_))))
    (define gx#core-bind-values!
      (lambda _g191863_
        (let ((_g191864_ (##length _g191863_)))
          (cond ((##fx= _g191864_ 1) (apply gx#core-bind-values!__0 _g191863_))
                ((##fx= _g191864_ 2) (apply gx#core-bind-values!__1 _g191863_))
                ((##fx= _g191864_ 3) (apply gx#core-bind-values!__2 _g191863_))
                ((##fx= _g191864_ 4) (apply gx#core-bind-values!__% _g191863_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g191863_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx188831%_)
        (gx#stx-map1
         (lambda (_%x188833%_)
           (if (gx#identifier? _%x188833%_)
               (gx#core-quote-syntax__0 _%x188833%_)
               '#f))
         _%stx188831%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx188824%_)
        (if (gx#identifier? _%stx188824%_)
            (let* ((_%bind188826%_ (gx#resolve-identifier__0 _%stx188824%_))
                   (_%$e188828%_ (not _%bind188826%_)))
              (if _%$e188828%_
                  _%$e188828%_
                  (##structure-instance-of?
                   _%bind188826%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id188813%_ _%form188814%_)
        (let ((_%bind188816%_ (gx#resolve-identifier__0 _%id188813%_)))
          (if (##structure-instance-of? _%bind188816%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id188813%_)
              (if (not _%bind188816%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id188813%_)))
                      (gx#core-quote-syntax__0 _%id188813%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form188814%_
                       _%id188813%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form188814%_
                   _%id188813%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id188768%_ _%rebind?188769%_ _%phi188770%_ _%ctx188771%_)
        (let* ((_%key188773%_ (gx#core-identifier-key _%id188768%_))
               (_%eid188775%_
                (gx#make-binding-id__%
                 _%key188773%_
                 '#f
                 _%phi188770%_
                 _%ctx188771%_))
               (_%bind188781%_
                (if (##structure-instance-of?
                     _%ctx188771%_
                     'gx#module-context::t)
                    (let ((__obj191840
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
                       __obj191840
                       _%eid188775%_
                       _%key188773%_
                       _%phi188770%_
                       _%ctx188771%_)
                      __obj191840)
                    (if (##structure-instance-of?
                         _%ctx188771%_
                         'gx#top-context::t)
                        (let ((__obj191839
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj191839
                           _%eid188775%_
                           _%key188773%_
                           _%phi188770%_)
                          __obj191839)
                        (if (##structure-instance-of?
                             _%ctx188771%_
                             'gx#local-context::t)
                            (let ((__obj191838
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj191838
                               _%eid188775%_
                               _%key188773%_
                               _%phi188770%_)
                              __obj191838)
                            (let ((__obj191837
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj191837
                               _%eid188775%_
                               _%key188773%_
                               _%phi188770%_)
                              __obj191837))))))
          (gx#bind-identifier!__%
           _%id188768%_
           _%bind188781%_
           _%rebind?188769%_
           _%phi188770%_
           _%ctx188771%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id188787%_)
        (let* ((_%rebind?188789%_ '#f)
               (_%phi188791%_ (gx#current-expander-phi))
               (_%ctx188793%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id188787%_
           _%rebind?188789%_
           _%phi188791%_
           _%ctx188793%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id188795%_ _%rebind?188796%_)
        (let* ((_%phi188798%_ (gx#current-expander-phi))
               (_%ctx188800%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id188795%_
           _%rebind?188796%_
           _%phi188798%_
           _%ctx188800%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id188802%_ _%rebind?188803%_ _%phi188804%_)
        (let ((_%ctx188806%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id188802%_
           _%rebind?188803%_
           _%phi188804%_
           _%ctx188806%_))))
    (define gx#core-bind-runtime!
      (lambda _g191865_
        (let ((_g191866_ (##length _g191865_)))
          (cond ((##fx= _g191866_ 1)
                 (apply gx#core-bind-runtime!__0 _g191865_))
                ((##fx= _g191866_ 2)
                 (apply gx#core-bind-runtime!__1 _g191865_))
                ((##fx= _g191866_ 3)
                 (apply gx#core-bind-runtime!__2 _g191865_))
                ((##fx= _g191866_ 4)
                 (apply gx#core-bind-runtime!__% _g191865_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g191865_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id188720%_
               _%eid188721%_
               _%rebind?188722%_
               _%phi188723%_
               _%ctx188724%_)
        (let* ((_%key188726%_ (gx#core-identifier-key _%id188720%_))
               (_%bind188731%_
                (if (##structure-instance-of?
                     _%ctx188724%_
                     'gx#module-context::t)
                    (let ((__obj191843
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
                       __obj191843
                       _%eid188721%_
                       _%key188726%_
                       _%phi188723%_
                       _%ctx188724%_)
                      __obj191843)
                    (if (##structure-instance-of?
                         _%ctx188724%_
                         'gx#top-context::t)
                        (let ((__obj191842
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj191842
                           _%eid188721%_
                           _%key188726%_
                           _%phi188723%_)
                          __obj191842)
                        (let ((__obj191841
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj191841
                           _%eid188721%_
                           _%key188726%_
                           _%phi188723%_)
                          __obj191841)))))
          (gx#bind-identifier!__%
           _%id188720%_
           _%bind188731%_
           _%rebind?188722%_
           _%phi188723%_
           _%ctx188724%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id188737%_ _%eid188738%_)
        (let* ((_%rebind?188740%_ '#f)
               (_%phi188742%_ (gx#current-expander-phi))
               (_%ctx188744%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id188737%_
           _%eid188738%_
           _%rebind?188740%_
           _%phi188742%_
           _%ctx188744%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id188746%_ _%eid188747%_ _%rebind?188748%_)
        (let* ((_%phi188750%_ (gx#current-expander-phi))
               (_%ctx188752%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id188746%_
           _%eid188747%_
           _%rebind?188748%_
           _%phi188750%_
           _%ctx188752%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id188754%_ _%eid188755%_ _%rebind?188756%_ _%phi188757%_)
        (let ((_%ctx188759%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id188754%_
           _%eid188755%_
           _%rebind?188756%_
           _%phi188757%_
           _%ctx188759%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g191867_
        (let ((_g191868_ (##length _g191867_)))
          (cond ((##fx= _g191868_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g191867_))
                ((##fx= _g191868_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g191867_))
                ((##fx= _g191868_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g191867_))
                ((##fx= _g191868_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g191867_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g191867_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id188680%_
               _%eid188681%_
               _%rebind?188682%_
               _%phi188683%_
               _%ctx188684%_)
        (gx#bind-identifier!__%
         _%id188680%_
         (let ((__obj191844
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj191844
            _%eid188681%_
            (gx#core-identifier-key _%id188680%_)
            _%phi188683%_)
           __obj191844)
         _%rebind?188682%_
         _%phi188683%_
         _%ctx188684%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id188689%_ _%eid188690%_)
        (let* ((_%rebind?188692%_ '#f)
               (_%phi188694%_ (gx#current-expander-phi))
               (_%ctx188696%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id188689%_
           _%eid188690%_
           _%rebind?188692%_
           _%phi188694%_
           _%ctx188696%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id188698%_ _%eid188699%_ _%rebind?188700%_)
        (let* ((_%phi188702%_ (gx#current-expander-phi))
               (_%ctx188704%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id188698%_
           _%eid188699%_
           _%rebind?188700%_
           _%phi188702%_
           _%ctx188704%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id188706%_ _%eid188707%_ _%rebind?188708%_ _%phi188709%_)
        (let ((_%ctx188711%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id188706%_
           _%eid188707%_
           _%rebind?188708%_
           _%phi188709%_
           _%ctx188711%_))))
    (define gx#core-bind-extern!
      (lambda _g191869_
        (let ((_g191870_ (##length _g191869_)))
          (cond ((##fx= _g191870_ 2) (apply gx#core-bind-extern!__0 _g191869_))
                ((##fx= _g191870_ 3) (apply gx#core-bind-extern!__1 _g191869_))
                ((##fx= _g191870_ 4) (apply gx#core-bind-extern!__2 _g191869_))
                ((##fx= _g191870_ 5) (apply gx#core-bind-extern!__% _g191869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g191869_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id188634%_
               _%e188635%_
               _%rebind?188636%_
               _%phi188637%_
               _%ctx188638%_)
        (gx#bind-identifier!__%
         _%id188634%_
         (let ((_%key188643%_ (gx#core-identifier-key _%id188634%_))
               (_%e188644%_
                (if (or (##structure-instance-of? _%e188635%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e188635%_
                         'gx#expander-context::t))
                    _%e188635%_
                    (##structure
                     gx#user-expander::t
                     _%e188635%_
                     _%ctx188638%_
                     _%phi188637%_))))
           (let ((__obj191845
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj191845
              (gx#make-binding-id__%
               _%key188643%_
               '#t
               _%phi188637%_
               _%ctx188638%_)
              _%key188643%_
              _%phi188637%_
              _%e188644%_)
             __obj191845))
         _%rebind?188636%_
         _%phi188637%_
         _%ctx188638%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id188649%_ _%e188650%_)
        (let* ((_%rebind?188652%_ '#f)
               (_%phi188654%_ (gx#current-expander-phi))
               (_%ctx188656%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id188649%_
           _%e188650%_
           _%rebind?188652%_
           _%phi188654%_
           _%ctx188656%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id188658%_ _%e188659%_ _%rebind?188660%_)
        (let* ((_%phi188662%_ (gx#current-expander-phi))
               (_%ctx188664%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id188658%_
           _%e188659%_
           _%rebind?188660%_
           _%phi188662%_
           _%ctx188664%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id188666%_ _%e188667%_ _%rebind?188668%_ _%phi188669%_)
        (let ((_%ctx188671%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id188666%_
           _%e188667%_
           _%rebind?188668%_
           _%phi188669%_
           _%ctx188671%_))))
    (define gx#core-bind-syntax!
      (lambda _g191871_
        (let ((_g191872_ (##length _g191871_)))
          (cond ((##fx= _g191872_ 2) (apply gx#core-bind-syntax!__0 _g191871_))
                ((##fx= _g191872_ 3) (apply gx#core-bind-syntax!__1 _g191871_))
                ((##fx= _g191872_ 4) (apply gx#core-bind-syntax!__2 _g191871_))
                ((##fx= _g191872_ 5) (apply gx#core-bind-syntax!__% _g191871_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g191871_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id188617%_ _%e188618%_ _%rebind?188619%_)
        (gx#core-bind-syntax!__%
         _%id188617%_
         _%e188618%_
         _%rebind?188619%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id188624%_ _%e188625%_)
        (let ((_%rebind?188627%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id188624%_
           _%e188625%_
           _%rebind?188627%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g191873_
        (let ((_g191874_ (##length _g191873_)))
          (cond ((##fx= _g191874_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g191873_))
                ((##fx= _g191874_ 3)
                 (apply gx#core-bind-root-syntax!__% _g191873_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g191873_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id188575%_
               _%alias-id188576%_
               _%rebind?188577%_
               _%phi188578%_
               _%ctx188579%_)
        (gx#bind-identifier!__%
         _%id188575%_
         (let* ((_%key188581%_ (gx#core-identifier-key _%id188575%_))
                (__obj191846
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj191846
            (gx#make-binding-id__%
             _%key188581%_
             '#t
             _%phi188578%_
             _%ctx188579%_)
            _%key188581%_
            _%phi188578%_
            _%alias-id188576%_)
           __obj191846)
         _%rebind?188577%_
         _%phi188578%_
         _%ctx188579%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id188586%_ _%alias-id188587%_)
        (let* ((_%rebind?188589%_ '#f)
               (_%phi188591%_ (gx#current-expander-phi))
               (_%ctx188593%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id188586%_
           _%alias-id188587%_
           _%rebind?188589%_
           _%phi188591%_
           _%ctx188593%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id188595%_ _%alias-id188596%_ _%rebind?188597%_)
        (let* ((_%phi188599%_ (gx#current-expander-phi))
               (_%ctx188601%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id188595%_
           _%alias-id188596%_
           _%rebind?188597%_
           _%phi188599%_
           _%ctx188601%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id188603%_ _%alias-id188604%_ _%rebind?188605%_ _%phi188606%_)
        (let ((_%ctx188608%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id188603%_
           _%alias-id188604%_
           _%rebind?188605%_
           _%phi188606%_
           _%ctx188608%_))))
    (define gx#core-bind-alias!
      (lambda _g191875_
        (let ((_g191876_ (##length _g191875_)))
          (cond ((##fx= _g191876_ 2) (apply gx#core-bind-alias!__0 _g191875_))
                ((##fx= _g191876_ 3) (apply gx#core-bind-alias!__1 _g191875_))
                ((##fx= _g191876_ 4) (apply gx#core-bind-alias!__2 _g191875_))
                ((##fx= _g191876_ 5) (apply gx#core-bind-alias!__% _g191875_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g191875_))))))
    (define gx#make-binding-id__%
      (lambda (_%key188525%_ _%syntax?188526%_ _%phi188527%_ _%ctx188528%_)
        (if (uninterned-symbol? _%key188525%_)
            (##gensym 'L)
            (if (pair? _%key188525%_)
                (gensym (##car _%key188525%_))
                (if (##structure-instance-of? _%ctx188528%_ 'gx#top-context::t)
                    (let ((_%ns188533%_
                           (gx#core-context-namespace__% _%ctx188528%_)))
                      (if (and (fxzero? _%phi188527%_) (not _%syntax?188526%_))
                          (if _%ns188533%_
                              (make-symbol__1 _%ns188533%_ '"#" _%key188525%_)
                              _%key188525%_)
                          (if _%syntax?188526%_
                              (make-symbol__1
                               (let ((_%$e188537%_ _%ns188533%_))
                                 (if _%$e188537%_ _%$e188537%_ '""))
                               '"[:"
                               (number->string _%phi188527%_)
                               '":]#"
                               _%key188525%_)
                              (make-symbol__1
                               (let ((_%$e188541%_ _%ns188533%_))
                                 (if _%$e188541%_ _%$e188541%_ '""))
                               '"["
                               (number->string _%phi188527%_)
                               '"]#"
                               _%key188525%_))))
                    (gensym _%key188525%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key188548%_)
        (let* ((_%syntax?188550%_ '#f)
               (_%phi188552%_ (gx#current-expander-phi))
               (_%ctx188554%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key188548%_
           _%syntax?188550%_
           _%phi188552%_
           _%ctx188554%_))))
    (define gx#make-binding-id__1
      (lambda (_%key188556%_ _%syntax?188557%_)
        (let* ((_%phi188559%_ (gx#current-expander-phi))
               (_%ctx188561%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key188556%_
           _%syntax?188557%_
           _%phi188559%_
           _%ctx188561%_))))
    (define gx#make-binding-id__2
      (lambda (_%key188563%_ _%syntax?188564%_ _%phi188565%_)
        (let ((_%ctx188567%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key188563%_
           _%syntax?188564%_
           _%phi188565%_
           _%ctx188567%_))))
    (define gx#make-binding-id
      (lambda _g191877_
        (let ((_g191878_ (##length _g191877_)))
          (cond ((##fx= _g191878_ 1) (apply gx#make-binding-id__0 _g191877_))
                ((##fx= _g191878_ 2) (apply gx#make-binding-id__1 _g191877_))
                ((##fx= _g191878_ 3) (apply gx#make-binding-id__2 _g191877_))
                ((##fx= _g191878_ 4) (apply gx#make-binding-id__% _g191877_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g191877_))))))))
