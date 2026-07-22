(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1784758125)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx191831%_)
        (letrec ((_%expand-special191833%_
                  (lambda (_%hd191835%_ _%K191836%_ _%rest191837%_ _%r191838%_)
                    (_%K191836%_
                     _%rest191837%_
                     (cons (gx#core-expand-top _%hd191835%_) _%r191838%_)))))
          (gx#core-expand-block__0 _%stx191831%_ _%expand-special191833%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx191485%_)
        (letrec ((_%expand-special191487%_
                  (lambda (_%hd191607%_ _%K191608%_ _%rest191609%_ _%r191610%_)
                    (let* ((_%K*191614%_
                            (lambda (_%e191612%_)
                              (_%K191608%_
                               _%rest191609%_
                               (cons _%e191612%_ _%r191610%_))))
                           (_%$%e191615191667%_ _%hd191607%_)
                           (_%$%E191653191671%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e191615191667%_)))
                           (_%$%E191649191713%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191615191667%_)
                                  (let ((_%$%e191654191675%_
                                         (gx#syntax-e _%$%e191615191667%_)))
                                    (let ((_%$%hd191655191678%_
                                           (##car _%$%e191654191675%_))
                                          (_%$%tl191656191680%_
                                           (##cdr _%$%e191654191675%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191655191678%_)
                                               (gx#core-identifier=?
                                                _%$%hd191655191678%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl191656191680%_)
                                              (let ((_%$%e191657191683%_
                                                     (gx#syntax-e
                                                      _%$%tl191656191680%_)))
                                                (let ((_%$%hd191658191686%_
                                                       (##car _%$%e191657191683%_))
                                                      (_%$%tl191659191688%_
                                                       (##cdr _%$%e191657191683%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd191658191686%_)
                                                      (let ((_%$%e191663191691%_
                                                             (gx#syntax-e
                                                              _%$%hd191658191686%_)))
                                                        (let ((_%$%hd191664191694%_
                                                               (##car _%$%e191663191691%_))
                                                              (_%$%tl191665191696%_
                                                               (##cdr _%$%e191663191691%_)))
                                                          (let ((_%id191699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd191664191694%_))
                    (if (gx#stx-null? _%$%tl191665191696%_)
                        (if (gx#stx-pair? _%$%tl191659191688%_)
                            (let ((_%$%e191660191701%_
                                   (gx#syntax-e _%$%tl191659191688%_)))
                              (let ((_%$%hd191661191704%_
                                     (##car _%$%e191660191701%_))
                                    (_%$%tl191662191706%_
                                     (##cdr _%$%e191660191701%_)))
                                (let ((_%props191709%_ _%$%hd191661191704%_))
                                  (if (gx#stx-null? _%$%tl191662191706%_)
                                      (let ((_%bind191711%_
                                             (gx#resolve-identifier__0
                                              _%id191699%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind191711%_
                                         _%props191709%_)
                                        (_%K191608%_
                                         _%rest191609%_
                                         _%r191610%_))
                                      (_%$%E191653191671%_)))))
                            (_%$%E191653191671%_))
                        (_%$%E191653191671%_)))))
              (_%$%E191653191671%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E191653191671%_))
                                          (_%$%E191653191671%_))))
                                  (_%$%E191653191671%_))))
                           (_%$%E191645191725%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191615191667%_)
                                  (let ((_%$%e191650191717%_
                                         (gx#syntax-e _%$%e191615191667%_)))
                                    (let ((_%$%hd191651191720%_
                                           (##car _%$%e191650191717%_))
                                          (_%$%tl191652191722%_
                                           (##cdr _%$%e191650191717%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191651191720%_)
                                               (gx#core-identifier=?
                                                _%$%hd191651191720%_
                                                '%#define-runtime))
                                          (_%K*191614%_
                                           (gx#core-expand-define-runtime%
                                            _%hd191607%_))
                                          (_%$%E191649191713%_))))
                                  (_%$%E191649191713%_))))
                           (_%$%E191641191737%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191615191667%_)
                                  (let ((_%$%e191646191729%_
                                         (gx#syntax-e _%$%e191615191667%_)))
                                    (let ((_%$%hd191647191732%_
                                           (##car _%$%e191646191729%_))
                                          (_%$%tl191648191734%_
                                           (##cdr _%$%e191646191729%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191647191732%_)
                                               (gx#core-identifier=?
                                                _%$%hd191647191732%_
                                                '%#define-alias))
                                          (_%K*191614%_
                                           (gx#core-expand-define-alias%
                                            _%hd191607%_))
                                          (_%$%E191645191725%_))))
                                  (_%$%E191645191725%_))))
                           (_%$%E191631191749%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191615191667%_)
                                  (let ((_%$%e191642191741%_
                                         (gx#syntax-e _%$%e191615191667%_)))
                                    (let ((_%$%hd191643191744%_
                                           (##car _%$%e191642191741%_))
                                          (_%$%tl191644191746%_
                                           (##cdr _%$%e191642191741%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191643191744%_)
                                               (gx#core-identifier=?
                                                _%$%hd191643191744%_
                                                '%#define-syntax))
                                          (_%K*191614%_
                                           (gx#core-expand-define-syntax%
                                            _%hd191607%_))
                                          (_%$%E191641191737%_))))
                                  (_%$%E191641191737%_))))
                           (_%$%E191621191781%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191615191667%_)
                                  (let ((_%$%e191632191753%_
                                         (gx#syntax-e _%$%e191615191667%_)))
                                    (let ((_%$%hd191633191756%_
                                           (##car _%$%e191632191753%_))
                                          (_%$%tl191634191758%_
                                           (##cdr _%$%e191632191753%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191633191756%_)
                                               (gx#core-identifier=?
                                                _%$%hd191633191756%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl191634191758%_)
                                              (let ((_%$%e191635191761%_
                                                     (gx#syntax-e
                                                      _%$%tl191634191758%_)))
                                                (let ((_%$%hd191636191764%_
                                                       (##car _%$%e191635191761%_))
                                                      (_%$%tl191637191766%_
                                                       (##cdr _%$%e191635191761%_)))
                                                  (let ((_%hd-bind191769%_
                                                         _%$%hd191636191764%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl191637191766%_)
                                                        (let ((_%$%e191638191771%_
                                                               (gx#syntax-e
                                                                _%$%tl191637191766%_)))
                                                          (let ((_%$%hd191639191774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e191638191771%_))
                        (_%$%tl191640191776%_ (##cdr _%$%e191638191771%_)))
                    (let ((_%expr191779%_ _%$%hd191639191774%_))
                      (if (gx#stx-null? _%$%tl191640191776%_)
                          (if (gx#core-bind-values? _%hd-bind191769%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind191769%_)
                                (_%K*191614%_ _%hd191607%_))
                              (_%$%E191631191749%_))
                          (_%$%E191631191749%_)))))
                (_%$%E191631191749%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E191631191749%_))
                                          (_%$%E191631191749%_))))
                                  (_%$%E191631191749%_))))
                           (_%$%E191617191815%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191615191667%_)
                                  (let ((_%$%e191622191785%_
                                         (gx#syntax-e _%$%e191615191667%_)))
                                    (let ((_%$%hd191623191788%_
                                           (##car _%$%e191622191785%_))
                                          (_%$%tl191624191790%_
                                           (##cdr _%$%e191622191785%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191623191788%_)
                                               (gx#core-identifier=?
                                                _%$%hd191623191788%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl191624191790%_)
                                              (let ((_%$%e191625191793%_
                                                     (gx#syntax-e
                                                      _%$%tl191624191790%_)))
                                                (let ((_%$%hd191626191796%_
                                                       (##car _%$%e191625191793%_))
                                                      (_%$%tl191627191798%_
                                                       (##cdr _%$%e191625191793%_)))
                                                  (let ((_%hd-bind191801%_
                                                         _%$%hd191626191796%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl191627191798%_)
                                                        (let ((_%$%e191628191803%_
                                                               (gx#syntax-e
                                                                _%$%tl191627191798%_)))
                                                          (let ((_%$%hd191629191806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e191628191803%_))
                        (_%$%tl191630191808%_ (##cdr _%$%e191628191803%_)))
                    (let* ((_%expr191811%_ _%$%hd191629191806%_)
                           (_%props191813%_ _%$%tl191630191808%_))
                      (if (and (gx#core-bind-values? _%hd-bind191801%_)
                               (gx#stx-list? _%props191813%_)
                               (not (gx#stx-null? _%props191813%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind191801%_)
                            (_%K191608%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind191801%_
                                          (cons _%props191813%_ '())))
                                   _%rest191609%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind191801%_
                                          (cons _%expr191811%_ '())))
                                   _%r191610%_)))
                          (_%$%E191621191781%_)))))
                (_%$%E191621191781%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E191621191781%_))
                                          (_%$%E191621191781%_))))
                                  (_%$%E191621191781%_))))
                           (_%$%E191616191827%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191615191667%_)
                                  (let ((_%$%e191618191819%_
                                         (gx#syntax-e _%$%e191615191667%_)))
                                    (let ((_%$%hd191619191822%_
                                           (##car _%$%e191618191819%_))
                                          (_%$%tl191620191824%_
                                           (##cdr _%$%e191618191819%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191619191822%_)
                                               (gx#core-identifier=?
                                                _%$%hd191619191822%_
                                                '%#begin-syntax))
                                          (_%K*191614%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd191607%_))
                                          (_%$%E191617191815%_))))
                                  (_%$%E191617191815%_)))))
                      (_%$%E191616191827%_))))
                 (_%eval-body191488%_
                  (lambda (_%rbody191496%_)
                    (let _%lp191498%_ ((_%rest191500%_ _%rbody191496%_)
                                       (_%body191501%_ '())
                                       (_%ebody191502%_ '()))
                      (let* ((_%$%rest191503191511%_ _%rest191500%_)
                             (_%$%else191505191519%_
                              (lambda ()
                                (values _%body191501%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody191502%_)
                                          (gx#stx-source _%stx191485%_))))))
                             (_%$%K191507191595%_
                              (lambda (_%rest191522%_ _%hd191523%_)
                                (let* ((_%$%e191524191541%_ _%hd191523%_)
                                       (_%$%E191536191545%_
                                        (lambda ()
                                          (_%lp191498%_
                                           _%rest191522%_
                                           (cons _%hd191523%_ _%body191501%_)
                                           (cons _%hd191523%_
                                                 _%ebody191502%_))))
                                       (_%$%E191526191557%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e191524191541%_)
                                              (let ((_%$%e191537191549%_
                                                     (gx#syntax-e
                                                      _%$%e191524191541%_)))
                                                (let ((_%$%hd191538191552%_
                                                       (##car _%$%e191537191549%_))
                                                      (_%$%tl191539191554%_
                                                       (##cdr _%$%e191537191549%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd191538191552%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd191538191552%_
                                                            '%#begin-syntax))
                                                      (_%lp191498%_
                                                       _%rest191522%_
                                                       (cons _%hd191523%_
                                                             _%body191501%_)
                                                       _%ebody191502%_)
                                                      (_%$%E191536191545%_))))
                                              (_%$%E191536191545%_))))
                                       (_%$%E191525191591%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e191524191541%_)
                                              (let ((_%$%e191527191561%_
                                                     (gx#syntax-e
                                                      _%$%e191524191541%_)))
                                                (let ((_%$%hd191528191564%_
                                                       (##car _%$%e191527191561%_))
                                                      (_%$%tl191529191566%_
                                                       (##cdr _%$%e191527191561%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd191528191564%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd191528191564%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl191529191566%_)
                                                          (let ((_%$%e191530191569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl191529191566%_)))
                    (let ((_%$%hd191531191572%_ (##car _%$%e191530191569%_))
                          (_%$%tl191532191574%_ (##cdr _%$%e191530191569%_)))
                      (let ((_%hd-bind191577%_ _%$%hd191531191572%_))
                        (if (gx#stx-pair? _%$%tl191532191574%_)
                            (let ((_%$%e191533191579%_
                                   (gx#syntax-e _%$%tl191532191574%_)))
                              (let ((_%$%hd191534191582%_
                                     (##car _%$%e191533191579%_))
                                    (_%$%tl191535191584%_
                                     (##cdr _%$%e191533191579%_)))
                                (let ((_%expr191587%_ _%$%hd191534191582%_))
                                  (if (gx#stx-null? _%$%tl191535191584%_)
                                      (let ((_%ehd191589%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind191577%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr191587%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd191523%_))))
                                        (_%lp191498%_
                                         _%rest191522%_
                                         (cons _%ehd191589%_ _%body191501%_)
                                         (cons _%ehd191589%_ _%ebody191502%_)))
                                      (_%$%E191526191557%_)))))
                            (_%$%E191526191557%_)))))
                  (_%$%E191526191557%_))
              (_%$%E191526191557%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E191526191557%_)))))
                                  (_%$%E191525191591%_)))))
                        (if (pair? _%$%rest191503191511%_)
                            (let ((_%$%hd191508191598%_
                                   (##car _%$%rest191503191511%_))
                                  (_%$%tl191509191600%_
                                   (##cdr _%$%rest191503191511%_)))
                              (let* ((_%hd191603%_ _%$%hd191508191598%_)
                                     (_%rest191605%_ _%$%tl191509191600%_))
                                (_%$%K191507191595%_
                                 _%rest191605%_
                                 _%hd191603%_)))
                            (_%$%else191505191519%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody191491%_
                     (gx#core-expand-block__1
                      _%stx191485%_
                      _%expand-special191487%_
                      '#f))
                    (_g191864_ (_%eval-body191488%_ _%rbody191491%_)))
               (begin
                 (let ((_g191865_
                        (if (##values? _g191864_)
                            (##values-length _g191864_)
                            1)))
                   (if (not (##fx= _g191865_ 2))
                       (error "Context expects 2 values" _g191865_)))
                 (let ((_%expanded-body191493%_ (##values-ref _g191864_ 0))
                       (_%value191494%_ (##values-ref _g191864_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body191493%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value191494%_ '())))
                    (gx#stx-source _%stx191485%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx191455%_)
        (let* ((_%$%e191456191463%_ _%stx191455%_)
               (_%$%E191458191467%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191456191463%_)))
               (_%$%E191457191481%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191456191463%_)
                      (let ((_%$%e191459191471%_
                             (gx#syntax-e _%$%e191456191463%_)))
                        (let ((_%$%hd191460191474%_
                               (##car _%$%e191459191471%_))
                              (_%$%tl191461191476%_
                               (##cdr _%$%e191459191471%_)))
                          (let ((_%body191479%_ _%$%tl191461191476%_))
                            (if (gx#stx-list? _%body191479%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body191479%_)
                                 (gx#stx-source _%stx191455%_))
                                (_%$%E191458191467%_)))))
                      (_%$%E191458191467%_)))))
          (_%$%E191457191481%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx191453%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx191453%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx191399%_)
        (let* ((_%$%e191400191413%_ _%stx191399%_)
               (_%$%E191402191417%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191400191413%_)))
               (_%$%E191401191449%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191400191413%_)
                      (let ((_%$%e191403191421%_
                             (gx#syntax-e _%$%e191400191413%_)))
                        (let ((_%$%hd191404191424%_
                               (##car _%$%e191403191421%_))
                              (_%$%tl191405191426%_
                               (##cdr _%$%e191403191421%_)))
                          (if (gx#stx-pair? _%$%tl191405191426%_)
                              (let ((_%$%e191406191429%_
                                     (gx#syntax-e _%$%tl191405191426%_)))
                                (let ((_%$%hd191407191432%_
                                       (##car _%$%e191406191429%_))
                                      (_%$%tl191408191434%_
                                       (##cdr _%$%e191406191429%_)))
                                  (let ((_%ann191437%_ _%$%hd191407191432%_))
                                    (if (gx#stx-pair? _%$%tl191408191434%_)
                                        (let ((_%$%e191409191439%_
                                               (gx#syntax-e
                                                _%$%tl191408191434%_)))
                                          (let ((_%$%hd191410191442%_
                                                 (##car _%$%e191409191439%_))
                                                (_%$%tl191411191444%_
                                                 (##cdr _%$%e191409191439%_)))
                                            (let ((_%expr191447%_
                                                   _%$%hd191410191442%_))
                                              (if (gx#stx-null?
                                                   _%$%tl191411191444%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann191437%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr191447%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx191399%_))
                                                  (_%$%E191402191417%_)))))
                                        (_%$%E191402191417%_)))))
                              (_%$%E191402191417%_))))
                      (_%$%E191402191417%_)))))
          (_%$%E191401191449%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx191024%_ _%body191025%_)
        (letrec ((_%expand-special191027%_
                  (lambda (_%hd191394%_ _%K191395%_ _%rest191396%_ _%r191397%_)
                    (_%K191395%_
                     '()
                     (cons (_%expand-internal191028%_
                            _%hd191394%_
                            _%rest191396%_)
                           _%r191397%_))))
                 (_%expand-internal191028%_
                  (lambda (_%hd191390%_ _%rest191391%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal191030%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd191390%_ _%rest191391%_))
                          (gx#stx-source _%stx191024%_))
                         _%expand-internal-special191029%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj191848
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj191848)
                       __obj191848))))
                 (_%expand-internal-special191029%_
                  (lambda (_%hd191186%_ _%K191187%_ _%rest191188%_ _%r191189%_)
                    (let* ((_%$%e191190191238%_ _%hd191186%_)
                           (_%$%E191233191242%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e191190191238%_)))
                           (_%$%E191220191254%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191190191238%_)
                                  (let ((_%$%e191234191246%_
                                         (gx#syntax-e _%$%e191190191238%_)))
                                    (let ((_%$%hd191235191249%_
                                           (##car _%$%e191234191246%_))
                                          (_%$%tl191236191251%_
                                           (##cdr _%$%e191234191246%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191235191249%_)
                                               (gx#core-identifier=?
                                                _%$%hd191235191249%_
                                                '%#declare))
                                          (_%K191187%_
                                           _%rest191188%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd191186%_)
                                                 _%r191189%_))
                                          (_%$%E191233191242%_))))
                                  (_%$%E191233191242%_))))
                           (_%$%E191216191296%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191190191238%_)
                                  (let ((_%$%e191221191258%_
                                         (gx#syntax-e _%$%e191190191238%_)))
                                    (let ((_%$%hd191222191261%_
                                           (##car _%$%e191221191258%_))
                                          (_%$%tl191223191263%_
                                           (##cdr _%$%e191221191258%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191222191261%_)
                                               (gx#core-identifier=?
                                                _%$%hd191222191261%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl191223191263%_)
                                              (let ((_%$%e191224191266%_
                                                     (gx#syntax-e
                                                      _%$%tl191223191263%_)))
                                                (let ((_%$%hd191225191269%_
                                                       (##car _%$%e191224191266%_))
                                                      (_%$%tl191226191271%_
                                                       (##cdr _%$%e191224191266%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd191225191269%_)
                                                      (let ((_%$%e191230191274%_
                                                             (gx#syntax-e
                                                              _%$%hd191225191269%_)))
                                                        (let ((_%$%hd191231191277%_
                                                               (##car _%$%e191230191274%_))
                                                              (_%$%tl191232191279%_
                                                               (##cdr _%$%e191230191274%_)))
                                                          (let ((_%id191282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd191231191277%_))
                    (if (gx#stx-null? _%$%tl191232191279%_)
                        (if (gx#stx-pair? _%$%tl191226191271%_)
                            (let ((_%$%e191227191284%_
                                   (gx#syntax-e _%$%tl191226191271%_)))
                              (let ((_%$%hd191228191287%_
                                     (##car _%$%e191227191284%_))
                                    (_%$%tl191229191289%_
                                     (##cdr _%$%e191227191284%_)))
                                (let ((_%props191292%_ _%$%hd191228191287%_))
                                  (if (gx#stx-null? _%$%tl191229191289%_)
                                      (let ((_%bind191294%_
                                             (gx#resolve-identifier__0
                                              _%id191282%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind191294%_
                                         _%props191292%_)
                                        (_%K191187%_
                                         _%rest191188%_
                                         _%r191189%_))
                                      (_%$%E191220191254%_)))))
                            (_%$%E191220191254%_))
                        (_%$%E191220191254%_)))))
              (_%$%E191220191254%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E191220191254%_))
                                          (_%$%E191220191254%_))))
                                  (_%$%E191220191254%_))))
                           (_%$%E191212191308%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191190191238%_)
                                  (let ((_%$%e191217191300%_
                                         (gx#syntax-e _%$%e191190191238%_)))
                                    (let ((_%$%hd191218191303%_
                                           (##car _%$%e191217191300%_))
                                          (_%$%tl191219191305%_
                                           (##cdr _%$%e191217191300%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191218191303%_)
                                               (gx#core-identifier=?
                                                _%$%hd191218191303%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd191186%_)
                                            (_%K191187%_
                                             _%rest191188%_
                                             _%r191189%_))
                                          (_%$%E191216191296%_))))
                                  (_%$%E191216191296%_))))
                           (_%$%E191202191320%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191190191238%_)
                                  (let ((_%$%e191213191312%_
                                         (gx#syntax-e _%$%e191190191238%_)))
                                    (let ((_%$%hd191214191315%_
                                           (##car _%$%e191213191312%_))
                                          (_%$%tl191215191317%_
                                           (##cdr _%$%e191213191312%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191214191315%_)
                                               (gx#core-identifier=?
                                                _%$%hd191214191315%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd191186%_)
                                            (_%K191187%_
                                             _%rest191188%_
                                             _%r191189%_))
                                          (_%$%E191212191308%_))))
                                  (_%$%E191212191308%_))))
                           (_%$%E191192191352%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191190191238%_)
                                  (let ((_%$%e191203191324%_
                                         (gx#syntax-e _%$%e191190191238%_)))
                                    (let ((_%$%hd191204191327%_
                                           (##car _%$%e191203191324%_))
                                          (_%$%tl191205191329%_
                                           (##cdr _%$%e191203191324%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191204191327%_)
                                               (gx#core-identifier=?
                                                _%$%hd191204191327%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl191205191329%_)
                                              (let ((_%$%e191206191332%_
                                                     (gx#syntax-e
                                                      _%$%tl191205191329%_)))
                                                (let ((_%$%hd191207191335%_
                                                       (##car _%$%e191206191332%_))
                                                      (_%$%tl191208191337%_
                                                       (##cdr _%$%e191206191332%_)))
                                                  (let ((_%hd-bind191340%_
                                                         _%$%hd191207191335%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl191208191337%_)
                                                        (let ((_%$%e191209191342%_
                                                               (gx#syntax-e
                                                                _%$%tl191208191337%_)))
                                                          (let ((_%$%hd191210191345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e191209191342%_))
                        (_%$%tl191211191347%_ (##cdr _%$%e191209191342%_)))
                    (let ((_%expr191350%_ _%$%hd191210191345%_))
                      (if (gx#stx-null? _%$%tl191211191347%_)
                          (if (gx#core-bind-values? _%hd-bind191340%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind191340%_)
                                (_%K191187%_
                                 _%rest191188%_
                                 (cons _%hd191186%_ _%r191189%_)))
                              (_%$%E191202191320%_))
                          (_%$%E191202191320%_)))))
                (_%$%E191202191320%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E191202191320%_))
                                          (_%$%E191202191320%_))))
                                  (_%$%E191202191320%_))))
                           (_%$%E191191191386%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191190191238%_)
                                  (let ((_%$%e191193191356%_
                                         (gx#syntax-e _%$%e191190191238%_)))
                                    (let ((_%$%hd191194191359%_
                                           (##car _%$%e191193191356%_))
                                          (_%$%tl191195191361%_
                                           (##cdr _%$%e191193191356%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd191194191359%_)
                                               (gx#core-identifier=?
                                                _%$%hd191194191359%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl191195191361%_)
                                              (let ((_%$%e191196191364%_
                                                     (gx#syntax-e
                                                      _%$%tl191195191361%_)))
                                                (let ((_%$%hd191197191367%_
                                                       (##car _%$%e191196191364%_))
                                                      (_%$%tl191198191369%_
                                                       (##cdr _%$%e191196191364%_)))
                                                  (let ((_%hd-bind191372%_
                                                         _%$%hd191197191367%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl191198191369%_)
                                                        (let ((_%$%e191199191374%_
                                                               (gx#syntax-e
                                                                _%$%tl191198191369%_)))
                                                          (let ((_%$%hd191200191377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e191199191374%_))
                        (_%$%tl191201191379%_ (##cdr _%$%e191199191374%_)))
                    (let* ((_%expr191382%_ _%$%hd191200191377%_)
                           (_%props191384%_ _%$%tl191201191379%_))
                      (if (and (gx#core-bind-values? _%hd-bind191372%_)
                               (gx#stx-list? _%props191384%_)
                               (not (gx#stx-null? _%props191384%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind191372%_)
                            (_%K191187%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind191372%_
                                          (cons _%props191384%_ '())))
                                   _%rest191188%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind191372%_
                                          (cons _%expr191382%_ '())))
                                   _%r191189%_)))
                          (_%$%E191192191352%_)))))
                (_%$%E191192191352%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E191192191352%_))
                                          (_%$%E191192191352%_))))
                                  (_%$%E191192191352%_)))))
                      (_%$%E191191191386%_))))
                 (_%wrap-internal191030%_
                  (lambda (_%rbody191032%_)
                    (let _%lp191034%_ ((_%rest191036%_ _%rbody191032%_)
                                       (_%decls191037%_ '())
                                       (_%bind191038%_ '())
                                       (_%body191039%_ '()))
                      (let* ((_%$%e191040191047%_ _%rest191036%_)
                             (_%$%E191042191096%_
                              (lambda ()
                                (let* ((_%body191091%_
                                        (let* ((_%$%body191050191060%_
                                                _%body191039%_)
                                               (_%$%else191053191068%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body191039%_)
                                                   (gx#stx-source
                                                    _%stx191024%_)))))
                                          (let ((_%$%K191058191088%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx191024%_)))
                                                (_%$%K191055191074%_
                                                 (lambda (_%expr191072%_)
                                                   _%expr191072%_)))
                                            (let ((_%$%try-match191052191084%_
                                                   (lambda ()
                                                     (if (pair? _%$%body191050191060%_)
                                                         (let ((_%$%tl191057191079%_
                                                                (##cdr _%$%body191050191060%_))
                                                               (_%$%hd191056191077%_
                                                                (##car _%$%body191050191060%_)))
                                                           (if (null? _%$%tl191057191079%_)
                                                               (let ((_%expr191082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%hd191056191077%_))
                         (_%$%K191055191074%_ _%expr191082%_))
                       (_%$%else191053191068%_)))
                 (_%$%else191053191068%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%$%body191050191060%_)
                                                  (_%$%K191058191088%_)
                                                  (_%$%try-match191052191084%_))))))
                                       (_%body191093%_
                                        (if (null? _%bind191038%_)
                                            _%body191091%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind191038%_
                                                         (cons _%body191091%_
                                                               '())))
                                             (gx#stx-source _%stx191024%_)))))
                                  (if (null? _%decls191037%_)
                                      _%body191093%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls191037%_
                                                   (cons _%body191093%_ '())))
                                       (gx#stx-source _%stx191024%_))))))
                             (_%$%E191041191182%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e191040191047%_)
                                    (let ((_%$%e191043191100%_
                                           (gx#syntax-e _%$%e191040191047%_)))
                                      (let ((_%$%hd191044191103%_
                                             (##car _%$%e191043191100%_))
                                            (_%$%tl191045191105%_
                                             (##cdr _%$%e191043191100%_)))
                                        (let* ((_%hd191108%_
                                                _%$%hd191044191103%_)
                                               (_%rest191110%_
                                                _%$%tl191045191105%_)
                                               (_%$%e191111191128%_
                                                _%hd191108%_)
                                               (_%$%E191123191132%_
                                                (lambda ()
                                                  (if (null? _%bind191038%_)
                                                      (_%lp191034%_
                                                       _%rest191110%_
                                                       _%decls191037%_
                                                       _%bind191038%_
                                                       (cons _%hd191108%_
                                                             _%body191039%_))
                                                      (_%lp191034%_
                                                       _%rest191110%_
                                                       _%decls191037%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd191108%_ '()))
                     _%bind191038%_)
               _%body191039%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E191113191146%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e191111191128%_)
                                                      (let ((_%$%e191124191136%_
                                                             (gx#syntax-e
                                                              _%$%e191111191128%_)))
                                                        (let ((_%$%hd191125191139%_
                                                               (##car _%$%e191124191136%_))
                                                              (_%$%tl191126191141%_
                                                               (##cdr _%$%e191124191136%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd191125191139%_)
                           (gx#core-identifier=?
                            _%$%hd191125191139%_
                            '%#declare))
                      (let ((_%xdecls191144%_ _%$%tl191126191141%_))
                        (_%lp191034%_
                         _%rest191110%_
                         (gx#stx-foldr cons _%decls191037%_ _%xdecls191144%_)
                         _%bind191038%_
                         _%body191039%_))
                      (_%$%E191123191132%_))))
              (_%$%E191123191132%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E191112191178%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e191111191128%_)
                                                      (let ((_%$%e191114191150%_
                                                             (gx#syntax-e
                                                              _%$%e191111191128%_)))
                                                        (let ((_%$%hd191115191153%_
                                                               (##car _%$%e191114191150%_))
                                                              (_%$%tl191116191155%_
                                                               (##cdr _%$%e191114191150%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd191115191153%_)
                           (gx#core-identifier=?
                            _%$%hd191115191153%_
                            '%#define-values))
                      (if (gx#stx-pair? _%$%tl191116191155%_)
                          (let ((_%$%e191117191158%_
                                 (gx#syntax-e _%$%tl191116191155%_)))
                            (let ((_%$%hd191118191161%_
                                   (##car _%$%e191117191158%_))
                                  (_%$%tl191119191163%_
                                   (##cdr _%$%e191117191158%_)))
                              (let ((_%hd-bind191166%_ _%$%hd191118191161%_))
                                (if (gx#stx-pair? _%$%tl191119191163%_)
                                    (let ((_%$%e191120191168%_
                                           (gx#syntax-e _%$%tl191119191163%_)))
                                      (let ((_%$%hd191121191171%_
                                             (##car _%$%e191120191168%_))
                                            (_%$%tl191122191173%_
                                             (##cdr _%$%e191120191168%_)))
                                        (let ((_%expr191176%_
                                               _%$%hd191121191171%_))
                                          (if (gx#stx-null?
                                               _%$%tl191122191173%_)
                                              (_%lp191034%_
                                               _%rest191110%_
                                               _%decls191037%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind191166%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr191176%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind191038%_)
                                               _%body191039%_)
                                              (_%$%E191113191146%_)))))
                                    (_%$%E191113191146%_)))))
                          (_%$%E191113191146%_))
                      (_%$%E191113191146%_))))
              (_%$%E191113191146%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%E191112191178%_))))
                                    (_%$%E191042191096%_)))))
                        (_%$%E191041191182%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body191025%_)
            (gx#stx-source _%stx191024%_))
           _%expand-special191027%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx190962%_)
        (let* ((_%$%e190963190970%_ _%stx190962%_)
               (_%$%E190965190974%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190963190970%_)))
               (_%$%E190964191020%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190963190970%_)
                      (let ((_%$%e190966190978%_
                             (gx#syntax-e _%$%e190963190970%_)))
                        (let ((_%$%hd190967190981%_
                               (##car _%$%e190966190978%_))
                              (_%$%tl190968190983%_
                               (##cdr _%$%e190966190978%_)))
                          (let ((_%body190986%_ _%$%tl190968190983%_))
                            (if (gx#stx-list? _%body190986%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl190988%_)
                                     (let* ((_%$%e190989190996%_
                                             _%decl190988%_)
                                            (_%$%E190991191000%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%$%e190989190996%_)))
                                            (_%$%E190990191016%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%$%e190989190996%_)
                                                   (let ((_%$%e190992191004%_
                                                          (gx#syntax-e
                                                           _%$%e190989190996%_)))
                                                     (let ((_%$%hd190993191007%_
                                                            (##car _%$%e190992191004%_))
                                                           (_%$%tl190994191009%_
                                                            (##cdr _%$%e190992191004%_)))
                                                       (let* ((_%head191012%_
                                                               _%$%hd190993191007%_)
                                                              (_%args191014%_
                                                               _%$%tl190994191009%_))
                                                         (if (gx#stx-list?
                                                              _%args191014%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl190988%_)
                                                             (_%$%E190991191000%_)))))
                                                   (_%$%E190991191000%_)))))
                                       (_%$%E190990191016%_)))
                                   _%body190986%_))
                                 (gx#stx-source _%stx190962%_))
                                (_%$%E190965190974%_)))))
                      (_%$%E190965190974%_)))))
          (_%$%E190964191020%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx190866%_)
        (let* ((_%$%e190867190874%_ _%stx190866%_)
               (_%$%E190869190878%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190867190874%_)))
               (_%$%E190868190958%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190867190874%_)
                      (let ((_%$%e190870190882%_
                             (gx#syntax-e _%$%e190867190874%_)))
                        (let ((_%$%hd190871190885%_
                               (##car _%$%e190870190882%_))
                              (_%$%tl190872190887%_
                               (##cdr _%$%e190870190882%_)))
                          (let ((_%body190890%_ _%$%tl190872190887%_))
                            (let _%lp190892%_ ((_%rest190894%_ _%body190890%_)
                                               (_%r190895%_ '()))
                              (let* ((_%$%e190896190910%_ _%rest190894%_)
                                     (_%$%E190908190914%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx190866%_)))
                                     (_%$%E190898190918%_
                                      (lambda ()
                                        (if (gx#stx-null? _%$%e190896190910%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r190895%_))
                                             (gx#stx-source _%stx190866%_))
                                            (_%$%E190908190914%_))))
                                     (_%$%E190897190954%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e190896190910%_)
                                            (let ((_%$%e190899190922%_
                                                   (gx#syntax-e
                                                    _%$%e190896190910%_)))
                                              (let ((_%$%hd190900190925%_
                                                     (##car _%$%e190899190922%_))
                                                    (_%$%tl190901190927%_
                                                     (##cdr _%$%e190899190922%_)))
                                                (if (gx#stx-pair?
                                                     _%$%hd190900190925%_)
                                                    (let ((_%$%e190902190930%_
                                                           (gx#syntax-e
                                                            _%$%hd190900190925%_)))
                                                      (let ((_%$%hd190903190933%_
                                                             (##car _%$%e190902190930%_))
                                                            (_%$%tl190904190935%_
                                                             (##cdr _%$%e190902190930%_)))
                                                        (let ((_%id190938%_
                                                               _%$%hd190903190933%_))
                                                          (if (gx#stx-pair?
                                                               _%$%tl190904190935%_)
                                                              (let ((_%$%e190905190940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl190904190935%_)))
                        (let ((_%$%hd190906190943%_
                               (##car _%$%e190905190940%_))
                              (_%$%tl190907190945%_
                               (##cdr _%$%e190905190940%_)))
                          (let ((_%eid190948%_ _%$%hd190906190943%_))
                            (if (gx#stx-null? _%$%tl190907190945%_)
                                (let ((_%rest190950%_ _%$%tl190901190927%_))
                                  (if (and (gx#identifier? _%id190938%_)
                                           (gx#identifier? _%eid190948%_))
                                      (let ((_%eid190952%_
                                             (gx#stx-e _%eid190948%_)))
                                        (gx#core-bind-extern!__0
                                         _%id190938%_
                                         _%eid190952%_)
                                        (_%lp190892%_
                                         _%rest190950%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id190938%_)
                                                     (cons _%eid190952%_ '()))
                                               _%r190895%_)))
                                      (_%$%E190898190918%_)))
                                (_%$%E190898190918%_)))))
                      (_%$%E190898190918%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E190898190918%_))))
                                            (_%$%E190898190918%_)))))
                                (_%$%E190897190954%_))))))
                      (_%$%E190869190878%_)))))
          (_%$%E190868190958%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx190768%_)
        (let* ((_%$%e190769190792%_ _%stx190768%_)
               (_%$%E190781190796%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190769190792%_)))
               (_%$%E190771190828%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190769190792%_)
                      (let ((_%$%e190782190800%_
                             (gx#syntax-e _%$%e190769190792%_)))
                        (let ((_%$%hd190783190803%_
                               (##car _%$%e190782190800%_))
                              (_%$%tl190784190805%_
                               (##cdr _%$%e190782190800%_)))
                          (if (gx#stx-pair? _%$%tl190784190805%_)
                              (let ((_%$%e190785190808%_
                                     (gx#syntax-e _%$%tl190784190805%_)))
                                (let ((_%$%hd190786190811%_
                                       (##car _%$%e190785190808%_))
                                      (_%$%tl190787190813%_
                                       (##cdr _%$%e190785190808%_)))
                                  (let ((_%hd190816%_ _%$%hd190786190811%_))
                                    (if (gx#stx-pair? _%$%tl190787190813%_)
                                        (let ((_%$%e190788190818%_
                                               (gx#syntax-e
                                                _%$%tl190787190813%_)))
                                          (let ((_%$%hd190789190821%_
                                                 (##car _%$%e190788190818%_))
                                                (_%$%tl190790190823%_
                                                 (##cdr _%$%e190788190818%_)))
                                            (let ((_%expr190826%_
                                                   _%$%hd190789190821%_))
                                              (if (gx#stx-null?
                                                   _%$%tl190790190823%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd190816%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd190816%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd190816%_)
                             (cons (gx#core-expand-expression _%expr190826%_)
                                   '())))
                 (gx#stx-source _%stx190768%_)))
              (_%$%E190781190796%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E190781190796%_)))))
                                        (_%$%E190781190796%_)))))
                              (_%$%E190781190796%_))))
                      (_%$%E190781190796%_))))
               (_%$%E190770190862%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190769190792%_)
                      (let ((_%$%e190772190832%_
                             (gx#syntax-e _%$%e190769190792%_)))
                        (let ((_%$%hd190773190835%_
                               (##car _%$%e190772190832%_))
                              (_%$%tl190774190837%_
                               (##cdr _%$%e190772190832%_)))
                          (if (gx#stx-pair? _%$%tl190774190837%_)
                              (let ((_%$%e190775190840%_
                                     (gx#syntax-e _%$%tl190774190837%_)))
                                (let ((_%$%hd190776190843%_
                                       (##car _%$%e190775190840%_))
                                      (_%$%tl190777190845%_
                                       (##cdr _%$%e190775190840%_)))
                                  (let ((_%hd190848%_ _%$%hd190776190843%_))
                                    (if (gx#stx-pair? _%$%tl190777190845%_)
                                        (let ((_%$%e190778190850%_
                                               (gx#syntax-e
                                                _%$%tl190777190845%_)))
                                          (let ((_%$%hd190779190853%_
                                                 (##car _%$%e190778190850%_))
                                                (_%$%tl190780190855%_
                                                 (##cdr _%$%e190778190850%_)))
                                            (let* ((_%expr190858%_
                                                    _%$%hd190779190853%_)
                                                   (_%props190860%_
                                                    _%$%tl190780190855%_))
                                              (if (and (gx#stx-list?
                                                        _%props190860%_)
                                                       (not (gx#stx-null?
                                                             _%props190860%_)))
                                                  (gx#core-cons
                                                   '%#begin
                                                   (cons (gx#core-cons
                                                          '%#define-values
                                                          (cons _%hd190848%_
                                                                (cons _%expr190858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                 (cons (gx#core-cons
                        '%#bind-runtime-properties!
                        (cons _%hd190848%_ (cons _%props190860%_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E190771190828%_)))))
                                        (_%$%E190771190828%_)))))
                              (_%$%E190771190828%_))))
                      (_%$%E190771190828%_)))))
          (_%$%E190770190862%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx190707%_)
        (let* ((_%$%e190708190721%_ _%stx190707%_)
               (_%$%E190710190725%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190708190721%_)))
               (_%$%E190709190764%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190708190721%_)
                      (let ((_%$%e190711190729%_
                             (gx#syntax-e _%$%e190708190721%_)))
                        (let ((_%$%hd190712190732%_
                               (##car _%$%e190711190729%_))
                              (_%$%tl190713190734%_
                               (##cdr _%$%e190711190729%_)))
                          (if (gx#stx-pair? _%$%tl190713190734%_)
                              (let ((_%$%e190714190737%_
                                     (gx#syntax-e _%$%tl190713190734%_)))
                                (let ((_%$%hd190715190740%_
                                       (##car _%$%e190714190737%_))
                                      (_%$%tl190716190742%_
                                       (##cdr _%$%e190714190737%_)))
                                  (let ((_%id190745%_ _%$%hd190715190740%_))
                                    (if (gx#stx-pair? _%$%tl190716190742%_)
                                        (let ((_%$%e190717190747%_
                                               (gx#syntax-e
                                                _%$%tl190716190742%_)))
                                          (let ((_%$%hd190718190750%_
                                                 (##car _%$%e190717190747%_))
                                                (_%$%tl190719190752%_
                                                 (##cdr _%$%e190717190747%_)))
                                            (let* ((_%binding-id190755%_
                                                    _%$%hd190718190750%_)
                                                   (_%props190757%_
                                                    _%$%tl190719190752%_))
                                              (if (and (gx#identifier?
                                                        _%id190745%_)
                                                       (gx#identifier?
                                                        _%binding-id190755%_)
                                                       (gx#stx-list?
                                                        _%props190757%_))
                                                  (let* ((_%eid190759%_
                                                          (gx#stx-e
                                                           _%binding-id190755%_))
                                                         (_%bind190761%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id190745%_
                                                           _%eid190759%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind190761%_
                                                     _%props190757%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id190745%_)
                         (cons _%eid190759%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E190710190725%_)))))
                                        (_%$%E190710190725%_)))))
                              (_%$%E190710190725%_))))
                      (_%$%E190710190725%_)))))
          (_%$%E190709190764%_))))
    (define gx#core-expand-bind-runtime-properties%
      (lambda (_%stx190640%_)
        (let* ((_%$%e190641190657%_ _%stx190640%_)
               (_%$%E190643190661%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190641190657%_)))
               (_%$%E190642190703%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190641190657%_)
                      (let ((_%$%e190644190665%_
                             (gx#syntax-e _%$%e190641190657%_)))
                        (let ((_%$%hd190645190668%_
                               (##car _%$%e190644190665%_))
                              (_%$%tl190646190670%_
                               (##cdr _%$%e190644190665%_)))
                          (if (gx#stx-pair? _%$%tl190646190670%_)
                              (let ((_%$%e190647190673%_
                                     (gx#syntax-e _%$%tl190646190670%_)))
                                (let ((_%$%hd190648190676%_
                                       (##car _%$%e190647190673%_))
                                      (_%$%tl190649190678%_
                                       (##cdr _%$%e190647190673%_)))
                                  (if (gx#stx-pair? _%$%hd190648190676%_)
                                      (let ((_%$%e190653190681%_
                                             (gx#syntax-e
                                              _%$%hd190648190676%_)))
                                        (let ((_%$%hd190654190684%_
                                               (##car _%$%e190653190681%_))
                                              (_%$%tl190655190686%_
                                               (##cdr _%$%e190653190681%_)))
                                          (let ((_%id190689%_
                                                 _%$%hd190654190684%_))
                                            (if (gx#stx-null?
                                                 _%$%tl190655190686%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl190649190678%_)
                                                    (let ((_%$%e190650190691%_
                                                           (gx#syntax-e
                                                            _%$%tl190649190678%_)))
                                                      (let ((_%$%hd190651190694%_
                                                             (##car _%$%e190650190691%_))
                                                            (_%$%tl190652190696%_
                                                             (##cdr _%$%e190650190691%_)))
                                                        (let ((_%props190699%_
                                                               _%$%hd190651190694%_))
                                                          (if (gx#stx-null?
                                                               _%$%tl190652190696%_)
                                                              (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%id190689%_)
                               (gx#stx-list? _%props190699%_))
                          (let ((_%bind190701%_
                                 (gx#resolve-identifier__0 _%id190689%_)))
                            (if (##structure-instance-of?
                                 _%bind190701%_
                                 'gx#runtime-binding::t)
                                '#!void
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; expected runtime binding"
                                 _%stx190640%_
                                 _%id190689%_
                                 _%bind190701%_))
                            (gx#core-bind-runtime-properties!
                             _%bind190701%_
                             _%props190699%_)
                            (gx#core-cons '%#begin '()))
                          (_%$%E190643190661%_))
                      (_%$%E190643190661%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E190643190661%_))
                                                (_%$%E190643190661%_)))))
                                      (_%$%E190643190661%_))))
                              (_%$%E190643190661%_))))
                      (_%$%E190643190661%_)))))
          (_%$%E190642190703%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind190575%_ _%props190576%_)
        (letrec ((_%eval-prop190578%_
                  (lambda (_%prop190638%_)
                    (gx#eval-expression+1 _%prop190638%_))))
          (let _%loop190580%_ ((_%rest190582%_ _%props190576%_)
                               (_%props190583%_ '()))
            (let* ((_%$%e190584190595%_ _%rest190582%_)
                   (_%$%E190593190599%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e190584190595%_)))
                   (_%$%E190586190603%_
                    (lambda ()
                      (if (gx#stx-null? _%$%e190584190595%_)
                          (if (null? _%props190583%_)
                              '#!void
                              (##structure-set!
                               _%bind190575%_
                               (reverse! _%props190583%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%$%E190593190599%_))))
                   (_%$%E190585190634%_
                    (lambda ()
                      (if (gx#stx-pair? _%$%e190584190595%_)
                          (let ((_%$%e190587190607%_
                                 (gx#syntax-e _%$%e190584190595%_)))
                            (let ((_%$%hd190588190610%_
                                   (##car _%$%e190587190607%_))
                                  (_%$%tl190589190612%_
                                   (##cdr _%$%e190587190607%_)))
                              (let ((_%key190615%_ _%$%hd190588190610%_))
                                (if (gx#stx-pair? _%$%tl190589190612%_)
                                    (let ((_%$%e190590190617%_
                                           (gx#syntax-e _%$%tl190589190612%_)))
                                      (let ((_%$%hd190591190620%_
                                             (##car _%$%e190590190617%_))
                                            (_%$%tl190592190622%_
                                             (##cdr _%$%e190590190617%_)))
                                        (let* ((_%prop190625%_
                                                _%$%hd190591190620%_)
                                               (_%rest190627%_
                                                _%$%tl190592190622%_))
                                          (if (gx#stx-keyword? _%key190615%_)
                                              (let* ((_%key190629%_
                                                      (gx#stx-e _%key190615%_))
                                                     (_%$e190631%_
                                                      _%key190629%_))
                                                (if (eq? 'macro: _%$e190631%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind190575%_
                                                       (if (gx#identifier?
                                                            _%prop190625%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop190625%_)
                                                           (gx#eval-expression+1
                                                            _%prop190625%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop190580%_
                                                       _%rest190627%_
                                                       _%props190583%_))
                                                    (if (eq? 'type:
                                                             _%$e190631%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind190575%_
                                                           (gx#eval-expression+1
                                                            _%prop190625%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop190580%_
                                                           _%rest190627%_
                                                           _%props190583%_))
                                                        (_%loop190580%_
                                                         _%rest190627%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop190625%_)
                                                               (cons _%key190629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props190583%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E190586190603%_)))))
                                    (_%$%E190586190603%_)))))
                          (_%$%E190586190603%_)))))
              (_%$%E190585190634%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx190518%_)
        (let* ((_%$%e190519190532%_ _%stx190518%_)
               (_%$%E190521190536%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190519190532%_)))
               (_%$%E190520190571%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190519190532%_)
                      (let ((_%$%e190522190540%_
                             (gx#syntax-e _%$%e190519190532%_)))
                        (let ((_%$%hd190523190543%_
                               (##car _%$%e190522190540%_))
                              (_%$%tl190524190545%_
                               (##cdr _%$%e190522190540%_)))
                          (if (gx#stx-pair? _%$%tl190524190545%_)
                              (let ((_%$%e190525190548%_
                                     (gx#syntax-e _%$%tl190524190545%_)))
                                (let ((_%$%hd190526190551%_
                                       (##car _%$%e190525190548%_))
                                      (_%$%tl190527190553%_
                                       (##cdr _%$%e190525190548%_)))
                                  (let ((_%id190556%_ _%$%hd190526190551%_))
                                    (if (gx#stx-pair? _%$%tl190527190553%_)
                                        (let ((_%$%e190528190558%_
                                               (gx#syntax-e
                                                _%$%tl190527190553%_)))
                                          (let ((_%$%hd190529190561%_
                                                 (##car _%$%e190528190558%_))
                                                (_%$%tl190530190563%_
                                                 (##cdr _%$%e190528190558%_)))
                                            (let ((_%expr190566%_
                                                   _%$%hd190529190561%_))
                                              (if (gx#stx-null?
                                                   _%$%tl190530190563%_)
                                                  (if (gx#identifier?
                                                       _%id190556%_)
                                                      (let ((_g191866_
                                                             (gx#core-expand-expression+1
                                                              _%expr190566%_)))
                                                        (begin
                                                          (let ((_g191867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g191866_)
                             (##values-length _g191866_)
                             1)))
                    (if (not (##fx= _g191867_ 2))
                        (error "Context expects 2 values" _g191867_)))
                  (let ((_%e-stx190568%_ (##values-ref _g191866_ 0))
                        (_%e190569%_ (##values-ref _g191866_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id190556%_ _%e190569%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id190556%_)
                                   (cons _%e-stx190568%_ '())))
                       (gx#stx-source _%stx190518%_))))))
              (_%$%E190521190536%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E190521190536%_)))))
                                        (_%$%E190521190536%_)))))
                              (_%$%E190521190536%_))))
                      (_%$%E190521190536%_)))))
          (_%$%E190520190571%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx190462%_)
        (let* ((_%$%e190463190476%_ _%stx190462%_)
               (_%$%E190465190480%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190463190476%_)))
               (_%$%E190464190514%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190463190476%_)
                      (let ((_%$%e190466190484%_
                             (gx#syntax-e _%$%e190463190476%_)))
                        (let ((_%$%hd190467190487%_
                               (##car _%$%e190466190484%_))
                              (_%$%tl190468190489%_
                               (##cdr _%$%e190466190484%_)))
                          (if (gx#stx-pair? _%$%tl190468190489%_)
                              (let ((_%$%e190469190492%_
                                     (gx#syntax-e _%$%tl190468190489%_)))
                                (let ((_%$%hd190470190495%_
                                       (##car _%$%e190469190492%_))
                                      (_%$%tl190471190497%_
                                       (##cdr _%$%e190469190492%_)))
                                  (let ((_%id190500%_ _%$%hd190470190495%_))
                                    (if (gx#stx-pair? _%$%tl190471190497%_)
                                        (let ((_%$%e190472190502%_
                                               (gx#syntax-e
                                                _%$%tl190471190497%_)))
                                          (let ((_%$%hd190473190505%_
                                                 (##car _%$%e190472190502%_))
                                                (_%$%tl190474190507%_
                                                 (##cdr _%$%e190472190502%_)))
                                            (let ((_%alias-id190510%_
                                                   _%$%hd190473190505%_))
                                              (if (gx#stx-null?
                                                   _%$%tl190474190507%_)
                                                  (if (and (gx#identifier?
                                                            _%id190500%_)
                                                           (gx#identifier?
                                                            _%alias-id190510%_))
                                                      (let ((_%alias-id190512%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id190510%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id190500%_
                                                         _%alias-id190512%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id190500%_)
                             (cons _%alias-id190512%_ '())))))
              (_%$%E190465190480%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E190465190480%_)))))
                                        (_%$%E190465190480%_)))))
                              (_%$%E190465190480%_))))
                      (_%$%E190465190480%_)))))
          (_%$%E190464190514%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx190405%_ _%wrap?190406%_)
        (let* ((_%$%e190407190417%_ _%stx190405%_)
               (_%$%E190409190421%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190407190417%_)))
               (_%$%E190408190448%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190407190417%_)
                      (let ((_%$%e190410190425%_
                             (gx#syntax-e _%$%e190407190417%_)))
                        (let ((_%$%hd190411190428%_
                               (##car _%$%e190410190425%_))
                              (_%$%tl190412190430%_
                               (##cdr _%$%e190410190425%_)))
                          (if (gx#stx-pair? _%$%tl190412190430%_)
                              (let ((_%$%e190413190433%_
                                     (gx#syntax-e _%$%tl190412190430%_)))
                                (let ((_%$%hd190414190436%_
                                       (##car _%$%e190413190433%_))
                                      (_%$%tl190415190438%_
                                       (##cdr _%$%e190413190433%_)))
                                  (let* ((_%hd190441%_ _%$%hd190414190436%_)
                                         (_%body190443%_ _%$%tl190415190438%_))
                                    (if (gx#core-bind-values? _%hd190441%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd190441%_)
                                           (let ((_%body190446%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd190441%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx190405%_
                                                               _%body190443%_)
                                                              '()))))
                                             (if _%wrap?190406%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body190446%_)
                                                  (gx#stx-source
                                                   _%stx190405%_))
                                                 _%body190446%_)))
                                         gx#current-expander-context
                                         (let ((__obj191849
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj191849)
                                           __obj191849))
                                        (_%$%E190409190421%_)))))
                              (_%$%E190409190421%_))))
                      (_%$%E190409190421%_)))))
          (_%$%E190408190448%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx190455%_)
        (let ((_%wrap?190457%_ '#t))
          (gx#core-expand-lambda%__% _%stx190455%_ _%wrap?190457%_))))
    (define gx#core-expand-lambda%
      (lambda _g191868_
        (let ((_g191869_ (##length _g191868_)))
          (cond ((##fx= _g191869_ 1)
                 (apply gx#core-expand-lambda%__0 _g191868_))
                ((##fx= _g191869_ 2)
                 (apply gx#core-expand-lambda%__% _g191868_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g191868_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx190369%_)
        (let* ((_%$%e190370190377%_ _%stx190369%_)
               (_%$%E190372190381%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190370190377%_)))
               (_%$%E190371190400%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190370190377%_)
                      (let ((_%$%e190373190385%_
                             (gx#syntax-e _%$%e190370190377%_)))
                        (let ((_%$%hd190374190388%_
                               (##car _%$%e190373190385%_))
                              (_%$%tl190375190390%_
                               (##cdr _%$%e190373190385%_)))
                          (let ((_%clauses190393%_ _%$%tl190375190390%_))
                            (if (gx#stx-list? _%clauses190393%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause190395%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause190395%_)
                                       (let ((_%$e190397%_
                                              (gx#stx-source
                                               _%clause190395%_)))
                                         (if _%$e190397%_
                                             _%$e190397%_
                                             (gx#stx-source _%stx190369%_))))
                                      '#f))
                                   _%clauses190393%_))
                                 (gx#stx-source _%stx190369%_))
                                (_%$%E190372190381%_)))))
                      (_%$%E190372190381%_)))))
          (_%$%E190371190400%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx190323%_)
        (let* ((_%$%e190324190334%_ _%stx190323%_)
               (_%$%E190326190338%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190324190334%_)))
               (_%$%E190325190365%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190324190334%_)
                      (let ((_%$%e190327190342%_
                             (gx#syntax-e _%$%e190324190334%_)))
                        (let ((_%$%hd190328190345%_
                               (##car _%$%e190327190342%_))
                              (_%$%tl190329190347%_
                               (##cdr _%$%e190327190342%_)))
                          (if (gx#stx-pair? _%$%tl190329190347%_)
                              (let ((_%$%e190330190350%_
                                     (gx#syntax-e _%$%tl190329190347%_)))
                                (let ((_%$%hd190331190353%_
                                       (##car _%$%e190330190350%_))
                                      (_%$%tl190332190355%_
                                       (##cdr _%$%e190330190350%_)))
                                  (let* ((_%hd190358%_ _%$%hd190331190353%_)
                                         (_%body190360%_ _%$%tl190332190355%_))
                                    (if (gx#core-expand-let-bind? _%hd190358%_)
                                        (let ((_%expressions190362%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd190358%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd190358%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd190358%_
                                                           _%expressions190362%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx190323%_
                         _%body190360%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx190323%_)))
                                           gx#current-expander-context
                                           (let ((__obj191850
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj191850)
                                             __obj191850)))
                                        (_%$%E190326190338%_)))))
                              (_%$%E190326190338%_))))
                      (_%$%E190326190338%_)))))
          (_%$%E190325190365%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx190268%_ _%form190269%_)
        (let* ((_%$%e190270190280%_ _%stx190268%_)
               (_%$%E190272190284%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190270190280%_)))
               (_%$%E190271190309%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190270190280%_)
                      (let ((_%$%e190273190288%_
                             (gx#syntax-e _%$%e190270190280%_)))
                        (let ((_%$%hd190274190291%_
                               (##car _%$%e190273190288%_))
                              (_%$%tl190275190293%_
                               (##cdr _%$%e190273190288%_)))
                          (if (gx#stx-pair? _%$%tl190275190293%_)
                              (let ((_%$%e190276190296%_
                                     (gx#syntax-e _%$%tl190275190293%_)))
                                (let ((_%$%hd190277190299%_
                                       (##car _%$%e190276190296%_))
                                      (_%$%tl190278190301%_
                                       (##cdr _%$%e190276190296%_)))
                                  (let* ((_%hd190304%_ _%$%hd190277190299%_)
                                         (_%body190306%_ _%$%tl190278190301%_))
                                    (if (gx#core-expand-let-bind? _%hd190304%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd190304%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form190269%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd190304%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd190304%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx190268%_
                                                               _%body190306%_)
                                                              '())))
                                            (gx#stx-source _%stx190268%_)))
                                         gx#current-expander-context
                                         (let ((__obj191851
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj191851)
                                           __obj191851))
                                        (_%$%E190272190284%_)))))
                              (_%$%E190272190284%_))))
                      (_%$%E190272190284%_)))))
          (_%$%E190271190309%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx190316%_)
        (let ((_%form190318%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx190316%_ _%form190318%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g191870_
        (let ((_g191871_ (##length _g191870_)))
          (cond ((##fx= _g191871_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g191870_))
                ((##fx= _g191871_ 2)
                 (apply gx#core-expand-letrec-values%__% _g191870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g191870_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx190265%_)
        (gx#core-expand-letrec-values%__% _%stx190265%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx190222%_)
        (if (gx#stx-list? _%stx190222%_)
            (gx#stx-andmap
             (lambda (_%bind190224%_)
               (let* ((_%$%e190225190235%_ _%bind190224%_)
                      (_%$%E190227190239%_ (lambda () '#f))
                      (_%$%E190226190261%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e190225190235%_)
                             (let ((_%$%e190228190243%_
                                    (gx#syntax-e _%$%e190225190235%_)))
                               (let ((_%$%hd190229190246%_
                                      (##car _%$%e190228190243%_))
                                     (_%$%tl190230190248%_
                                      (##cdr _%$%e190228190243%_)))
                                 (let ((_%hd190251%_ _%$%hd190229190246%_))
                                   (if (gx#stx-pair? _%$%tl190230190248%_)
                                       (let ((_%$%e190231190253%_
                                              (gx#syntax-e
                                               _%$%tl190230190248%_)))
                                         (let ((_%$%hd190232190256%_
                                                (##car _%$%e190231190253%_))
                                               (_%$%tl190233190258%_
                                                (##cdr _%$%e190231190253%_)))
                                           (if (gx#stx-null?
                                                _%$%tl190233190258%_)
                                               (gx#core-bind-values?
                                                _%hd190251%_)
                                               (_%$%E190227190239%_))))
                                       (_%$%E190227190239%_)))))
                             (_%$%E190227190239%_)))))
                 (_%$%E190226190261%_)))
             _%stx190222%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind190181%_)
        (let* ((_%$%e190182190192%_ _%bind190181%_)
               (_%$%E190184190196%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190182190192%_)))
               (_%$%E190183190218%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190182190192%_)
                      (let ((_%$%e190185190200%_
                             (gx#syntax-e _%$%e190182190192%_)))
                        (let ((_%$%hd190186190203%_
                               (##car _%$%e190185190200%_))
                              (_%$%tl190187190205%_
                               (##cdr _%$%e190185190200%_)))
                          (if (gx#stx-pair? _%$%tl190187190205%_)
                              (let ((_%$%e190188190208%_
                                     (gx#syntax-e _%$%tl190187190205%_)))
                                (let ((_%$%hd190189190211%_
                                       (##car _%$%e190188190208%_))
                                      (_%$%tl190190190213%_
                                       (##cdr _%$%e190188190208%_)))
                                  (let ((_%expr190216%_ _%$%hd190189190211%_))
                                    (if (gx#stx-null? _%$%tl190190190213%_)
                                        (gx#core-expand-expression
                                         _%expr190216%_)
                                        (_%$%E190184190196%_)))))
                              (_%$%E190184190196%_))))
                      (_%$%E190184190196%_)))))
          (_%$%E190183190218%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind190140%_)
        (let* ((_%$%e190141190151%_ _%bind190140%_)
               (_%$%E190143190155%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190141190151%_)))
               (_%$%E190142190177%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190141190151%_)
                      (let ((_%$%e190144190159%_
                             (gx#syntax-e _%$%e190141190151%_)))
                        (let ((_%$%hd190145190162%_
                               (##car _%$%e190144190159%_))
                              (_%$%tl190146190164%_
                               (##cdr _%$%e190144190159%_)))
                          (let ((_%hd190167%_ _%$%hd190145190162%_))
                            (if (gx#stx-pair? _%$%tl190146190164%_)
                                (let ((_%$%e190147190169%_
                                       (gx#syntax-e _%$%tl190146190164%_)))
                                  (let ((_%$%hd190148190172%_
                                         (##car _%$%e190147190169%_))
                                        (_%$%tl190149190174%_
                                         (##cdr _%$%e190147190169%_)))
                                    (if (gx#stx-null? _%$%tl190149190174%_)
                                        (gx#core-bind-values!__0 _%hd190167%_)
                                        (_%$%E190143190155%_))))
                                (_%$%E190143190155%_)))))
                      (_%$%E190143190155%_)))))
          (_%$%E190142190177%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind190098%_ _%expr190099%_)
        (let* ((_%$%e190100190110%_ _%bind190098%_)
               (_%$%E190102190114%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190100190110%_)))
               (_%$%E190101190136%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190100190110%_)
                      (let ((_%$%e190103190118%_
                             (gx#syntax-e _%$%e190100190110%_)))
                        (let ((_%$%hd190104190121%_
                               (##car _%$%e190103190118%_))
                              (_%$%tl190105190123%_
                               (##cdr _%$%e190103190118%_)))
                          (let ((_%hd190126%_ _%$%hd190104190121%_))
                            (if (gx#stx-pair? _%$%tl190105190123%_)
                                (let ((_%$%e190106190128%_
                                       (gx#syntax-e _%$%tl190105190123%_)))
                                  (let ((_%$%hd190107190131%_
                                         (##car _%$%e190106190128%_))
                                        (_%$%tl190108190133%_
                                         (##cdr _%$%e190106190128%_)))
                                    (if (gx#stx-null? _%$%tl190108190133%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd190126%_)
                                              (cons _%expr190099%_ '()))
                                        (_%$%E190102190114%_))))
                                (_%$%E190102190114%_)))))
                      (_%$%E190102190114%_)))))
          (_%$%E190101190136%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx190052%_)
        (let* ((_%$%e190053190063%_ _%stx190052%_)
               (_%$%E190055190067%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190053190063%_)))
               (_%$%E190054190094%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190053190063%_)
                      (let ((_%$%e190056190071%_
                             (gx#syntax-e _%$%e190053190063%_)))
                        (let ((_%$%hd190057190074%_
                               (##car _%$%e190056190071%_))
                              (_%$%tl190058190076%_
                               (##cdr _%$%e190056190071%_)))
                          (if (gx#stx-pair? _%$%tl190058190076%_)
                              (let ((_%$%e190059190079%_
                                     (gx#syntax-e _%$%tl190058190076%_)))
                                (let ((_%$%hd190060190082%_
                                       (##car _%$%e190059190079%_))
                                      (_%$%tl190061190084%_
                                       (##cdr _%$%e190059190079%_)))
                                  (let* ((_%hd190087%_ _%$%hd190060190082%_)
                                         (_%body190089%_ _%$%tl190061190084%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd190087%_)
                                        (let ((_%expanders190091%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd190087%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd190087%_
                                              _%expanders190091%_)
                                             (gx#core-expand-local-block
                                              _%stx190052%_
                                              _%body190089%_))
                                           gx#current-expander-context
                                           (let ((__obj191852
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj191852)
                                             __obj191852)))
                                        (_%$%E190055190067%_)))))
                              (_%$%E190055190067%_))))
                      (_%$%E190055190067%_)))))
          (_%$%E190054190094%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx190001%_)
        (let* ((_%$%e190002190012%_ _%stx190001%_)
               (_%$%E190004190016%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e190002190012%_)))
               (_%$%E190003190048%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e190002190012%_)
                      (let ((_%$%e190005190020%_
                             (gx#syntax-e _%$%e190002190012%_)))
                        (let ((_%$%hd190006190023%_
                               (##car _%$%e190005190020%_))
                              (_%$%tl190007190025%_
                               (##cdr _%$%e190005190020%_)))
                          (if (gx#stx-pair? _%$%tl190007190025%_)
                              (let ((_%$%e190008190028%_
                                     (gx#syntax-e _%$%tl190007190025%_)))
                                (let ((_%$%hd190009190031%_
                                       (##car _%$%e190008190028%_))
                                      (_%$%tl190010190033%_
                                       (##cdr _%$%e190008190028%_)))
                                  (let* ((_%hd190036%_ _%$%hd190009190031%_)
                                         (_%body190038%_ _%$%tl190010190033%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd190036%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd190036%_
                                            (make-list
                                             (gx#stx-length _%hd190036%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%$%g190040190043%_
                                                     _%$%g190041190045%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%$%g190040190043%_
                                               _%$%g190041190045%_
                                               '#t))
                                            _%hd190036%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd190036%_))
                                           (gx#core-expand-local-block
                                            _%stx190001%_
                                            _%body190038%_))
                                         gx#current-expander-context
                                         (let ((__obj191853
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj191853)
                                           __obj191853))
                                        (_%$%E190004190016%_)))))
                              (_%$%E190004190016%_))))
                      (_%$%E190004190016%_)))))
          (_%$%E190003190048%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx189958%_)
        (if (gx#stx-list? _%stx189958%_)
            (gx#stx-andmap
             (lambda (_%bind189960%_)
               (let* ((_%$%e189961189971%_ _%bind189960%_)
                      (_%$%E189963189975%_ (lambda () '#f))
                      (_%$%E189962189997%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e189961189971%_)
                             (let ((_%$%e189964189979%_
                                    (gx#syntax-e _%$%e189961189971%_)))
                               (let ((_%$%hd189965189982%_
                                      (##car _%$%e189964189979%_))
                                     (_%$%tl189966189984%_
                                      (##cdr _%$%e189964189979%_)))
                                 (let ((_%hd189987%_ _%$%hd189965189982%_))
                                   (if (gx#stx-pair? _%$%tl189966189984%_)
                                       (let ((_%$%e189967189989%_
                                              (gx#syntax-e
                                               _%$%tl189966189984%_)))
                                         (let ((_%$%hd189968189992%_
                                                (##car _%$%e189967189989%_))
                                               (_%$%tl189969189994%_
                                                (##cdr _%$%e189967189989%_)))
                                           (if (gx#stx-null?
                                                _%$%tl189969189994%_)
                                               (gx#identifier? _%hd189987%_)
                                               (_%$%E189963189975%_))))
                                       (_%$%E189963189975%_)))))
                             (_%$%E189963189975%_)))))
                 (_%$%E189962189997%_)))
             _%stx189958%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind189914%_)
        (let* ((_%$%e189915189925%_ _%bind189914%_)
               (_%$%E189917189929%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189915189925%_)))
               (_%$%E189916189954%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189915189925%_)
                      (let ((_%$%e189918189933%_
                             (gx#syntax-e _%$%e189915189925%_)))
                        (let ((_%$%hd189919189936%_
                               (##car _%$%e189918189933%_))
                              (_%$%tl189920189938%_
                               (##cdr _%$%e189918189933%_)))
                          (if (gx#stx-pair? _%$%tl189920189938%_)
                              (let ((_%$%e189921189941%_
                                     (gx#syntax-e _%$%tl189920189938%_)))
                                (let ((_%$%hd189922189944%_
                                       (##car _%$%e189921189941%_))
                                      (_%$%tl189923189946%_
                                       (##cdr _%$%e189921189941%_)))
                                  (let ((_%expr189949%_ _%$%hd189922189944%_))
                                    (if (gx#stx-null? _%$%tl189923189946%_)
                                        (let ((_g191872_
                                               (gx#core-expand-expression+1
                                                _%expr189949%_)))
                                          (begin
                                            (let ((_g191873_
                                                   (if (##values? _g191872_)
                                                       (##values-length
                                                        _g191872_)
                                                       1)))
                                              (if (not (##fx= _g191873_ 2))
                                                  (error "Context expects 2 values"
                                                         _g191873_)))
                                            (let ((_%_189951%_
                                                   (##values-ref _g191872_ 0))
                                                  (_%e189952%_
                                                   (##values-ref _g191872_ 1)))
                                              _%e189952%_)))
                                        (_%$%E189917189929%_)))))
                              (_%$%E189917189929%_))))
                      (_%$%E189917189929%_)))))
          (_%$%E189916189954%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind189859%_ _%e189860%_ _%rebind?189861%_)
        (let* ((_%$%e189862189872%_ _%bind189859%_)
               (_%$%E189864189876%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189862189872%_)))
               (_%$%E189863189898%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189862189872%_)
                      (let ((_%$%e189865189880%_
                             (gx#syntax-e _%$%e189862189872%_)))
                        (let ((_%$%hd189866189883%_
                               (##car _%$%e189865189880%_))
                              (_%$%tl189867189885%_
                               (##cdr _%$%e189865189880%_)))
                          (let ((_%id189888%_ _%$%hd189866189883%_))
                            (if (gx#stx-pair? _%$%tl189867189885%_)
                                (let ((_%$%e189868189890%_
                                       (gx#syntax-e _%$%tl189867189885%_)))
                                  (let ((_%$%hd189869189893%_
                                         (##car _%$%e189868189890%_))
                                        (_%$%tl189870189895%_
                                         (##cdr _%$%e189868189890%_)))
                                    (if (gx#stx-null? _%$%tl189870189895%_)
                                        (gx#core-bind-syntax!__1
                                         _%id189888%_
                                         _%e189860%_
                                         _%rebind?189861%_)
                                        (_%$%E189864189876%_))))
                                (_%$%E189864189876%_)))))
                      (_%$%E189864189876%_)))))
          (_%$%E189863189898%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind189905%_ _%e189906%_)
        (let ((_%rebind?189908%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind189905%_
           _%e189906%_
           _%rebind?189908%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g191874_
        (let ((_g191875_ (##length _g191874_)))
          (cond ((##fx= _g191875_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g191874_))
                ((##fx= _g191875_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g191874_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g191874_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx189817%_)
        (let* ((_%$%e189818189828%_ _%stx189817%_)
               (_%$%E189820189832%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189818189828%_)))
               (_%$%E189819189854%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189818189828%_)
                      (let ((_%$%e189821189836%_
                             (gx#syntax-e _%$%e189818189828%_)))
                        (let ((_%$%hd189822189839%_
                               (##car _%$%e189821189836%_))
                              (_%$%tl189823189841%_
                               (##cdr _%$%e189821189836%_)))
                          (if (gx#stx-pair? _%$%tl189823189841%_)
                              (let ((_%$%e189824189844%_
                                     (gx#syntax-e _%$%tl189823189841%_)))
                                (let ((_%$%hd189825189847%_
                                       (##car _%$%e189824189844%_))
                                      (_%$%tl189826189849%_
                                       (##cdr _%$%e189824189844%_)))
                                  (let ((_%expr189852%_ _%$%hd189825189847%_))
                                    (if (gx#stx-null? _%$%tl189826189849%_)
                                        (gx#core-expand-expression
                                         _%expr189852%_)
                                        (_%$%E189820189832%_)))))
                              (_%$%E189820189832%_))))
                      (_%$%E189820189832%_)))))
          (_%$%E189819189854%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx189776%_)
        (let* ((_%$%e189777189787%_ _%stx189776%_)
               (_%$%E189779189791%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189777189787%_)))
               (_%$%E189778189813%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189777189787%_)
                      (let ((_%$%e189780189795%_
                             (gx#syntax-e _%$%e189777189787%_)))
                        (let ((_%$%hd189781189798%_
                               (##car _%$%e189780189795%_))
                              (_%$%tl189782189800%_
                               (##cdr _%$%e189780189795%_)))
                          (if (gx#stx-pair? _%$%tl189782189800%_)
                              (let ((_%$%e189783189803%_
                                     (gx#syntax-e _%$%tl189782189800%_)))
                                (let ((_%$%hd189784189806%_
                                       (##car _%$%e189783189803%_))
                                      (_%$%tl189785189808%_
                                       (##cdr _%$%e189783189803%_)))
                                  (let ((_%e189811%_ _%$%hd189784189806%_))
                                    (if (gx#stx-null? _%$%tl189785189808%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e189811%_)
                                                     '()))
                                         (gx#stx-source _%stx189776%_))
                                        (_%$%E189779189791%_)))))
                              (_%$%E189779189791%_))))
                      (_%$%E189779189791%_)))))
          (_%$%E189778189813%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx189735%_)
        (let* ((_%$%e189736189746%_ _%stx189735%_)
               (_%$%E189738189750%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189736189746%_)))
               (_%$%E189737189772%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189736189746%_)
                      (let ((_%$%e189739189754%_
                             (gx#syntax-e _%$%e189736189746%_)))
                        (let ((_%$%hd189740189757%_
                               (##car _%$%e189739189754%_))
                              (_%$%tl189741189759%_
                               (##cdr _%$%e189739189754%_)))
                          (if (gx#stx-pair? _%$%tl189741189759%_)
                              (let ((_%$%e189742189762%_
                                     (gx#syntax-e _%$%tl189741189759%_)))
                                (let ((_%$%hd189743189765%_
                                       (##car _%$%e189742189762%_))
                                      (_%$%tl189744189767%_
                                       (##cdr _%$%e189742189762%_)))
                                  (let ((_%e189770%_ _%$%hd189743189765%_))
                                    (if (gx#stx-null? _%$%tl189744189767%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e189770%_)
                                                     '()))
                                         (gx#stx-source _%stx189735%_))
                                        (_%$%E189738189750%_)))))
                              (_%$%E189738189750%_))))
                      (_%$%E189738189750%_)))))
          (_%$%E189737189772%_))))
    (define gx#core-expand-call%
      (lambda (_%stx189629%_)
        (letrec ((_%expand-runtime-call189631%_
                  (lambda (_%rator-expr189732%_ _%args189733%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr189732%_
                      (gx#stx-map1 gx#core-expand-expression _%args189733%_))
                     (gx#stx-source _%stx189629%_)))))
          (let* ((_%$%e189632189642%_ _%stx189629%_)
                 (_%$%E189634189646%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e189632189642%_)))
                 (_%$%E189633189728%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e189632189642%_)
                        (let ((_%$%e189635189650%_
                               (gx#syntax-e _%$%e189632189642%_)))
                          (let ((_%$%hd189636189653%_
                                 (##car _%$%e189635189650%_))
                                (_%$%tl189637189655%_
                                 (##cdr _%$%e189635189650%_)))
                            (if (gx#stx-pair? _%$%tl189637189655%_)
                                (let ((_%$%e189638189658%_
                                       (gx#syntax-e _%$%tl189637189655%_)))
                                  (let ((_%$%hd189639189661%_
                                         (##car _%$%e189638189658%_))
                                        (_%$%tl189640189663%_
                                         (##cdr _%$%e189638189658%_)))
                                    (let* ((_%rator189666%_
                                            _%$%hd189639189661%_)
                                           (_%args189668%_
                                            _%$%tl189640189663%_))
                                      (if (gx#stx-list? _%args189668%_)
                                          (let* ((_%rator-expr189670%_
                                                  (gx#core-expand-expression
                                                   _%rator189666%_))
                                                 (_%$%e189671189681%_
                                                  _%rator-expr189670%_)
                                                 (_%$%E189673189685%_
                                                  (lambda ()
                                                    (_%expand-runtime-call189631%_
                                                     _%rator-expr189670%_
                                                     _%args189668%_)))
                                                 (_%$%E189672189724%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%$%e189671189681%_)
                                                        (let ((_%$%e189674189689%_
                                                               (gx#syntax-e
                                                                _%$%e189671189681%_)))
                                                          (let ((_%$%hd189675189692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e189674189689%_))
                        (_%$%tl189676189694%_ (##cdr _%$%e189674189689%_)))
                    (if (and (gx#identifier? _%$%hd189675189692%_)
                             (gx#core-identifier=?
                              _%$%hd189675189692%_
                              '%#ref))
                        (if (gx#stx-pair? _%$%tl189676189694%_)
                            (let ((_%$%e189677189697%_
                                   (gx#syntax-e _%$%tl189676189694%_)))
                              (let ((_%$%hd189678189700%_
                                     (##car _%$%e189677189697%_))
                                    (_%$%tl189679189702%_
                                     (##cdr _%$%e189677189697%_)))
                                (let ((_%id189705%_ _%$%hd189678189700%_))
                                  (if (gx#stx-null? _%$%tl189679189702%_)
                                      (let ((_%$e189707%_
                                             (gx#resolve-identifier__0
                                              _%id189705%_)))
                                        (if _%$e189707%_
                                            (let _%again189712%_ ((_%bind189714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e189707%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_%$e189716%_
                                                     (if (##structure-instance-of?
                                                          _%bind189714%_
                                                          'gx#runtime-binding::t)
                                                         (##unchecked-structure-ref
                                                          _%bind189714%_
                                                          '6
                                                          '#f
                                                          '#f)
                                                         '#f)))
                                                (if _%$e189716%_
                                                    (gx#core-expand-expression
                                                     (gx#stx-wrap-source
                                                      (cons _%$e189716%_
                                                            _%args189668%_)
                                                      (gx#stx-source
                                                       _%stx189629%_)))
                                                    (if (##structure-direct-instance-of?
                                                         _%bind189714%_
                                                         'gx#import-binding::t)
                                                        (_%again189712%_
                                                         (##unchecked-structure-ref
                                                          _%bind189714%_
                                                          '5
                                                          '#f
                                                          '#f))
                                                        (_%expand-runtime-call189631%_
                                                         _%rator-expr189670%_
                                                         _%args189668%_)))))
                                            (_%expand-runtime-call189631%_
                                             _%rator-expr189670%_
                                             _%args189668%_)))
                                      (_%$%E189673189685%_)))))
                            (_%$%E189673189685%_))
                        (_%$%E189673189685%_))))
                (_%$%E189673189685%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E189672189724%_))
                                          (_%$%E189634189646%_)))))
                                (_%$%E189634189646%_))))
                        (_%$%E189634189646%_)))))
            (_%$%E189633189728%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx189562%_)
        (let* ((_%$%e189563189579%_ _%stx189562%_)
               (_%$%E189565189583%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189563189579%_)))
               (_%$%E189564189625%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189563189579%_)
                      (let ((_%$%e189566189587%_
                             (gx#syntax-e _%$%e189563189579%_)))
                        (let ((_%$%hd189567189590%_
                               (##car _%$%e189566189587%_))
                              (_%$%tl189568189592%_
                               (##cdr _%$%e189566189587%_)))
                          (if (gx#stx-pair? _%$%tl189568189592%_)
                              (let ((_%$%e189569189595%_
                                     (gx#syntax-e _%$%tl189568189592%_)))
                                (let ((_%$%hd189570189598%_
                                       (##car _%$%e189569189595%_))
                                      (_%$%tl189571189600%_
                                       (##cdr _%$%e189569189595%_)))
                                  (let ((_%test189603%_ _%$%hd189570189598%_))
                                    (if (gx#stx-pair? _%$%tl189571189600%_)
                                        (let ((_%$%e189572189605%_
                                               (gx#syntax-e
                                                _%$%tl189571189600%_)))
                                          (let ((_%$%hd189573189608%_
                                                 (##car _%$%e189572189605%_))
                                                (_%$%tl189574189610%_
                                                 (##cdr _%$%e189572189605%_)))
                                            (let ((_%K189613%_
                                                   _%$%hd189573189608%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl189574189610%_)
                                                  (let ((_%$%e189575189615%_
                                                         (gx#syntax-e
                                                          _%$%tl189574189610%_)))
                                                    (let ((_%$%hd189576189618%_
                                                           (##car _%$%e189575189615%_))
                                                          (_%$%tl189577189620%_
                                                           (##cdr _%$%e189575189615%_)))
                                                      (let ((_%E189623%_
                                                             _%$%hd189576189618%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl189577189620%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test189603%_)
                                 (cons (gx#core-expand-expression _%K189613%_)
                                       (cons (gx#core-expand-expression
                                              _%E189623%_)
                                             '()))))
                     (gx#stx-source _%stx189562%_))
                    (_%$%E189565189583%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E189565189583%_)))))
                                        (_%$%E189565189583%_)))))
                              (_%$%E189565189583%_))))
                      (_%$%E189565189583%_)))))
          (_%$%E189564189625%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx189521%_)
        (let* ((_%$%e189522189532%_ _%stx189521%_)
               (_%$%E189524189536%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189522189532%_)))
               (_%$%E189523189558%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189522189532%_)
                      (let ((_%$%e189525189540%_
                             (gx#syntax-e _%$%e189522189532%_)))
                        (let ((_%$%hd189526189543%_
                               (##car _%$%e189525189540%_))
                              (_%$%tl189527189545%_
                               (##cdr _%$%e189525189540%_)))
                          (if (gx#stx-pair? _%$%tl189527189545%_)
                              (let ((_%$%e189528189548%_
                                     (gx#syntax-e _%$%tl189527189545%_)))
                                (let ((_%$%hd189529189551%_
                                       (##car _%$%e189528189548%_))
                                      (_%$%tl189530189553%_
                                       (##cdr _%$%e189528189548%_)))
                                  (let ((_%id189556%_ _%$%hd189529189551%_))
                                    (if (gx#stx-null? _%$%tl189530189553%_)
                                        (if (gx#identifier? _%id189556%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id189556%_
                                                          _%stx189521%_)
                                                         '()))
                                             (gx#stx-source _%stx189521%_))
                                            (_%$%E189524189536%_))
                                        (_%$%E189524189536%_)))))
                              (_%$%E189524189536%_))))
                      (_%$%E189524189536%_)))))
          (_%$%E189523189558%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx189467%_)
        (let* ((_%$%e189468189481%_ _%stx189467%_)
               (_%$%E189470189485%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189468189481%_)))
               (_%$%E189469189517%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189468189481%_)
                      (let ((_%$%e189471189489%_
                             (gx#syntax-e _%$%e189468189481%_)))
                        (let ((_%$%hd189472189492%_
                               (##car _%$%e189471189489%_))
                              (_%$%tl189473189494%_
                               (##cdr _%$%e189471189489%_)))
                          (if (gx#stx-pair? _%$%tl189473189494%_)
                              (let ((_%$%e189474189497%_
                                     (gx#syntax-e _%$%tl189473189494%_)))
                                (let ((_%$%hd189475189500%_
                                       (##car _%$%e189474189497%_))
                                      (_%$%tl189476189502%_
                                       (##cdr _%$%e189474189497%_)))
                                  (let ((_%id189505%_ _%$%hd189475189500%_))
                                    (if (gx#stx-pair? _%$%tl189476189502%_)
                                        (let ((_%$%e189477189507%_
                                               (gx#syntax-e
                                                _%$%tl189476189502%_)))
                                          (let ((_%$%hd189478189510%_
                                                 (##car _%$%e189477189507%_))
                                                (_%$%tl189479189512%_
                                                 (##cdr _%$%e189477189507%_)))
                                            (let ((_%expr189515%_
                                                   _%$%hd189478189510%_))
                                              (if (gx#stx-null?
                                                   _%$%tl189479189512%_)
                                                  (if (gx#identifier?
                                                       _%id189505%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id189505%_
                            _%stx189467%_)
                           (cons (gx#core-expand-expression _%expr189515%_)
                                 '())))
               (gx#stx-source _%stx189467%_))
              (_%$%E189470189485%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E189470189485%_)))))
                                        (_%$%E189470189485%_)))))
                              (_%$%E189470189485%_))))
                      (_%$%E189470189485%_)))))
          (_%$%E189469189517%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx189312%_)
        (letrec ((_%generate189314%_
                  (lambda (_%body189344%_)
                    (let _%lp189346%_ ((_%rest189348%_ _%body189344%_)
                                       (_%ns189349%_
                                        (gx#core-context-namespace__0))
                                       (_%r189350%_ '()))
                      (let* ((_%$%e189351189366%_ _%rest189348%_)
                             (_%$%E189364189370%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%$%e189351189366%_)))
                             (_%$%E189360189374%_
                              (lambda ()
                                (if (gx#stx-null? _%$%e189351189366%_)
                                    (reverse _%r189350%_)
                                    (_%$%E189364189370%_))))
                             (_%$%E189353189431%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e189351189366%_)
                                    (let ((_%$%e189361189378%_
                                           (gx#syntax-e _%$%e189351189366%_)))
                                      (let ((_%$%hd189362189381%_
                                             (##car _%$%e189361189378%_))
                                            (_%$%tl189363189383%_
                                             (##cdr _%$%e189361189378%_)))
                                        (let* ((_%hd189386%_
                                                _%$%hd189362189381%_)
                                               (_%rest189388%_
                                                _%$%tl189363189383%_))
                                          (if (gx#identifier? _%hd189386%_)
                                              (_%lp189346%_
                                               _%rest189388%_
                                               _%ns189349%_
                                               (cons (cons _%hd189386%_
                                                           (cons (if _%ns189349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd189386%_
                              _%ns189349%_
                              '"#"
                              _%hd189386%_)
                             _%hd189386%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r189350%_))
                                              (let* ((_%$%e189389189399%_
                                                      _%hd189386%_)
                                                     (_%$%E189391189403%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%$%e189389189399%_)))
                                                     (_%$%E189390189427%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%$%e189389189399%_)
                                                            (let ((_%$%e189392189407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%e189389189399%_)))
                      (let ((_%$%hd189393189410%_ (##car _%$%e189392189407%_))
                            (_%$%tl189394189412%_ (##cdr _%$%e189392189407%_)))
                        (let ((_%id189415%_ _%$%hd189393189410%_))
                          (if (gx#stx-pair? _%$%tl189394189412%_)
                              (let ((_%$%e189395189417%_
                                     (gx#syntax-e _%$%tl189394189412%_)))
                                (let ((_%$%hd189396189420%_
                                       (##car _%$%e189395189417%_))
                                      (_%$%tl189397189422%_
                                       (##cdr _%$%e189395189417%_)))
                                  (let ((_%eid189425%_ _%$%hd189396189420%_))
                                    (if (gx#stx-null? _%$%tl189397189422%_)
                                        (if (and (gx#identifier? _%id189415%_)
                                                 (gx#identifier?
                                                  _%eid189425%_))
                                            (_%lp189346%_
                                             _%rest189388%_
                                             _%ns189349%_
                                             (cons (cons _%id189415%_
                                                         (cons _%eid189425%_
                                                               '()))
                                                   _%r189350%_))
                                            (_%$%E189391189403%_))
                                        (_%$%E189391189403%_)))))
                              (_%$%E189391189403%_)))))
                    (_%$%E189391189403%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E189390189427%_))))))
                                    (_%$%E189360189374%_))))
                             (_%$%E189352189463%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e189351189366%_)
                                    (let ((_%$%e189354189435%_
                                           (gx#syntax-e _%$%e189351189366%_)))
                                      (let ((_%$%hd189355189438%_
                                             (##car _%$%e189354189435%_))
                                            (_%$%tl189356189440%_
                                             (##cdr _%$%e189354189435%_)))
                                        (if (eq? (gx#stx-e
                                                  _%$%hd189355189438%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%$%tl189356189440%_)
                                                (let ((_%$%e189357189443%_
                                                       (gx#syntax-e
                                                        _%$%tl189356189440%_)))
                                                  (let ((_%$%hd189358189446%_
                                                         (##car _%$%e189357189443%_))
                                                        (_%$%tl189359189448%_
                                                         (##cdr _%$%e189357189443%_)))
                                                    (let* ((_%ns189451%_
                                                            _%$%hd189358189446%_)
                                                           (_%rest189453%_
                                                            _%$%tl189359189448%_)
                                                           (_%ns189461%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns189451%_)
                        (symbol->string (gx#stx-e _%ns189451%_))
                        (if (or (gx#stx-string? _%ns189451%_)
                                (gx#stx-false? _%ns189451%_))
                            (gx#stx-e _%ns189451%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx189312%_
                             _%ns189451%_)))))
              (_%lp189346%_ _%rest189453%_ _%ns189461%_ _%r189350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E189353189431%_))
                                            (_%$%E189353189431%_))))
                                    (_%$%E189353189431%_)))))
                        (_%$%E189352189463%_))))))
          (let* ((_%$%e189315189322%_ _%stx189312%_)
                 (_%$%E189317189326%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e189315189322%_)))
                 (_%$%E189316189340%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e189315189322%_)
                        (let ((_%$%e189318189330%_
                               (gx#syntax-e _%$%e189315189322%_)))
                          (let ((_%$%hd189319189333%_
                                 (##car _%$%e189318189330%_))
                                (_%$%tl189320189335%_
                                 (##cdr _%$%e189318189330%_)))
                            (let ((_%body189338%_ _%$%tl189320189335%_))
                              (if (gx#stx-list? _%body189338%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate189314%_ _%body189338%_))
                                  (_%$%E189317189326%_)))))
                        (_%$%E189317189326%_)))))
            (_%$%E189316189340%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx189269%_)
        (let* ((_%$%e189270189280%_ _%stx189269%_)
               (_%$%E189272189284%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e189270189280%_)))
               (_%$%E189271189308%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e189270189280%_)
                      (let ((_%$%e189273189288%_
                             (gx#syntax-e _%$%e189270189280%_)))
                        (let ((_%$%hd189274189291%_
                               (##car _%$%e189273189288%_))
                              (_%$%tl189275189293%_
                               (##cdr _%$%e189273189288%_)))
                          (if (gx#stx-pair? _%$%tl189275189293%_)
                              (let ((_%$%e189276189296%_
                                     (gx#syntax-e _%$%tl189275189293%_)))
                                (let ((_%$%hd189277189299%_
                                       (##car _%$%e189276189296%_))
                                      (_%$%tl189278189301%_
                                       (##cdr _%$%e189276189296%_)))
                                  (let* ((_%hd189304%_ _%$%hd189277189299%_)
                                         (_%body189306%_ _%$%tl189278189301%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd189304%_)
                                             (gx#stx-list? _%body189306%_)
                                             (not (gx#stx-null?
                                                   _%body189306%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd189304%_)
                                         _%body189306%_)
                                        (_%$%E189272189284%_)))))
                              (_%$%E189272189284%_))))
                      (_%$%E189272189284%_)))))
          (_%$%E189271189308%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx189205%_)
        (letrec ((_%generate189207%_
                  (lambda (_%clause189237%_)
                    (let* ((_%$%e189238189245%_ _%clause189237%_)
                           (_%$%E189240189249%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx189205%_
                               _%clause189237%_)))
                           (_%$%E189239189265%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189238189245%_)
                                  (let ((_%$%e189241189253%_
                                         (gx#syntax-e _%$%e189238189245%_)))
                                    (let ((_%$%hd189242189256%_
                                           (##car _%$%e189241189253%_))
                                          (_%$%tl189243189258%_
                                           (##cdr _%$%e189241189253%_)))
                                      (let* ((_%hd189261%_
                                              _%$%hd189242189256%_)
                                             (_%body189263%_
                                              _%$%tl189243189258%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd189261%_)
                                                 (gx#stx-list? _%body189263%_)
                                                 (not (gx#stx-null?
                                                       _%body189263%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd189261%_)
                                                   _%body189263%_)
                                             (gx#stx-source _%clause189237%_))
                                            (_%$%E189240189249%_)))))
                                  (_%$%E189240189249%_)))))
                      (_%$%E189239189265%_)))))
          (let* ((_%$%e189208189215%_ _%stx189205%_)
                 (_%$%E189210189219%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e189208189215%_)))
                 (_%$%E189209189233%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e189208189215%_)
                        (let ((_%$%e189211189223%_
                               (gx#syntax-e _%$%e189208189215%_)))
                          (let ((_%$%hd189212189226%_
                                 (##car _%$%e189211189223%_))
                                (_%$%tl189213189228%_
                                 (##cdr _%$%e189211189223%_)))
                            (let ((_%clauses189231%_ _%$%tl189213189228%_))
                              (if (gx#stx-list? _%clauses189231%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate189207%_
                                    _%clauses189231%_))
                                  (_%$%E189210189219%_)))))
                        (_%$%E189210189219%_)))))
            (_%$%E189209189233%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx189106%_ _%form189107%_)
        (letrec ((_%generate189109%_
                  (lambda (_%bind189152%_)
                    (let* ((_%$%e189153189163%_ _%bind189152%_)
                           (_%$%E189155189167%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx189106%_
                               _%bind189152%_)))
                           (_%$%E189154189191%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e189153189163%_)
                                  (let ((_%$%e189156189171%_
                                         (gx#syntax-e _%$%e189153189163%_)))
                                    (let ((_%$%hd189157189174%_
                                           (##car _%$%e189156189171%_))
                                          (_%$%tl189158189176%_
                                           (##cdr _%$%e189156189171%_)))
                                      (let ((_%ids189179%_
                                             _%$%hd189157189174%_))
                                        (if (gx#stx-pair? _%$%tl189158189176%_)
                                            (let ((_%$%e189159189181%_
                                                   (gx#syntax-e
                                                    _%$%tl189158189176%_)))
                                              (let ((_%$%hd189160189184%_
                                                     (##car _%$%e189159189181%_))
                                                    (_%$%tl189161189186%_
                                                     (##cdr _%$%e189159189181%_)))
                                                (let ((_%expr189189%_
                                                       _%$%hd189160189184%_))
                                                  (if (gx#stx-null?
                                                       _%$%tl189161189186%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids189179%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids189179%_)
                        (cons _%expr189189%_ '()))
                  (_%$%E189155189167%_))
              (_%$%E189155189167%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E189155189167%_)))))
                                  (_%$%E189155189167%_)))))
                      (_%$%E189154189191%_)))))
          (let* ((_%$%e189110189120%_ _%stx189106%_)
                 (_%$%E189112189124%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e189110189120%_)))
                 (_%$%E189111189148%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e189110189120%_)
                        (let ((_%$%e189113189128%_
                               (gx#syntax-e _%$%e189110189120%_)))
                          (let ((_%$%hd189114189131%_
                                 (##car _%$%e189113189128%_))
                                (_%$%tl189115189133%_
                                 (##cdr _%$%e189113189128%_)))
                            (if (gx#stx-pair? _%$%tl189115189133%_)
                                (let ((_%$%e189116189136%_
                                       (gx#syntax-e _%$%tl189115189133%_)))
                                  (let ((_%$%hd189117189139%_
                                         (##car _%$%e189116189136%_))
                                        (_%$%tl189118189141%_
                                         (##cdr _%$%e189116189136%_)))
                                    (let* ((_%hd189144%_ _%$%hd189117189139%_)
                                           (_%body189146%_
                                            _%$%tl189118189141%_))
                                      (if (and (gx#stx-list? _%hd189144%_)
                                               (gx#stx-list? _%body189146%_)
                                               (not (gx#stx-null?
                                                     _%body189146%_)))
                                          (gx#core-cons*
                                           _%form189107%_
                                           (gx#stx-map1
                                            _%generate189109%_
                                            _%hd189144%_)
                                           _%body189146%_)
                                          (_%$%E189112189124%_)))))
                                (_%$%E189112189124%_))))
                        (_%$%E189112189124%_)))))
            (_%$%E189111189148%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx189198%_)
        (let ((_%form189200%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx189198%_ _%form189200%_))))
    (define gx#macro-expand-let-values
      (lambda _g191876_
        (let ((_g191877_ (##length _g191876_)))
          (cond ((##fx= _g191877_ 1)
                 (apply gx#macro-expand-let-values__0 _g191876_))
                ((##fx= _g191877_ 2)
                 (apply gx#macro-expand-let-values__% _g191876_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g191876_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx189103%_)
        (gx#macro-expand-let-values__% _%stx189103%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx189101%_)
        (gx#macro-expand-let-values__% _%stx189101%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx188992%_)
        (let* ((_%$%e188993189019%_ _%stx188992%_)
               (_%$%E189005189023%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e188993189019%_)))
               (_%$%E188995189065%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188993189019%_)
                      (let ((_%$%e189006189027%_
                             (gx#syntax-e _%$%e188993189019%_)))
                        (let ((_%$%hd189007189030%_
                               (##car _%$%e189006189027%_))
                              (_%$%tl189008189032%_
                               (##cdr _%$%e189006189027%_)))
                          (if (gx#stx-pair? _%$%tl189008189032%_)
                              (let ((_%$%e189009189035%_
                                     (gx#syntax-e _%$%tl189008189032%_)))
                                (let ((_%$%hd189010189038%_
                                       (##car _%$%e189009189035%_))
                                      (_%$%tl189011189040%_
                                       (##cdr _%$%e189009189035%_)))
                                  (let ((_%test189043%_ _%$%hd189010189038%_))
                                    (if (gx#stx-pair? _%$%tl189011189040%_)
                                        (let ((_%$%e189012189045%_
                                               (gx#syntax-e
                                                _%$%tl189011189040%_)))
                                          (let ((_%$%hd189013189048%_
                                                 (##car _%$%e189012189045%_))
                                                (_%$%tl189014189050%_
                                                 (##cdr _%$%e189012189045%_)))
                                            (let ((_%K189053%_
                                                   _%$%hd189013189048%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl189014189050%_)
                                                  (let ((_%$%e189015189055%_
                                                         (gx#syntax-e
                                                          _%$%tl189014189050%_)))
                                                    (let ((_%$%hd189016189058%_
                                                           (##car _%$%e189015189055%_))
                                                          (_%$%tl189017189060%_
                                                           (##cdr _%$%e189015189055%_)))
                                                      (let ((_%E189063%_
                                                             _%$%hd189016189058%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl189017189060%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test189043%_
                                                             _%K189053%_
                                                             _%E189063%_)
                                                            (_%$%E189005189023%_)))))
                                                  (_%$%E189005189023%_)))))
                                        (_%$%E189005189023%_)))))
                              (_%$%E189005189023%_))))
                      (_%$%E189005189023%_))))
               (_%$%E188994189097%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188993189019%_)
                      (let ((_%$%e188996189069%_
                             (gx#syntax-e _%$%e188993189019%_)))
                        (let ((_%$%hd188997189072%_
                               (##car _%$%e188996189069%_))
                              (_%$%tl188998189074%_
                               (##cdr _%$%e188996189069%_)))
                          (if (gx#stx-pair? _%$%tl188998189074%_)
                              (let ((_%$%e188999189077%_
                                     (gx#syntax-e _%$%tl188998189074%_)))
                                (let ((_%$%hd189000189080%_
                                       (##car _%$%e188999189077%_))
                                      (_%$%tl189001189082%_
                                       (##cdr _%$%e188999189077%_)))
                                  (let ((_%test189085%_ _%$%hd189000189080%_))
                                    (if (gx#stx-pair? _%$%tl189001189082%_)
                                        (let ((_%$%e189002189087%_
                                               (gx#syntax-e
                                                _%$%tl189001189082%_)))
                                          (let ((_%$%hd189003189090%_
                                                 (##car _%$%e189002189087%_))
                                                (_%$%tl189004189092%_
                                                 (##cdr _%$%e189002189087%_)))
                                            (let ((_%K189095%_
                                                   _%$%hd189003189090%_))
                                              (if (gx#stx-null?
                                                   _%$%tl189004189092%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test189085%_
                                                   _%K189095%_
                                                   '#!void)
                                                  (_%$%E188995189065%_)))))
                                        (_%$%E188995189065%_)))))
                              (_%$%E188995189065%_))))
                      (_%$%E188995189065%_)))))
          (_%$%E188994189097%_))))
    (define gx#free-identifier=?
      (lambda (_%xid188977%_ _%yid188978%_)
        (let ((_%xe188980%_ (gx#resolve-identifier__0 _%xid188977%_))
              (_%ye188981%_ (gx#resolve-identifier__0 _%yid188978%_)))
          (if (and _%xe188980%_ _%ye188981%_)
              (let ((_%$e188984%_ (eq? _%xe188980%_ _%ye188981%_)))
                (if _%$e188984%_
                    _%$e188984%_
                    (if (##structure-instance-of? _%xe188980%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye188981%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe188980%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye188981%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe188980%_ _%ye188981%_)
                  '#f
                  (gx#stx-eq? _%xid188977%_ _%yid188978%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid188958%_ _%yid188959%_)
        (letrec ((_%context188961%_
                  (lambda (_%e188975%_)
                    (if (##structure-direct-instance-of?
                         _%e188975%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e188975%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks188962%_
                  (lambda (_%e188970%_)
                    (if (symbol? _%e188970%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e188970%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e188970%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e188970%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap188963%_
                  (lambda (_%e188968%_)
                    (if (symbol? _%e188968%_)
                        _%e188968%_
                        (gx#syntax-local-unwrap _%e188968%_)))))
          (let ((_%x188965%_ (_%unwrap188963%_ _%xid188958%_))
                (_%y188966%_ (_%unwrap188963%_ _%yid188959%_)))
            (if (gx#stx-eq? _%x188965%_ _%y188966%_)
                (if (eq? (_%context188961%_ _%x188965%_)
                         (_%context188961%_ _%y188966%_))
                    (equal? (_%marks188962%_ _%x188965%_)
                            (_%marks188962%_ _%y188966%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx188956%_)
        (if (gx#identifier? _%stx188956%_)
            (gx#core-identifier=? _%stx188956%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx188954%_)
        (if (gx#identifier? _%stx188954%_)
            (gx#core-identifier=? _%stx188954%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx188897%_ _%where188898%_)
        (let _%lp188900%_ ((_%rest188902%_ (gx#syntax->list _%stx188897%_)))
          (let* ((_%$%rest188903188911%_ _%rest188902%_)
                 (_%$%else188905188919%_ (lambda () '#t))
                 (_%$%K188907188932%_
                  (lambda (_%rest188922%_ _%hd188923%_)
                    (if (gx#identifier? _%hd188923%_)
                        (if (__find (lambda (_%$%g188925188927%_)
                                      (gx#bound-identifier=?
                                       _%$%g188925188927%_
                                       _%hd188923%_))
                                    _%rest188922%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where188898%_
                             _%hd188923%_)
                            (_%lp188900%_ _%rest188922%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where188898%_
                         _%hd188923%_)))))
            (if (pair? _%$%rest188903188911%_)
                (let ((_%$%hd188908188935%_ (##car _%$%rest188903188911%_))
                      (_%$%tl188909188937%_ (##cdr _%$%rest188903188911%_)))
                  (let* ((_%hd188940%_ _%$%hd188908188935%_)
                         (_%rest188942%_ _%$%tl188909188937%_))
                    (_%$%K188907188932%_ _%rest188942%_ _%hd188940%_)))
                (_%$%else188905188919%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx188947%_)
        (let ((_%where188949%_ _%stx188947%_))
          (gx#check-duplicate-identifiers__% _%stx188947%_ _%where188949%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g191878_
        (let ((_g191879_ (##length _g191878_)))
          (cond ((##fx= _g191879_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g191878_))
                ((##fx= _g191879_ 2)
                 (apply gx#check-duplicate-identifiers__% _g191878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g191878_))))))
    (define gx#core-bind-values?
      (lambda (_%stx188889%_)
        (gx#stx-andmap
         (lambda (_%x188891%_)
           (let ((_%$e188893%_ (gx#identifier? _%x188891%_)))
             (if _%$e188893%_ _%$e188893%_ (gx#stx-false? _%x188891%_))))
         _%stx188889%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx188853%_ _%rebind?188854%_ _%phi188855%_ _%ctx188856%_)
        (gx#stx-for-each1
         (lambda (_%id188858%_)
           (if (gx#identifier? _%id188858%_)
               (gx#core-bind-runtime!__%
                _%id188858%_
                _%rebind?188854%_
                _%phi188855%_
                _%ctx188856%_)
               '#!void))
         _%stx188853%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx188863%_)
        (let* ((_%rebind?188865%_ '#f)
               (_%phi188867%_ (gx#current-expander-phi))
               (_%ctx188869%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx188863%_
           _%rebind?188865%_
           _%phi188867%_
           _%ctx188869%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx188871%_ _%rebind?188872%_)
        (let* ((_%phi188874%_ (gx#current-expander-phi))
               (_%ctx188876%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx188871%_
           _%rebind?188872%_
           _%phi188874%_
           _%ctx188876%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx188878%_ _%rebind?188879%_ _%phi188880%_)
        (let ((_%ctx188882%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx188878%_
           _%rebind?188879%_
           _%phi188880%_
           _%ctx188882%_))))
    (define gx#core-bind-values!
      (lambda _g191880_
        (let ((_g191881_ (##length _g191880_)))
          (cond ((##fx= _g191881_ 1) (apply gx#core-bind-values!__0 _g191880_))
                ((##fx= _g191881_ 2) (apply gx#core-bind-values!__1 _g191880_))
                ((##fx= _g191881_ 3) (apply gx#core-bind-values!__2 _g191880_))
                ((##fx= _g191881_ 4) (apply gx#core-bind-values!__% _g191880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g191880_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx188848%_)
        (gx#stx-map1
         (lambda (_%x188850%_)
           (if (gx#identifier? _%x188850%_)
               (gx#core-quote-syntax__0 _%x188850%_)
               '#f))
         _%stx188848%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx188841%_)
        (if (gx#identifier? _%stx188841%_)
            (let* ((_%bind188843%_ (gx#resolve-identifier__0 _%stx188841%_))
                   (_%$e188845%_ (not _%bind188843%_)))
              (if _%$e188845%_
                  _%$e188845%_
                  (##structure-instance-of?
                   _%bind188843%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id188830%_ _%form188831%_)
        (let ((_%bind188833%_ (gx#resolve-identifier__0 _%id188830%_)))
          (if (##structure-instance-of? _%bind188833%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id188830%_)
              (if (not _%bind188833%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id188830%_)))
                      (gx#core-quote-syntax__0 _%id188830%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form188831%_
                       _%id188830%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form188831%_
                   _%id188830%_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id188785%_ _%rebind?188786%_ _%phi188787%_ _%ctx188788%_)
        (let* ((_%key188790%_ (gx#core-identifier-key _%id188785%_))
               (_%eid188792%_
                (gx#make-binding-id__%
                 _%key188790%_
                 '#f
                 _%phi188787%_
                 _%ctx188788%_))
               (_%bind188798%_
                (if (##structure-instance-of?
                     _%ctx188788%_
                     'gx#module-context::t)
                    (let ((__obj191857
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
                       __obj191857
                       _%eid188792%_
                       _%key188790%_
                       _%phi188787%_
                       _%ctx188788%_)
                      __obj191857)
                    (if (##structure-instance-of?
                         _%ctx188788%_
                         'gx#top-context::t)
                        (let ((__obj191856
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj191856
                           _%eid188792%_
                           _%key188790%_
                           _%phi188787%_)
                          __obj191856)
                        (if (##structure-instance-of?
                             _%ctx188788%_
                             'gx#local-context::t)
                            (let ((__obj191855
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj191855
                               _%eid188792%_
                               _%key188790%_
                               _%phi188787%_)
                              __obj191855)
                            (let ((__obj191854
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj191854
                               _%eid188792%_
                               _%key188790%_
                               _%phi188787%_)
                              __obj191854))))))
          (gx#bind-identifier!__%
           _%id188785%_
           _%bind188798%_
           _%rebind?188786%_
           _%phi188787%_
           _%ctx188788%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id188804%_)
        (let* ((_%rebind?188806%_ '#f)
               (_%phi188808%_ (gx#current-expander-phi))
               (_%ctx188810%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id188804%_
           _%rebind?188806%_
           _%phi188808%_
           _%ctx188810%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id188812%_ _%rebind?188813%_)
        (let* ((_%phi188815%_ (gx#current-expander-phi))
               (_%ctx188817%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id188812%_
           _%rebind?188813%_
           _%phi188815%_
           _%ctx188817%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id188819%_ _%rebind?188820%_ _%phi188821%_)
        (let ((_%ctx188823%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id188819%_
           _%rebind?188820%_
           _%phi188821%_
           _%ctx188823%_))))
    (define gx#core-bind-runtime!
      (lambda _g191882_
        (let ((_g191883_ (##length _g191882_)))
          (cond ((##fx= _g191883_ 1)
                 (apply gx#core-bind-runtime!__0 _g191882_))
                ((##fx= _g191883_ 2)
                 (apply gx#core-bind-runtime!__1 _g191882_))
                ((##fx= _g191883_ 3)
                 (apply gx#core-bind-runtime!__2 _g191882_))
                ((##fx= _g191883_ 4)
                 (apply gx#core-bind-runtime!__% _g191882_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g191882_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id188737%_
               _%eid188738%_
               _%rebind?188739%_
               _%phi188740%_
               _%ctx188741%_)
        (let* ((_%key188743%_ (gx#core-identifier-key _%id188737%_))
               (_%bind188748%_
                (if (##structure-instance-of?
                     _%ctx188741%_
                     'gx#module-context::t)
                    (let ((__obj191860
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
                       __obj191860
                       _%eid188738%_
                       _%key188743%_
                       _%phi188740%_
                       _%ctx188741%_)
                      __obj191860)
                    (if (##structure-instance-of?
                         _%ctx188741%_
                         'gx#top-context::t)
                        (let ((__obj191859
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj191859
                           _%eid188738%_
                           _%key188743%_
                           _%phi188740%_)
                          __obj191859)
                        (let ((__obj191858
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj191858
                           _%eid188738%_
                           _%key188743%_
                           _%phi188740%_)
                          __obj191858)))))
          (gx#bind-identifier!__%
           _%id188737%_
           _%bind188748%_
           _%rebind?188739%_
           _%phi188740%_
           _%ctx188741%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id188754%_ _%eid188755%_)
        (let* ((_%rebind?188757%_ '#f)
               (_%phi188759%_ (gx#current-expander-phi))
               (_%ctx188761%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id188754%_
           _%eid188755%_
           _%rebind?188757%_
           _%phi188759%_
           _%ctx188761%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id188763%_ _%eid188764%_ _%rebind?188765%_)
        (let* ((_%phi188767%_ (gx#current-expander-phi))
               (_%ctx188769%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id188763%_
           _%eid188764%_
           _%rebind?188765%_
           _%phi188767%_
           _%ctx188769%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id188771%_ _%eid188772%_ _%rebind?188773%_ _%phi188774%_)
        (let ((_%ctx188776%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id188771%_
           _%eid188772%_
           _%rebind?188773%_
           _%phi188774%_
           _%ctx188776%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g191884_
        (let ((_g191885_ (##length _g191884_)))
          (cond ((##fx= _g191885_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g191884_))
                ((##fx= _g191885_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g191884_))
                ((##fx= _g191885_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g191884_))
                ((##fx= _g191885_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g191884_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g191884_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id188697%_
               _%eid188698%_
               _%rebind?188699%_
               _%phi188700%_
               _%ctx188701%_)
        (gx#bind-identifier!__%
         _%id188697%_
         (let ((__obj191861
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj191861
            _%eid188698%_
            (gx#core-identifier-key _%id188697%_)
            _%phi188700%_)
           __obj191861)
         _%rebind?188699%_
         _%phi188700%_
         _%ctx188701%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id188706%_ _%eid188707%_)
        (let* ((_%rebind?188709%_ '#f)
               (_%phi188711%_ (gx#current-expander-phi))
               (_%ctx188713%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id188706%_
           _%eid188707%_
           _%rebind?188709%_
           _%phi188711%_
           _%ctx188713%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id188715%_ _%eid188716%_ _%rebind?188717%_)
        (let* ((_%phi188719%_ (gx#current-expander-phi))
               (_%ctx188721%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id188715%_
           _%eid188716%_
           _%rebind?188717%_
           _%phi188719%_
           _%ctx188721%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id188723%_ _%eid188724%_ _%rebind?188725%_ _%phi188726%_)
        (let ((_%ctx188728%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id188723%_
           _%eid188724%_
           _%rebind?188725%_
           _%phi188726%_
           _%ctx188728%_))))
    (define gx#core-bind-extern!
      (lambda _g191886_
        (let ((_g191887_ (##length _g191886_)))
          (cond ((##fx= _g191887_ 2) (apply gx#core-bind-extern!__0 _g191886_))
                ((##fx= _g191887_ 3) (apply gx#core-bind-extern!__1 _g191886_))
                ((##fx= _g191887_ 4) (apply gx#core-bind-extern!__2 _g191886_))
                ((##fx= _g191887_ 5) (apply gx#core-bind-extern!__% _g191886_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g191886_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id188651%_
               _%e188652%_
               _%rebind?188653%_
               _%phi188654%_
               _%ctx188655%_)
        (gx#bind-identifier!__%
         _%id188651%_
         (let ((_%key188660%_ (gx#core-identifier-key _%id188651%_))
               (_%e188661%_
                (if (or (##structure-instance-of? _%e188652%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e188652%_
                         'gx#expander-context::t))
                    _%e188652%_
                    (##structure
                     gx#user-expander::t
                     _%e188652%_
                     _%ctx188655%_
                     _%phi188654%_))))
           (let ((__obj191862
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj191862
              (gx#make-binding-id__%
               _%key188660%_
               '#t
               _%phi188654%_
               _%ctx188655%_)
              _%key188660%_
              _%phi188654%_
              _%e188661%_)
             __obj191862))
         _%rebind?188653%_
         _%phi188654%_
         _%ctx188655%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id188666%_ _%e188667%_)
        (let* ((_%rebind?188669%_ '#f)
               (_%phi188671%_ (gx#current-expander-phi))
               (_%ctx188673%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id188666%_
           _%e188667%_
           _%rebind?188669%_
           _%phi188671%_
           _%ctx188673%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id188675%_ _%e188676%_ _%rebind?188677%_)
        (let* ((_%phi188679%_ (gx#current-expander-phi))
               (_%ctx188681%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id188675%_
           _%e188676%_
           _%rebind?188677%_
           _%phi188679%_
           _%ctx188681%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id188683%_ _%e188684%_ _%rebind?188685%_ _%phi188686%_)
        (let ((_%ctx188688%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id188683%_
           _%e188684%_
           _%rebind?188685%_
           _%phi188686%_
           _%ctx188688%_))))
    (define gx#core-bind-syntax!
      (lambda _g191888_
        (let ((_g191889_ (##length _g191888_)))
          (cond ((##fx= _g191889_ 2) (apply gx#core-bind-syntax!__0 _g191888_))
                ((##fx= _g191889_ 3) (apply gx#core-bind-syntax!__1 _g191888_))
                ((##fx= _g191889_ 4) (apply gx#core-bind-syntax!__2 _g191888_))
                ((##fx= _g191889_ 5) (apply gx#core-bind-syntax!__% _g191888_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g191888_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id188634%_ _%e188635%_ _%rebind?188636%_)
        (gx#core-bind-syntax!__%
         _%id188634%_
         _%e188635%_
         _%rebind?188636%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id188641%_ _%e188642%_)
        (let ((_%rebind?188644%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id188641%_
           _%e188642%_
           _%rebind?188644%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g191890_
        (let ((_g191891_ (##length _g191890_)))
          (cond ((##fx= _g191891_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g191890_))
                ((##fx= _g191891_ 3)
                 (apply gx#core-bind-root-syntax!__% _g191890_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g191890_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id188592%_
               _%alias-id188593%_
               _%rebind?188594%_
               _%phi188595%_
               _%ctx188596%_)
        (gx#bind-identifier!__%
         _%id188592%_
         (let* ((_%key188598%_ (gx#core-identifier-key _%id188592%_))
                (__obj191863
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj191863
            (gx#make-binding-id__%
             _%key188598%_
             '#t
             _%phi188595%_
             _%ctx188596%_)
            _%key188598%_
            _%phi188595%_
            _%alias-id188593%_)
           __obj191863)
         _%rebind?188594%_
         _%phi188595%_
         _%ctx188596%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id188603%_ _%alias-id188604%_)
        (let* ((_%rebind?188606%_ '#f)
               (_%phi188608%_ (gx#current-expander-phi))
               (_%ctx188610%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id188603%_
           _%alias-id188604%_
           _%rebind?188606%_
           _%phi188608%_
           _%ctx188610%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id188612%_ _%alias-id188613%_ _%rebind?188614%_)
        (let* ((_%phi188616%_ (gx#current-expander-phi))
               (_%ctx188618%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id188612%_
           _%alias-id188613%_
           _%rebind?188614%_
           _%phi188616%_
           _%ctx188618%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id188620%_ _%alias-id188621%_ _%rebind?188622%_ _%phi188623%_)
        (let ((_%ctx188625%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id188620%_
           _%alias-id188621%_
           _%rebind?188622%_
           _%phi188623%_
           _%ctx188625%_))))
    (define gx#core-bind-alias!
      (lambda _g191892_
        (let ((_g191893_ (##length _g191892_)))
          (cond ((##fx= _g191893_ 2) (apply gx#core-bind-alias!__0 _g191892_))
                ((##fx= _g191893_ 3) (apply gx#core-bind-alias!__1 _g191892_))
                ((##fx= _g191893_ 4) (apply gx#core-bind-alias!__2 _g191892_))
                ((##fx= _g191893_ 5) (apply gx#core-bind-alias!__% _g191892_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g191892_))))))
    (define gx#make-binding-id__%
      (lambda (_%key188542%_ _%syntax?188543%_ _%phi188544%_ _%ctx188545%_)
        (if (uninterned-symbol? _%key188542%_)
            (##gensym 'L)
            (if (pair? _%key188542%_)
                (gensym (##car _%key188542%_))
                (if (##structure-instance-of? _%ctx188545%_ 'gx#top-context::t)
                    (let ((_%ns188550%_
                           (gx#core-context-namespace__% _%ctx188545%_)))
                      (if (and (fxzero? _%phi188544%_) (not _%syntax?188543%_))
                          (if _%ns188550%_
                              (make-symbol__1 _%ns188550%_ '"#" _%key188542%_)
                              _%key188542%_)
                          (if _%syntax?188543%_
                              (make-symbol__1
                               (let ((_%$e188554%_ _%ns188550%_))
                                 (if _%$e188554%_ _%$e188554%_ '""))
                               '"[:"
                               (number->string _%phi188544%_)
                               '":]#"
                               _%key188542%_)
                              (make-symbol__1
                               (let ((_%$e188558%_ _%ns188550%_))
                                 (if _%$e188558%_ _%$e188558%_ '""))
                               '"["
                               (number->string _%phi188544%_)
                               '"]#"
                               _%key188542%_))))
                    (gensym _%key188542%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key188565%_)
        (let* ((_%syntax?188567%_ '#f)
               (_%phi188569%_ (gx#current-expander-phi))
               (_%ctx188571%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key188565%_
           _%syntax?188567%_
           _%phi188569%_
           _%ctx188571%_))))
    (define gx#make-binding-id__1
      (lambda (_%key188573%_ _%syntax?188574%_)
        (let* ((_%phi188576%_ (gx#current-expander-phi))
               (_%ctx188578%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key188573%_
           _%syntax?188574%_
           _%phi188576%_
           _%ctx188578%_))))
    (define gx#make-binding-id__2
      (lambda (_%key188580%_ _%syntax?188581%_ _%phi188582%_)
        (let ((_%ctx188584%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key188580%_
           _%syntax?188581%_
           _%phi188582%_
           _%ctx188584%_))))
    (define gx#make-binding-id
      (lambda _g191894_
        (let ((_g191895_ (##length _g191894_)))
          (cond ((##fx= _g191895_ 1) (apply gx#make-binding-id__0 _g191894_))
                ((##fx= _g191895_ 2) (apply gx#make-binding-id__1 _g191894_))
                ((##fx= _g191895_ 3) (apply gx#make-binding-id__2 _g191894_))
                ((##fx= _g191895_ 4) (apply gx#make-binding-id__% _g191894_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g191894_))))))))
