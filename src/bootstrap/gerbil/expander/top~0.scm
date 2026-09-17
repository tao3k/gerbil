(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1789552479)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx193844%_)
        (letrec ((_%expand-special193846%_
                  (lambda (_%hd193848%_ _%K193849%_ _%rest193850%_ _%r193851%_)
                    (_%K193849%_
                     _%rest193850%_
                     (cons (gx#core-expand-top _%hd193848%_) _%r193851%_)))))
          (gx#core-expand-block__0 _%stx193844%_ _%expand-special193846%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx193498%_)
        (letrec ((_%expand-special193500%_
                  (lambda (_%hd193620%_ _%K193621%_ _%rest193622%_ _%r193623%_)
                    (let* ((_%K*193627%_
                            (lambda (_%e193625%_)
                              (_%K193621%_
                               _%rest193622%_
                               (cons _%e193625%_ _%r193623%_))))
                           (_%$%e193628193680%_ _%hd193620%_)
                           (_%$%E193666193684%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e193628193680%_)))
                           (_%$%E193662193726%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193628193680%_)
                                  (let ((_%$%e193667193688%_
                                         (gx#syntax-e _%$%e193628193680%_)))
                                    (let ((_%$%hd193668193691%_
                                           (##car _%$%e193667193688%_))
                                          (_%$%tl193669193693%_
                                           (##cdr _%$%e193667193688%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193668193691%_)
                                               (gx#core-identifier=?
                                                _%$%hd193668193691%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl193669193693%_)
                                              (let ((_%$%e193670193696%_
                                                     (gx#syntax-e
                                                      _%$%tl193669193693%_)))
                                                (let ((_%$%hd193671193699%_
                                                       (##car _%$%e193670193696%_))
                                                      (_%$%tl193672193701%_
                                                       (##cdr _%$%e193670193696%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd193671193699%_)
                                                      (let ((_%$%e193676193704%_
                                                             (gx#syntax-e
                                                              _%$%hd193671193699%_)))
                                                        (let ((_%$%hd193677193707%_
                                                               (##car _%$%e193676193704%_))
                                                              (_%$%tl193678193709%_
                                                               (##cdr _%$%e193676193704%_)))
                                                          (let ((_%id193712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd193677193707%_))
                    (if (gx#stx-null? _%$%tl193678193709%_)
                        (if (gx#stx-pair? _%$%tl193672193701%_)
                            (let ((_%$%e193673193714%_
                                   (gx#syntax-e _%$%tl193672193701%_)))
                              (let ((_%$%hd193674193717%_
                                     (##car _%$%e193673193714%_))
                                    (_%$%tl193675193719%_
                                     (##cdr _%$%e193673193714%_)))
                                (let ((_%props193722%_ _%$%hd193674193717%_))
                                  (if (gx#stx-null? _%$%tl193675193719%_)
                                      (let ((_%bind193724%_
                                             (gx#resolve-identifier__0
                                              _%id193712%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind193724%_
                                         _%props193722%_)
                                        (_%K193621%_
                                         _%rest193622%_
                                         _%r193623%_))
                                      (_%$%E193666193684%_)))))
                            (_%$%E193666193684%_))
                        (_%$%E193666193684%_)))))
              (_%$%E193666193684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193666193684%_))
                                          (_%$%E193666193684%_))))
                                  (_%$%E193666193684%_))))
                           (_%$%E193658193738%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193628193680%_)
                                  (let ((_%$%e193663193730%_
                                         (gx#syntax-e _%$%e193628193680%_)))
                                    (let ((_%$%hd193664193733%_
                                           (##car _%$%e193663193730%_))
                                          (_%$%tl193665193735%_
                                           (##cdr _%$%e193663193730%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193664193733%_)
                                               (gx#core-identifier=?
                                                _%$%hd193664193733%_
                                                '%#define-runtime))
                                          (_%K*193627%_
                                           (gx#core-expand-define-runtime%
                                            _%hd193620%_))
                                          (_%$%E193662193726%_))))
                                  (_%$%E193662193726%_))))
                           (_%$%E193654193750%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193628193680%_)
                                  (let ((_%$%e193659193742%_
                                         (gx#syntax-e _%$%e193628193680%_)))
                                    (let ((_%$%hd193660193745%_
                                           (##car _%$%e193659193742%_))
                                          (_%$%tl193661193747%_
                                           (##cdr _%$%e193659193742%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193660193745%_)
                                               (gx#core-identifier=?
                                                _%$%hd193660193745%_
                                                '%#define-alias))
                                          (_%K*193627%_
                                           (gx#core-expand-define-alias%
                                            _%hd193620%_))
                                          (_%$%E193658193738%_))))
                                  (_%$%E193658193738%_))))
                           (_%$%E193644193762%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193628193680%_)
                                  (let ((_%$%e193655193754%_
                                         (gx#syntax-e _%$%e193628193680%_)))
                                    (let ((_%$%hd193656193757%_
                                           (##car _%$%e193655193754%_))
                                          (_%$%tl193657193759%_
                                           (##cdr _%$%e193655193754%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193656193757%_)
                                               (gx#core-identifier=?
                                                _%$%hd193656193757%_
                                                '%#define-syntax))
                                          (_%K*193627%_
                                           (gx#core-expand-define-syntax%
                                            _%hd193620%_))
                                          (_%$%E193654193750%_))))
                                  (_%$%E193654193750%_))))
                           (_%$%E193634193794%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193628193680%_)
                                  (let ((_%$%e193645193766%_
                                         (gx#syntax-e _%$%e193628193680%_)))
                                    (let ((_%$%hd193646193769%_
                                           (##car _%$%e193645193766%_))
                                          (_%$%tl193647193771%_
                                           (##cdr _%$%e193645193766%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193646193769%_)
                                               (gx#core-identifier=?
                                                _%$%hd193646193769%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl193647193771%_)
                                              (let ((_%$%e193648193774%_
                                                     (gx#syntax-e
                                                      _%$%tl193647193771%_)))
                                                (let ((_%$%hd193649193777%_
                                                       (##car _%$%e193648193774%_))
                                                      (_%$%tl193650193779%_
                                                       (##cdr _%$%e193648193774%_)))
                                                  (let ((_%hd-bind193782%_
                                                         _%$%hd193649193777%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl193650193779%_)
                                                        (let ((_%$%e193651193784%_
                                                               (gx#syntax-e
                                                                _%$%tl193650193779%_)))
                                                          (let ((_%$%hd193652193787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e193651193784%_))
                        (_%$%tl193653193789%_ (##cdr _%$%e193651193784%_)))
                    (let ((_%expr193792%_ _%$%hd193652193787%_))
                      (if (gx#stx-null? _%$%tl193653193789%_)
                          (if (gx#core-bind-values? _%hd-bind193782%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind193782%_)
                                (_%K*193627%_ _%hd193620%_))
                              (_%$%E193644193762%_))
                          (_%$%E193644193762%_)))))
                (_%$%E193644193762%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193644193762%_))
                                          (_%$%E193644193762%_))))
                                  (_%$%E193644193762%_))))
                           (_%$%E193630193828%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193628193680%_)
                                  (let ((_%$%e193635193798%_
                                         (gx#syntax-e _%$%e193628193680%_)))
                                    (let ((_%$%hd193636193801%_
                                           (##car _%$%e193635193798%_))
                                          (_%$%tl193637193803%_
                                           (##cdr _%$%e193635193798%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193636193801%_)
                                               (gx#core-identifier=?
                                                _%$%hd193636193801%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl193637193803%_)
                                              (let ((_%$%e193638193806%_
                                                     (gx#syntax-e
                                                      _%$%tl193637193803%_)))
                                                (let ((_%$%hd193639193809%_
                                                       (##car _%$%e193638193806%_))
                                                      (_%$%tl193640193811%_
                                                       (##cdr _%$%e193638193806%_)))
                                                  (let ((_%hd-bind193814%_
                                                         _%$%hd193639193809%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl193640193811%_)
                                                        (let ((_%$%e193641193816%_
                                                               (gx#syntax-e
                                                                _%$%tl193640193811%_)))
                                                          (let ((_%$%hd193642193819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e193641193816%_))
                        (_%$%tl193643193821%_ (##cdr _%$%e193641193816%_)))
                    (let* ((_%expr193824%_ _%$%hd193642193819%_)
                           (_%props193826%_ _%$%tl193643193821%_))
                      (if (and (gx#core-bind-values? _%hd-bind193814%_)
                               (gx#stx-list? _%props193826%_)
                               (not (gx#stx-null? _%props193826%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind193814%_)
                            (_%K193621%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind193814%_
                                          (cons _%props193826%_ '())))
                                   _%rest193622%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind193814%_
                                          (cons _%expr193824%_ '())))
                                   _%r193623%_)))
                          (_%$%E193634193794%_)))))
                (_%$%E193634193794%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193634193794%_))
                                          (_%$%E193634193794%_))))
                                  (_%$%E193634193794%_))))
                           (_%$%E193629193840%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193628193680%_)
                                  (let ((_%$%e193631193832%_
                                         (gx#syntax-e _%$%e193628193680%_)))
                                    (let ((_%$%hd193632193835%_
                                           (##car _%$%e193631193832%_))
                                          (_%$%tl193633193837%_
                                           (##cdr _%$%e193631193832%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193632193835%_)
                                               (gx#core-identifier=?
                                                _%$%hd193632193835%_
                                                '%#begin-syntax))
                                          (_%K*193627%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd193620%_))
                                          (_%$%E193630193828%_))))
                                  (_%$%E193630193828%_)))))
                      (_%$%E193629193840%_))))
                 (_%eval-body193501%_
                  (lambda (_%rbody193509%_)
                    (let _%lp193511%_ ((_%rest193513%_ _%rbody193509%_)
                                       (_%body193514%_ '())
                                       (_%ebody193515%_ '()))
                      (let* ((_%$%rest193516193524%_ _%rest193513%_)
                             (_%$%else193518193532%_
                              (lambda ()
                                (values _%body193514%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody193515%_)
                                          (gx#stx-source _%stx193498%_))))))
                             (_%$%K193520193608%_
                              (lambda (_%rest193535%_ _%hd193536%_)
                                (let* ((_%$%e193537193554%_ _%hd193536%_)
                                       (_%$%E193549193558%_
                                        (lambda ()
                                          (_%lp193511%_
                                           _%rest193535%_
                                           (cons _%hd193536%_ _%body193514%_)
                                           (cons _%hd193536%_
                                                 _%ebody193515%_))))
                                       (_%$%E193539193570%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e193537193554%_)
                                              (let ((_%$%e193550193562%_
                                                     (gx#syntax-e
                                                      _%$%e193537193554%_)))
                                                (let ((_%$%hd193551193565%_
                                                       (##car _%$%e193550193562%_))
                                                      (_%$%tl193552193567%_
                                                       (##cdr _%$%e193550193562%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd193551193565%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd193551193565%_
                                                            '%#begin-syntax))
                                                      (_%lp193511%_
                                                       _%rest193535%_
                                                       (cons _%hd193536%_
                                                             _%body193514%_)
                                                       _%ebody193515%_)
                                                      (_%$%E193549193558%_))))
                                              (_%$%E193549193558%_))))
                                       (_%$%E193538193604%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e193537193554%_)
                                              (let ((_%$%e193540193574%_
                                                     (gx#syntax-e
                                                      _%$%e193537193554%_)))
                                                (let ((_%$%hd193541193577%_
                                                       (##car _%$%e193540193574%_))
                                                      (_%$%tl193542193579%_
                                                       (##cdr _%$%e193540193574%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd193541193577%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd193541193577%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl193542193579%_)
                                                          (let ((_%$%e193543193582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl193542193579%_)))
                    (let ((_%$%hd193544193585%_ (##car _%$%e193543193582%_))
                          (_%$%tl193545193587%_ (##cdr _%$%e193543193582%_)))
                      (let ((_%hd-bind193590%_ _%$%hd193544193585%_))
                        (if (gx#stx-pair? _%$%tl193545193587%_)
                            (let ((_%$%e193546193592%_
                                   (gx#syntax-e _%$%tl193545193587%_)))
                              (let ((_%$%hd193547193595%_
                                     (##car _%$%e193546193592%_))
                                    (_%$%tl193548193597%_
                                     (##cdr _%$%e193546193592%_)))
                                (let ((_%expr193600%_ _%$%hd193547193595%_))
                                  (if (gx#stx-null? _%$%tl193548193597%_)
                                      (let ((_%ehd193602%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind193590%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr193600%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd193536%_))))
                                        (_%lp193511%_
                                         _%rest193535%_
                                         (cons _%ehd193602%_ _%body193514%_)
                                         (cons _%ehd193602%_ _%ebody193515%_)))
                                      (_%$%E193539193570%_)))))
                            (_%$%E193539193570%_)))))
                  (_%$%E193539193570%_))
              (_%$%E193539193570%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193539193570%_)))))
                                  (_%$%E193538193604%_)))))
                        (if (pair? _%$%rest193516193524%_)
                            (let ((_%$%hd193521193611%_
                                   (##car _%$%rest193516193524%_))
                                  (_%$%tl193522193613%_
                                   (##cdr _%$%rest193516193524%_)))
                              (let* ((_%hd193616%_ _%$%hd193521193611%_)
                                     (_%rest193618%_ _%$%tl193522193613%_))
                                (_%$%K193520193608%_
                                 _%rest193618%_
                                 _%hd193616%_)))
                            (_%$%else193518193532%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody193504%_
                     (gx#core-expand-block__1
                      _%stx193498%_
                      _%expand-special193500%_
                      '#f))
                    (_g193877_ (_%eval-body193501%_ _%rbody193504%_)))
               (begin
                 (let ((_g193878_
                        (if (##values? _g193877_)
                            (##values-length _g193877_)
                            1)))
                   (if (not (##fx= _g193878_ 2))
                       (error "Context expects 2 values" _g193878_)))
                 (let ((_%expanded-body193506%_ (##values-ref _g193877_ 0))
                       (_%value193507%_ (##values-ref _g193877_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body193506%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value193507%_ '())))
                    (gx#stx-source _%stx193498%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx193468%_)
        (let* ((_%$%e193469193476%_ _%stx193468%_)
               (_%$%E193471193480%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193469193476%_)))
               (_%$%E193470193494%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193469193476%_)
                      (let ((_%$%e193472193484%_
                             (gx#syntax-e _%$%e193469193476%_)))
                        (let ((_%$%hd193473193487%_
                               (##car _%$%e193472193484%_))
                              (_%$%tl193474193489%_
                               (##cdr _%$%e193472193484%_)))
                          (let ((_%body193492%_ _%$%tl193474193489%_))
                            (if (gx#stx-list? _%body193492%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body193492%_)
                                 (gx#stx-source _%stx193468%_))
                                (_%$%E193471193480%_)))))
                      (_%$%E193471193480%_)))))
          (_%$%E193470193494%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx193466%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx193466%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx193412%_)
        (let* ((_%$%e193413193426%_ _%stx193412%_)
               (_%$%E193415193430%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193413193426%_)))
               (_%$%E193414193462%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193413193426%_)
                      (let ((_%$%e193416193434%_
                             (gx#syntax-e _%$%e193413193426%_)))
                        (let ((_%$%hd193417193437%_
                               (##car _%$%e193416193434%_))
                              (_%$%tl193418193439%_
                               (##cdr _%$%e193416193434%_)))
                          (if (gx#stx-pair? _%$%tl193418193439%_)
                              (let ((_%$%e193419193442%_
                                     (gx#syntax-e _%$%tl193418193439%_)))
                                (let ((_%$%hd193420193445%_
                                       (##car _%$%e193419193442%_))
                                      (_%$%tl193421193447%_
                                       (##cdr _%$%e193419193442%_)))
                                  (let ((_%ann193450%_ _%$%hd193420193445%_))
                                    (if (gx#stx-pair? _%$%tl193421193447%_)
                                        (let ((_%$%e193422193452%_
                                               (gx#syntax-e
                                                _%$%tl193421193447%_)))
                                          (let ((_%$%hd193423193455%_
                                                 (##car _%$%e193422193452%_))
                                                (_%$%tl193424193457%_
                                                 (##cdr _%$%e193422193452%_)))
                                            (let ((_%expr193460%_
                                                   _%$%hd193423193455%_))
                                              (if (gx#stx-null?
                                                   _%$%tl193424193457%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann193450%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr193460%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx193412%_))
                                                  (_%$%E193415193430%_)))))
                                        (_%$%E193415193430%_)))))
                              (_%$%E193415193430%_))))
                      (_%$%E193415193430%_)))))
          (_%$%E193414193462%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx193037%_ _%body193038%_)
        (letrec ((_%expand-special193040%_
                  (lambda (_%hd193407%_ _%K193408%_ _%rest193409%_ _%r193410%_)
                    (_%K193408%_
                     '()
                     (cons (_%expand-internal193041%_
                            _%hd193407%_
                            _%rest193409%_)
                           _%r193410%_))))
                 (_%expand-internal193041%_
                  (lambda (_%hd193403%_ _%rest193404%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal193043%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd193403%_ _%rest193404%_))
                          (gx#stx-source _%stx193037%_))
                         _%expand-internal-special193042%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj193861
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj193861)
                       __obj193861))))
                 (_%expand-internal-special193042%_
                  (lambda (_%hd193199%_ _%K193200%_ _%rest193201%_ _%r193202%_)
                    (let* ((_%$%e193203193251%_ _%hd193199%_)
                           (_%$%E193246193255%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e193203193251%_)))
                           (_%$%E193233193267%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193203193251%_)
                                  (let ((_%$%e193247193259%_
                                         (gx#syntax-e _%$%e193203193251%_)))
                                    (let ((_%$%hd193248193262%_
                                           (##car _%$%e193247193259%_))
                                          (_%$%tl193249193264%_
                                           (##cdr _%$%e193247193259%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193248193262%_)
                                               (gx#core-identifier=?
                                                _%$%hd193248193262%_
                                                '%#declare))
                                          (_%K193200%_
                                           _%rest193201%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd193199%_)
                                                 _%r193202%_))
                                          (_%$%E193246193255%_))))
                                  (_%$%E193246193255%_))))
                           (_%$%E193229193309%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193203193251%_)
                                  (let ((_%$%e193234193271%_
                                         (gx#syntax-e _%$%e193203193251%_)))
                                    (let ((_%$%hd193235193274%_
                                           (##car _%$%e193234193271%_))
                                          (_%$%tl193236193276%_
                                           (##cdr _%$%e193234193271%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193235193274%_)
                                               (gx#core-identifier=?
                                                _%$%hd193235193274%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl193236193276%_)
                                              (let ((_%$%e193237193279%_
                                                     (gx#syntax-e
                                                      _%$%tl193236193276%_)))
                                                (let ((_%$%hd193238193282%_
                                                       (##car _%$%e193237193279%_))
                                                      (_%$%tl193239193284%_
                                                       (##cdr _%$%e193237193279%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd193238193282%_)
                                                      (let ((_%$%e193243193287%_
                                                             (gx#syntax-e
                                                              _%$%hd193238193282%_)))
                                                        (let ((_%$%hd193244193290%_
                                                               (##car _%$%e193243193287%_))
                                                              (_%$%tl193245193292%_
                                                               (##cdr _%$%e193243193287%_)))
                                                          (let ((_%id193295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd193244193290%_))
                    (if (gx#stx-null? _%$%tl193245193292%_)
                        (if (gx#stx-pair? _%$%tl193239193284%_)
                            (let ((_%$%e193240193297%_
                                   (gx#syntax-e _%$%tl193239193284%_)))
                              (let ((_%$%hd193241193300%_
                                     (##car _%$%e193240193297%_))
                                    (_%$%tl193242193302%_
                                     (##cdr _%$%e193240193297%_)))
                                (let ((_%props193305%_ _%$%hd193241193300%_))
                                  (if (gx#stx-null? _%$%tl193242193302%_)
                                      (let ((_%bind193307%_
                                             (gx#resolve-identifier__0
                                              _%id193295%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind193307%_
                                         _%props193305%_)
                                        (_%K193200%_
                                         _%rest193201%_
                                         _%r193202%_))
                                      (_%$%E193233193267%_)))))
                            (_%$%E193233193267%_))
                        (_%$%E193233193267%_)))))
              (_%$%E193233193267%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193233193267%_))
                                          (_%$%E193233193267%_))))
                                  (_%$%E193233193267%_))))
                           (_%$%E193225193321%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193203193251%_)
                                  (let ((_%$%e193230193313%_
                                         (gx#syntax-e _%$%e193203193251%_)))
                                    (let ((_%$%hd193231193316%_
                                           (##car _%$%e193230193313%_))
                                          (_%$%tl193232193318%_
                                           (##cdr _%$%e193230193313%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193231193316%_)
                                               (gx#core-identifier=?
                                                _%$%hd193231193316%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd193199%_)
                                            (_%K193200%_
                                             _%rest193201%_
                                             _%r193202%_))
                                          (_%$%E193229193309%_))))
                                  (_%$%E193229193309%_))))
                           (_%$%E193215193333%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193203193251%_)
                                  (let ((_%$%e193226193325%_
                                         (gx#syntax-e _%$%e193203193251%_)))
                                    (let ((_%$%hd193227193328%_
                                           (##car _%$%e193226193325%_))
                                          (_%$%tl193228193330%_
                                           (##cdr _%$%e193226193325%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193227193328%_)
                                               (gx#core-identifier=?
                                                _%$%hd193227193328%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd193199%_)
                                            (_%K193200%_
                                             _%rest193201%_
                                             _%r193202%_))
                                          (_%$%E193225193321%_))))
                                  (_%$%E193225193321%_))))
                           (_%$%E193205193365%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193203193251%_)
                                  (let ((_%$%e193216193337%_
                                         (gx#syntax-e _%$%e193203193251%_)))
                                    (let ((_%$%hd193217193340%_
                                           (##car _%$%e193216193337%_))
                                          (_%$%tl193218193342%_
                                           (##cdr _%$%e193216193337%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193217193340%_)
                                               (gx#core-identifier=?
                                                _%$%hd193217193340%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl193218193342%_)
                                              (let ((_%$%e193219193345%_
                                                     (gx#syntax-e
                                                      _%$%tl193218193342%_)))
                                                (let ((_%$%hd193220193348%_
                                                       (##car _%$%e193219193345%_))
                                                      (_%$%tl193221193350%_
                                                       (##cdr _%$%e193219193345%_)))
                                                  (let ((_%hd-bind193353%_
                                                         _%$%hd193220193348%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl193221193350%_)
                                                        (let ((_%$%e193222193355%_
                                                               (gx#syntax-e
                                                                _%$%tl193221193350%_)))
                                                          (let ((_%$%hd193223193358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e193222193355%_))
                        (_%$%tl193224193360%_ (##cdr _%$%e193222193355%_)))
                    (let ((_%expr193363%_ _%$%hd193223193358%_))
                      (if (gx#stx-null? _%$%tl193224193360%_)
                          (if (gx#core-bind-values? _%hd-bind193353%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind193353%_)
                                (_%K193200%_
                                 _%rest193201%_
                                 (cons _%hd193199%_ _%r193202%_)))
                              (_%$%E193215193333%_))
                          (_%$%E193215193333%_)))))
                (_%$%E193215193333%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193215193333%_))
                                          (_%$%E193215193333%_))))
                                  (_%$%E193215193333%_))))
                           (_%$%E193204193399%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193203193251%_)
                                  (let ((_%$%e193206193369%_
                                         (gx#syntax-e _%$%e193203193251%_)))
                                    (let ((_%$%hd193207193372%_
                                           (##car _%$%e193206193369%_))
                                          (_%$%tl193208193374%_
                                           (##cdr _%$%e193206193369%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193207193372%_)
                                               (gx#core-identifier=?
                                                _%$%hd193207193372%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl193208193374%_)
                                              (let ((_%$%e193209193377%_
                                                     (gx#syntax-e
                                                      _%$%tl193208193374%_)))
                                                (let ((_%$%hd193210193380%_
                                                       (##car _%$%e193209193377%_))
                                                      (_%$%tl193211193382%_
                                                       (##cdr _%$%e193209193377%_)))
                                                  (let ((_%hd-bind193385%_
                                                         _%$%hd193210193380%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl193211193382%_)
                                                        (let ((_%$%e193212193387%_
                                                               (gx#syntax-e
                                                                _%$%tl193211193382%_)))
                                                          (let ((_%$%hd193213193390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e193212193387%_))
                        (_%$%tl193214193392%_ (##cdr _%$%e193212193387%_)))
                    (let* ((_%expr193395%_ _%$%hd193213193390%_)
                           (_%props193397%_ _%$%tl193214193392%_))
                      (if (and (gx#core-bind-values? _%hd-bind193385%_)
                               (gx#stx-list? _%props193397%_)
                               (not (gx#stx-null? _%props193397%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind193385%_)
                            (_%K193200%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind193385%_
                                          (cons _%props193397%_ '())))
                                   _%rest193201%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind193385%_
                                          (cons _%expr193395%_ '())))
                                   _%r193202%_)))
                          (_%$%E193205193365%_)))))
                (_%$%E193205193365%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193205193365%_))
                                          (_%$%E193205193365%_))))
                                  (_%$%E193205193365%_)))))
                      (_%$%E193204193399%_))))
                 (_%wrap-internal193043%_
                  (lambda (_%rbody193045%_)
                    (let _%lp193047%_ ((_%rest193049%_ _%rbody193045%_)
                                       (_%decls193050%_ '())
                                       (_%bind193051%_ '())
                                       (_%body193052%_ '()))
                      (let* ((_%$%e193053193060%_ _%rest193049%_)
                             (_%$%E193055193109%_
                              (lambda ()
                                (let* ((_%body193104%_
                                        (let* ((_%$%body193063193073%_
                                                _%body193052%_)
                                               (_%$%else193066193081%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body193052%_)
                                                   (gx#stx-source
                                                    _%stx193037%_)))))
                                          (let ((_%$%K193071193101%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx193037%_)))
                                                (_%$%K193068193087%_
                                                 (lambda (_%expr193085%_)
                                                   _%expr193085%_)))
                                            (let ((_%$%try-match193065193097%_
                                                   (lambda ()
                                                     (if (pair? _%$%body193063193073%_)
                                                         (let ((_%$%tl193070193092%_
                                                                (##cdr _%$%body193063193073%_))
                                                               (_%$%hd193069193090%_
                                                                (##car _%$%body193063193073%_)))
                                                           (if (null? _%$%tl193070193092%_)
                                                               (let ((_%expr193095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%hd193069193090%_))
                         (_%$%K193068193087%_ _%expr193095%_))
                       (_%$%else193066193081%_)))
                 (_%$%else193066193081%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%$%body193063193073%_)
                                                  (_%$%K193071193101%_)
                                                  (_%$%try-match193065193097%_))))))
                                       (_%body193106%_
                                        (if (null? _%bind193051%_)
                                            _%body193104%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind193051%_
                                                         (cons _%body193104%_
                                                               '())))
                                             (gx#stx-source _%stx193037%_)))))
                                  (if (null? _%decls193050%_)
                                      _%body193106%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls193050%_
                                                   (cons _%body193106%_ '())))
                                       (gx#stx-source _%stx193037%_))))))
                             (_%$%E193054193195%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e193053193060%_)
                                    (let ((_%$%e193056193113%_
                                           (gx#syntax-e _%$%e193053193060%_)))
                                      (let ((_%$%hd193057193116%_
                                             (##car _%$%e193056193113%_))
                                            (_%$%tl193058193118%_
                                             (##cdr _%$%e193056193113%_)))
                                        (let* ((_%hd193121%_
                                                _%$%hd193057193116%_)
                                               (_%rest193123%_
                                                _%$%tl193058193118%_)
                                               (_%$%e193124193141%_
                                                _%hd193121%_)
                                               (_%$%E193136193145%_
                                                (lambda ()
                                                  (if (null? _%bind193051%_)
                                                      (_%lp193047%_
                                                       _%rest193123%_
                                                       _%decls193050%_
                                                       _%bind193051%_
                                                       (cons _%hd193121%_
                                                             _%body193052%_))
                                                      (_%lp193047%_
                                                       _%rest193123%_
                                                       _%decls193050%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd193121%_ '()))
                     _%bind193051%_)
               _%body193052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E193126193159%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e193124193141%_)
                                                      (let ((_%$%e193137193149%_
                                                             (gx#syntax-e
                                                              _%$%e193124193141%_)))
                                                        (let ((_%$%hd193138193152%_
                                                               (##car _%$%e193137193149%_))
                                                              (_%$%tl193139193154%_
                                                               (##cdr _%$%e193137193149%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd193138193152%_)
                           (gx#core-identifier=?
                            _%$%hd193138193152%_
                            '%#declare))
                      (let ((_%xdecls193157%_ _%$%tl193139193154%_))
                        (_%lp193047%_
                         _%rest193123%_
                         (gx#stx-foldr cons _%decls193050%_ _%xdecls193157%_)
                         _%bind193051%_
                         _%body193052%_))
                      (_%$%E193136193145%_))))
              (_%$%E193136193145%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E193125193191%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e193124193141%_)
                                                      (let ((_%$%e193127193163%_
                                                             (gx#syntax-e
                                                              _%$%e193124193141%_)))
                                                        (let ((_%$%hd193128193166%_
                                                               (##car _%$%e193127193163%_))
                                                              (_%$%tl193129193168%_
                                                               (##cdr _%$%e193127193163%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd193128193166%_)
                           (gx#core-identifier=?
                            _%$%hd193128193166%_
                            '%#define-values))
                      (if (gx#stx-pair? _%$%tl193129193168%_)
                          (let ((_%$%e193130193171%_
                                 (gx#syntax-e _%$%tl193129193168%_)))
                            (let ((_%$%hd193131193174%_
                                   (##car _%$%e193130193171%_))
                                  (_%$%tl193132193176%_
                                   (##cdr _%$%e193130193171%_)))
                              (let ((_%hd-bind193179%_ _%$%hd193131193174%_))
                                (if (gx#stx-pair? _%$%tl193132193176%_)
                                    (let ((_%$%e193133193181%_
                                           (gx#syntax-e _%$%tl193132193176%_)))
                                      (let ((_%$%hd193134193184%_
                                             (##car _%$%e193133193181%_))
                                            (_%$%tl193135193186%_
                                             (##cdr _%$%e193133193181%_)))
                                        (let ((_%expr193189%_
                                               _%$%hd193134193184%_))
                                          (if (gx#stx-null?
                                               _%$%tl193135193186%_)
                                              (_%lp193047%_
                                               _%rest193123%_
                                               _%decls193050%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind193179%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr193189%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind193051%_)
                                               _%body193052%_)
                                              (_%$%E193126193159%_)))))
                                    (_%$%E193126193159%_)))))
                          (_%$%E193126193159%_))
                      (_%$%E193126193159%_))))
              (_%$%E193126193159%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%E193125193191%_))))
                                    (_%$%E193055193109%_)))))
                        (_%$%E193054193195%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body193038%_)
            (gx#stx-source _%stx193037%_))
           _%expand-special193040%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx192975%_)
        (let* ((_%$%e192976192983%_ _%stx192975%_)
               (_%$%E192978192987%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192976192983%_)))
               (_%$%E192977193033%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192976192983%_)
                      (let ((_%$%e192979192991%_
                             (gx#syntax-e _%$%e192976192983%_)))
                        (let ((_%$%hd192980192994%_
                               (##car _%$%e192979192991%_))
                              (_%$%tl192981192996%_
                               (##cdr _%$%e192979192991%_)))
                          (let ((_%body192999%_ _%$%tl192981192996%_))
                            (if (gx#stx-list? _%body192999%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl193001%_)
                                     (let* ((_%$%e193002193009%_
                                             _%decl193001%_)
                                            (_%$%E193004193013%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%$%e193002193009%_)))
                                            (_%$%E193003193029%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%$%e193002193009%_)
                                                   (let ((_%$%e193005193017%_
                                                          (gx#syntax-e
                                                           _%$%e193002193009%_)))
                                                     (let ((_%$%hd193006193020%_
                                                            (##car _%$%e193005193017%_))
                                                           (_%$%tl193007193022%_
                                                            (##cdr _%$%e193005193017%_)))
                                                       (let* ((_%head193025%_
                                                               _%$%hd193006193020%_)
                                                              (_%args193027%_
                                                               _%$%tl193007193022%_))
                                                         (if (gx#stx-list?
                                                              _%args193027%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl193001%_)
                                                             (_%$%E193004193013%_)))))
                                                   (_%$%E193004193013%_)))))
                                       (_%$%E193003193029%_)))
                                   _%body192999%_))
                                 (gx#stx-source _%stx192975%_))
                                (_%$%E192978192987%_)))))
                      (_%$%E192978192987%_)))))
          (_%$%E192977193033%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx192879%_)
        (let* ((_%$%e192880192887%_ _%stx192879%_)
               (_%$%E192882192891%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192880192887%_)))
               (_%$%E192881192971%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192880192887%_)
                      (let ((_%$%e192883192895%_
                             (gx#syntax-e _%$%e192880192887%_)))
                        (let ((_%$%hd192884192898%_
                               (##car _%$%e192883192895%_))
                              (_%$%tl192885192900%_
                               (##cdr _%$%e192883192895%_)))
                          (let ((_%body192903%_ _%$%tl192885192900%_))
                            (let _%lp192905%_ ((_%rest192907%_ _%body192903%_)
                                               (_%r192908%_ '()))
                              (let* ((_%$%e192909192923%_ _%rest192907%_)
                                     (_%$%E192921192927%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx192879%_)))
                                     (_%$%E192911192931%_
                                      (lambda ()
                                        (if (gx#stx-null? _%$%e192909192923%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r192908%_))
                                             (gx#stx-source _%stx192879%_))
                                            (_%$%E192921192927%_))))
                                     (_%$%E192910192967%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e192909192923%_)
                                            (let ((_%$%e192912192935%_
                                                   (gx#syntax-e
                                                    _%$%e192909192923%_)))
                                              (let ((_%$%hd192913192938%_
                                                     (##car _%$%e192912192935%_))
                                                    (_%$%tl192914192940%_
                                                     (##cdr _%$%e192912192935%_)))
                                                (if (gx#stx-pair?
                                                     _%$%hd192913192938%_)
                                                    (let ((_%$%e192915192943%_
                                                           (gx#syntax-e
                                                            _%$%hd192913192938%_)))
                                                      (let ((_%$%hd192916192946%_
                                                             (##car _%$%e192915192943%_))
                                                            (_%$%tl192917192948%_
                                                             (##cdr _%$%e192915192943%_)))
                                                        (let ((_%id192951%_
                                                               _%$%hd192916192946%_))
                                                          (if (gx#stx-pair?
                                                               _%$%tl192917192948%_)
                                                              (let ((_%$%e192918192953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl192917192948%_)))
                        (let ((_%$%hd192919192956%_
                               (##car _%$%e192918192953%_))
                              (_%$%tl192920192958%_
                               (##cdr _%$%e192918192953%_)))
                          (let ((_%eid192961%_ _%$%hd192919192956%_))
                            (if (gx#stx-null? _%$%tl192920192958%_)
                                (let ((_%rest192963%_ _%$%tl192914192940%_))
                                  (if (and (gx#identifier? _%id192951%_)
                                           (gx#identifier? _%eid192961%_))
                                      (let ((_%eid192965%_
                                             (gx#stx-e _%eid192961%_)))
                                        (gx#core-bind-extern!__0
                                         _%id192951%_
                                         _%eid192965%_)
                                        (_%lp192905%_
                                         _%rest192963%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id192951%_)
                                                     (cons _%eid192965%_ '()))
                                               _%r192908%_)))
                                      (_%$%E192911192931%_)))
                                (_%$%E192911192931%_)))))
                      (_%$%E192911192931%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E192911192931%_))))
                                            (_%$%E192911192931%_)))))
                                (_%$%E192910192967%_))))))
                      (_%$%E192882192891%_)))))
          (_%$%E192881192971%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx192781%_)
        (let* ((_%$%e192782192805%_ _%stx192781%_)
               (_%$%E192794192809%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192782192805%_)))
               (_%$%E192784192841%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192782192805%_)
                      (let ((_%$%e192795192813%_
                             (gx#syntax-e _%$%e192782192805%_)))
                        (let ((_%$%hd192796192816%_
                               (##car _%$%e192795192813%_))
                              (_%$%tl192797192818%_
                               (##cdr _%$%e192795192813%_)))
                          (if (gx#stx-pair? _%$%tl192797192818%_)
                              (let ((_%$%e192798192821%_
                                     (gx#syntax-e _%$%tl192797192818%_)))
                                (let ((_%$%hd192799192824%_
                                       (##car _%$%e192798192821%_))
                                      (_%$%tl192800192826%_
                                       (##cdr _%$%e192798192821%_)))
                                  (let ((_%hd192829%_ _%$%hd192799192824%_))
                                    (if (gx#stx-pair? _%$%tl192800192826%_)
                                        (let ((_%$%e192801192831%_
                                               (gx#syntax-e
                                                _%$%tl192800192826%_)))
                                          (let ((_%$%hd192802192834%_
                                                 (##car _%$%e192801192831%_))
                                                (_%$%tl192803192836%_
                                                 (##cdr _%$%e192801192831%_)))
                                            (let ((_%expr192839%_
                                                   _%$%hd192802192834%_))
                                              (if (gx#stx-null?
                                                   _%$%tl192803192836%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd192829%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd192829%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd192829%_)
                             (cons (gx#core-expand-expression _%expr192839%_)
                                   '())))
                 (gx#stx-source _%stx192781%_)))
              (_%$%E192794192809%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E192794192809%_)))))
                                        (_%$%E192794192809%_)))))
                              (_%$%E192794192809%_))))
                      (_%$%E192794192809%_))))
               (_%$%E192783192875%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192782192805%_)
                      (let ((_%$%e192785192845%_
                             (gx#syntax-e _%$%e192782192805%_)))
                        (let ((_%$%hd192786192848%_
                               (##car _%$%e192785192845%_))
                              (_%$%tl192787192850%_
                               (##cdr _%$%e192785192845%_)))
                          (if (gx#stx-pair? _%$%tl192787192850%_)
                              (let ((_%$%e192788192853%_
                                     (gx#syntax-e _%$%tl192787192850%_)))
                                (let ((_%$%hd192789192856%_
                                       (##car _%$%e192788192853%_))
                                      (_%$%tl192790192858%_
                                       (##cdr _%$%e192788192853%_)))
                                  (let ((_%hd192861%_ _%$%hd192789192856%_))
                                    (if (gx#stx-pair? _%$%tl192790192858%_)
                                        (let ((_%$%e192791192863%_
                                               (gx#syntax-e
                                                _%$%tl192790192858%_)))
                                          (let ((_%$%hd192792192866%_
                                                 (##car _%$%e192791192863%_))
                                                (_%$%tl192793192868%_
                                                 (##cdr _%$%e192791192863%_)))
                                            (let* ((_%expr192871%_
                                                    _%$%hd192792192866%_)
                                                   (_%props192873%_
                                                    _%$%tl192793192868%_))
                                              (if (and (gx#stx-list?
                                                        _%props192873%_)
                                                       (not (gx#stx-null?
                                                             _%props192873%_)))
                                                  (gx#core-cons
                                                   '%#begin
                                                   (cons (gx#core-cons
                                                          '%#define-values
                                                          (cons _%hd192861%_
                                                                (cons _%expr192871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                 (cons (gx#core-cons
                        '%#bind-runtime-properties!
                        (cons _%hd192861%_ (cons _%props192873%_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E192784192841%_)))))
                                        (_%$%E192784192841%_)))))
                              (_%$%E192784192841%_))))
                      (_%$%E192784192841%_)))))
          (_%$%E192783192875%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx192720%_)
        (let* ((_%$%e192721192734%_ _%stx192720%_)
               (_%$%E192723192738%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192721192734%_)))
               (_%$%E192722192777%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192721192734%_)
                      (let ((_%$%e192724192742%_
                             (gx#syntax-e _%$%e192721192734%_)))
                        (let ((_%$%hd192725192745%_
                               (##car _%$%e192724192742%_))
                              (_%$%tl192726192747%_
                               (##cdr _%$%e192724192742%_)))
                          (if (gx#stx-pair? _%$%tl192726192747%_)
                              (let ((_%$%e192727192750%_
                                     (gx#syntax-e _%$%tl192726192747%_)))
                                (let ((_%$%hd192728192753%_
                                       (##car _%$%e192727192750%_))
                                      (_%$%tl192729192755%_
                                       (##cdr _%$%e192727192750%_)))
                                  (let ((_%id192758%_ _%$%hd192728192753%_))
                                    (if (gx#stx-pair? _%$%tl192729192755%_)
                                        (let ((_%$%e192730192760%_
                                               (gx#syntax-e
                                                _%$%tl192729192755%_)))
                                          (let ((_%$%hd192731192763%_
                                                 (##car _%$%e192730192760%_))
                                                (_%$%tl192732192765%_
                                                 (##cdr _%$%e192730192760%_)))
                                            (let* ((_%binding-id192768%_
                                                    _%$%hd192731192763%_)
                                                   (_%props192770%_
                                                    _%$%tl192732192765%_))
                                              (if (and (gx#identifier?
                                                        _%id192758%_)
                                                       (gx#identifier?
                                                        _%binding-id192768%_)
                                                       (gx#stx-list?
                                                        _%props192770%_))
                                                  (let* ((_%eid192772%_
                                                          (gx#stx-e
                                                           _%binding-id192768%_))
                                                         (_%bind192774%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id192758%_
                                                           _%eid192772%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind192774%_
                                                     _%props192770%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id192758%_)
                         (cons _%eid192772%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E192723192738%_)))))
                                        (_%$%E192723192738%_)))))
                              (_%$%E192723192738%_))))
                      (_%$%E192723192738%_)))))
          (_%$%E192722192777%_))))
    (define gx#core-expand-bind-runtime-properties%
      (lambda (_%stx192653%_)
        (let* ((_%$%e192654192670%_ _%stx192653%_)
               (_%$%E192656192674%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192654192670%_)))
               (_%$%E192655192716%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192654192670%_)
                      (let ((_%$%e192657192678%_
                             (gx#syntax-e _%$%e192654192670%_)))
                        (let ((_%$%hd192658192681%_
                               (##car _%$%e192657192678%_))
                              (_%$%tl192659192683%_
                               (##cdr _%$%e192657192678%_)))
                          (if (gx#stx-pair? _%$%tl192659192683%_)
                              (let ((_%$%e192660192686%_
                                     (gx#syntax-e _%$%tl192659192683%_)))
                                (let ((_%$%hd192661192689%_
                                       (##car _%$%e192660192686%_))
                                      (_%$%tl192662192691%_
                                       (##cdr _%$%e192660192686%_)))
                                  (if (gx#stx-pair? _%$%hd192661192689%_)
                                      (let ((_%$%e192666192694%_
                                             (gx#syntax-e
                                              _%$%hd192661192689%_)))
                                        (let ((_%$%hd192667192697%_
                                               (##car _%$%e192666192694%_))
                                              (_%$%tl192668192699%_
                                               (##cdr _%$%e192666192694%_)))
                                          (let ((_%id192702%_
                                                 _%$%hd192667192697%_))
                                            (if (gx#stx-null?
                                                 _%$%tl192668192699%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl192662192691%_)
                                                    (let ((_%$%e192663192704%_
                                                           (gx#syntax-e
                                                            _%$%tl192662192691%_)))
                                                      (let ((_%$%hd192664192707%_
                                                             (##car _%$%e192663192704%_))
                                                            (_%$%tl192665192709%_
                                                             (##cdr _%$%e192663192704%_)))
                                                        (let ((_%props192712%_
                                                               _%$%hd192664192707%_))
                                                          (if (gx#stx-null?
                                                               _%$%tl192665192709%_)
                                                              (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%id192702%_)
                               (gx#stx-list? _%props192712%_))
                          (let ((_%bind192714%_
                                 (gx#resolve-identifier__0 _%id192702%_)))
                            (if (##structure-instance-of?
                                 _%bind192714%_
                                 'gx#runtime-binding::t)
                                '#!void
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; expected runtime binding"
                                 _%stx192653%_
                                 _%id192702%_
                                 _%bind192714%_))
                            (gx#core-bind-runtime-properties!
                             _%bind192714%_
                             _%props192712%_)
                            (gx#core-cons '%#begin '()))
                          (_%$%E192656192674%_))
                      (_%$%E192656192674%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E192656192674%_))
                                                (_%$%E192656192674%_)))))
                                      (_%$%E192656192674%_))))
                              (_%$%E192656192674%_))))
                      (_%$%E192656192674%_)))))
          (_%$%E192655192716%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind192588%_ _%props192589%_)
        (letrec ((_%eval-prop192591%_
                  (lambda (_%prop192651%_)
                    (gx#eval-expression+1 _%prop192651%_))))
          (let _%loop192593%_ ((_%rest192595%_ _%props192589%_)
                               (_%props192596%_ '()))
            (let* ((_%$%e192597192608%_ _%rest192595%_)
                   (_%$%E192606192612%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e192597192608%_)))
                   (_%$%E192599192616%_
                    (lambda ()
                      (if (gx#stx-null? _%$%e192597192608%_)
                          (if (null? _%props192596%_)
                              '#!void
                              (##structure-set!
                               _%bind192588%_
                               (reverse! _%props192596%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%$%E192606192612%_))))
                   (_%$%E192598192647%_
                    (lambda ()
                      (if (gx#stx-pair? _%$%e192597192608%_)
                          (let ((_%$%e192600192620%_
                                 (gx#syntax-e _%$%e192597192608%_)))
                            (let ((_%$%hd192601192623%_
                                   (##car _%$%e192600192620%_))
                                  (_%$%tl192602192625%_
                                   (##cdr _%$%e192600192620%_)))
                              (let ((_%key192628%_ _%$%hd192601192623%_))
                                (if (gx#stx-pair? _%$%tl192602192625%_)
                                    (let ((_%$%e192603192630%_
                                           (gx#syntax-e _%$%tl192602192625%_)))
                                      (let ((_%$%hd192604192633%_
                                             (##car _%$%e192603192630%_))
                                            (_%$%tl192605192635%_
                                             (##cdr _%$%e192603192630%_)))
                                        (let* ((_%prop192638%_
                                                _%$%hd192604192633%_)
                                               (_%rest192640%_
                                                _%$%tl192605192635%_))
                                          (if (gx#stx-keyword? _%key192628%_)
                                              (let* ((_%key192642%_
                                                      (gx#stx-e _%key192628%_))
                                                     (_%$e192644%_
                                                      _%key192642%_))
                                                (if (eq? 'macro: _%$e192644%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind192588%_
                                                       (if (gx#identifier?
                                                            _%prop192638%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop192638%_)
                                                           (gx#eval-expression+1
                                                            _%prop192638%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop192593%_
                                                       _%rest192640%_
                                                       _%props192596%_))
                                                    (if (eq? 'type:
                                                             _%$e192644%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind192588%_
                                                           (gx#eval-expression+1
                                                            _%prop192638%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop192593%_
                                                           _%rest192640%_
                                                           _%props192596%_))
                                                        (_%loop192593%_
                                                         _%rest192640%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop192638%_)
                                                               (cons _%key192642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props192596%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E192599192616%_)))))
                                    (_%$%E192599192616%_)))))
                          (_%$%E192599192616%_)))))
              (_%$%E192598192647%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx192531%_)
        (let* ((_%$%e192532192545%_ _%stx192531%_)
               (_%$%E192534192549%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192532192545%_)))
               (_%$%E192533192584%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192532192545%_)
                      (let ((_%$%e192535192553%_
                             (gx#syntax-e _%$%e192532192545%_)))
                        (let ((_%$%hd192536192556%_
                               (##car _%$%e192535192553%_))
                              (_%$%tl192537192558%_
                               (##cdr _%$%e192535192553%_)))
                          (if (gx#stx-pair? _%$%tl192537192558%_)
                              (let ((_%$%e192538192561%_
                                     (gx#syntax-e _%$%tl192537192558%_)))
                                (let ((_%$%hd192539192564%_
                                       (##car _%$%e192538192561%_))
                                      (_%$%tl192540192566%_
                                       (##cdr _%$%e192538192561%_)))
                                  (let ((_%id192569%_ _%$%hd192539192564%_))
                                    (if (gx#stx-pair? _%$%tl192540192566%_)
                                        (let ((_%$%e192541192571%_
                                               (gx#syntax-e
                                                _%$%tl192540192566%_)))
                                          (let ((_%$%hd192542192574%_
                                                 (##car _%$%e192541192571%_))
                                                (_%$%tl192543192576%_
                                                 (##cdr _%$%e192541192571%_)))
                                            (let ((_%expr192579%_
                                                   _%$%hd192542192574%_))
                                              (if (gx#stx-null?
                                                   _%$%tl192543192576%_)
                                                  (if (gx#identifier?
                                                       _%id192569%_)
                                                      (let ((_g193879_
                                                             (gx#core-expand-expression+1
                                                              _%expr192579%_)))
                                                        (begin
                                                          (let ((_g193880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g193879_)
                             (##values-length _g193879_)
                             1)))
                    (if (not (##fx= _g193880_ 2))
                        (error "Context expects 2 values" _g193880_)))
                  (let ((_%e-stx192581%_ (##values-ref _g193879_ 0))
                        (_%e192582%_ (##values-ref _g193879_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id192569%_ _%e192582%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id192569%_)
                                   (cons _%e-stx192581%_ '())))
                       (gx#stx-source _%stx192531%_))))))
              (_%$%E192534192549%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E192534192549%_)))))
                                        (_%$%E192534192549%_)))))
                              (_%$%E192534192549%_))))
                      (_%$%E192534192549%_)))))
          (_%$%E192533192584%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx192475%_)
        (let* ((_%$%e192476192489%_ _%stx192475%_)
               (_%$%E192478192493%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192476192489%_)))
               (_%$%E192477192527%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192476192489%_)
                      (let ((_%$%e192479192497%_
                             (gx#syntax-e _%$%e192476192489%_)))
                        (let ((_%$%hd192480192500%_
                               (##car _%$%e192479192497%_))
                              (_%$%tl192481192502%_
                               (##cdr _%$%e192479192497%_)))
                          (if (gx#stx-pair? _%$%tl192481192502%_)
                              (let ((_%$%e192482192505%_
                                     (gx#syntax-e _%$%tl192481192502%_)))
                                (let ((_%$%hd192483192508%_
                                       (##car _%$%e192482192505%_))
                                      (_%$%tl192484192510%_
                                       (##cdr _%$%e192482192505%_)))
                                  (let ((_%id192513%_ _%$%hd192483192508%_))
                                    (if (gx#stx-pair? _%$%tl192484192510%_)
                                        (let ((_%$%e192485192515%_
                                               (gx#syntax-e
                                                _%$%tl192484192510%_)))
                                          (let ((_%$%hd192486192518%_
                                                 (##car _%$%e192485192515%_))
                                                (_%$%tl192487192520%_
                                                 (##cdr _%$%e192485192515%_)))
                                            (let ((_%alias-id192523%_
                                                   _%$%hd192486192518%_))
                                              (if (gx#stx-null?
                                                   _%$%tl192487192520%_)
                                                  (if (and (gx#identifier?
                                                            _%id192513%_)
                                                           (gx#identifier?
                                                            _%alias-id192523%_))
                                                      (let ((_%alias-id192525%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id192523%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id192513%_
                                                         _%alias-id192525%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id192513%_)
                             (cons _%alias-id192525%_ '())))))
              (_%$%E192478192493%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E192478192493%_)))))
                                        (_%$%E192478192493%_)))))
                              (_%$%E192478192493%_))))
                      (_%$%E192478192493%_)))))
          (_%$%E192477192527%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx192418%_ _%wrap?192419%_)
        (let* ((_%$%e192420192430%_ _%stx192418%_)
               (_%$%E192422192434%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192420192430%_)))
               (_%$%E192421192461%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192420192430%_)
                      (let ((_%$%e192423192438%_
                             (gx#syntax-e _%$%e192420192430%_)))
                        (let ((_%$%hd192424192441%_
                               (##car _%$%e192423192438%_))
                              (_%$%tl192425192443%_
                               (##cdr _%$%e192423192438%_)))
                          (if (gx#stx-pair? _%$%tl192425192443%_)
                              (let ((_%$%e192426192446%_
                                     (gx#syntax-e _%$%tl192425192443%_)))
                                (let ((_%$%hd192427192449%_
                                       (##car _%$%e192426192446%_))
                                      (_%$%tl192428192451%_
                                       (##cdr _%$%e192426192446%_)))
                                  (let* ((_%hd192454%_ _%$%hd192427192449%_)
                                         (_%body192456%_ _%$%tl192428192451%_))
                                    (if (gx#core-bind-values? _%hd192454%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd192454%_)
                                           (let ((_%body192459%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd192454%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx192418%_
                                                               _%body192456%_)
                                                              '()))))
                                             (if _%wrap?192419%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body192459%_)
                                                  (gx#stx-source
                                                   _%stx192418%_))
                                                 _%body192459%_)))
                                         gx#current-expander-context
                                         (let ((__obj193862
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj193862)
                                           __obj193862))
                                        (_%$%E192422192434%_)))))
                              (_%$%E192422192434%_))))
                      (_%$%E192422192434%_)))))
          (_%$%E192421192461%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx192468%_)
        (let ((_%wrap?192470%_ '#t))
          (gx#core-expand-lambda%__% _%stx192468%_ _%wrap?192470%_))))
    (define gx#core-expand-lambda%
      (lambda _g193881_
        (let ((_g193882_ (##length _g193881_)))
          (cond ((##fx= _g193882_ 1)
                 (apply gx#core-expand-lambda%__0 _g193881_))
                ((##fx= _g193882_ 2)
                 (apply gx#core-expand-lambda%__% _g193881_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g193881_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx192382%_)
        (let* ((_%$%e192383192390%_ _%stx192382%_)
               (_%$%E192385192394%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192383192390%_)))
               (_%$%E192384192413%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192383192390%_)
                      (let ((_%$%e192386192398%_
                             (gx#syntax-e _%$%e192383192390%_)))
                        (let ((_%$%hd192387192401%_
                               (##car _%$%e192386192398%_))
                              (_%$%tl192388192403%_
                               (##cdr _%$%e192386192398%_)))
                          (let ((_%clauses192406%_ _%$%tl192388192403%_))
                            (if (gx#stx-list? _%clauses192406%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause192408%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause192408%_)
                                       (let ((_%$e192410%_
                                              (gx#stx-source
                                               _%clause192408%_)))
                                         (if _%$e192410%_
                                             _%$e192410%_
                                             (gx#stx-source _%stx192382%_))))
                                      '#f))
                                   _%clauses192406%_))
                                 (gx#stx-source _%stx192382%_))
                                (_%$%E192385192394%_)))))
                      (_%$%E192385192394%_)))))
          (_%$%E192384192413%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx192336%_)
        (let* ((_%$%e192337192347%_ _%stx192336%_)
               (_%$%E192339192351%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192337192347%_)))
               (_%$%E192338192378%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192337192347%_)
                      (let ((_%$%e192340192355%_
                             (gx#syntax-e _%$%e192337192347%_)))
                        (let ((_%$%hd192341192358%_
                               (##car _%$%e192340192355%_))
                              (_%$%tl192342192360%_
                               (##cdr _%$%e192340192355%_)))
                          (if (gx#stx-pair? _%$%tl192342192360%_)
                              (let ((_%$%e192343192363%_
                                     (gx#syntax-e _%$%tl192342192360%_)))
                                (let ((_%$%hd192344192366%_
                                       (##car _%$%e192343192363%_))
                                      (_%$%tl192345192368%_
                                       (##cdr _%$%e192343192363%_)))
                                  (let* ((_%hd192371%_ _%$%hd192344192366%_)
                                         (_%body192373%_ _%$%tl192345192368%_))
                                    (if (gx#core-expand-let-bind? _%hd192371%_)
                                        (let ((_%expressions192375%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd192371%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd192371%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd192371%_
                                                           _%expressions192375%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx192336%_
                         _%body192373%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx192336%_)))
                                           gx#current-expander-context
                                           (let ((__obj193863
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj193863)
                                             __obj193863)))
                                        (_%$%E192339192351%_)))))
                              (_%$%E192339192351%_))))
                      (_%$%E192339192351%_)))))
          (_%$%E192338192378%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx192281%_ _%form192282%_)
        (let* ((_%$%e192283192293%_ _%stx192281%_)
               (_%$%E192285192297%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192283192293%_)))
               (_%$%E192284192322%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192283192293%_)
                      (let ((_%$%e192286192301%_
                             (gx#syntax-e _%$%e192283192293%_)))
                        (let ((_%$%hd192287192304%_
                               (##car _%$%e192286192301%_))
                              (_%$%tl192288192306%_
                               (##cdr _%$%e192286192301%_)))
                          (if (gx#stx-pair? _%$%tl192288192306%_)
                              (let ((_%$%e192289192309%_
                                     (gx#syntax-e _%$%tl192288192306%_)))
                                (let ((_%$%hd192290192312%_
                                       (##car _%$%e192289192309%_))
                                      (_%$%tl192291192314%_
                                       (##cdr _%$%e192289192309%_)))
                                  (let* ((_%hd192317%_ _%$%hd192290192312%_)
                                         (_%body192319%_ _%$%tl192291192314%_))
                                    (if (gx#core-expand-let-bind? _%hd192317%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd192317%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form192282%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd192317%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd192317%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx192281%_
                                                               _%body192319%_)
                                                              '())))
                                            (gx#stx-source _%stx192281%_)))
                                         gx#current-expander-context
                                         (let ((__obj193864
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj193864)
                                           __obj193864))
                                        (_%$%E192285192297%_)))))
                              (_%$%E192285192297%_))))
                      (_%$%E192285192297%_)))))
          (_%$%E192284192322%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx192329%_)
        (let ((_%form192331%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx192329%_ _%form192331%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g193883_
        (let ((_g193884_ (##length _g193883_)))
          (cond ((##fx= _g193884_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g193883_))
                ((##fx= _g193884_ 2)
                 (apply gx#core-expand-letrec-values%__% _g193883_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g193883_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx192278%_)
        (gx#core-expand-letrec-values%__% _%stx192278%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx192235%_)
        (if (gx#stx-list? _%stx192235%_)
            (gx#stx-andmap
             (lambda (_%bind192237%_)
               (let* ((_%$%e192238192248%_ _%bind192237%_)
                      (_%$%E192240192252%_ (lambda () '#f))
                      (_%$%E192239192274%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e192238192248%_)
                             (let ((_%$%e192241192256%_
                                    (gx#syntax-e _%$%e192238192248%_)))
                               (let ((_%$%hd192242192259%_
                                      (##car _%$%e192241192256%_))
                                     (_%$%tl192243192261%_
                                      (##cdr _%$%e192241192256%_)))
                                 (let ((_%hd192264%_ _%$%hd192242192259%_))
                                   (if (gx#stx-pair? _%$%tl192243192261%_)
                                       (let ((_%$%e192244192266%_
                                              (gx#syntax-e
                                               _%$%tl192243192261%_)))
                                         (let ((_%$%hd192245192269%_
                                                (##car _%$%e192244192266%_))
                                               (_%$%tl192246192271%_
                                                (##cdr _%$%e192244192266%_)))
                                           (if (gx#stx-null?
                                                _%$%tl192246192271%_)
                                               (gx#core-bind-values?
                                                _%hd192264%_)
                                               (_%$%E192240192252%_))))
                                       (_%$%E192240192252%_)))))
                             (_%$%E192240192252%_)))))
                 (_%$%E192239192274%_)))
             _%stx192235%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind192194%_)
        (let* ((_%$%e192195192205%_ _%bind192194%_)
               (_%$%E192197192209%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192195192205%_)))
               (_%$%E192196192231%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192195192205%_)
                      (let ((_%$%e192198192213%_
                             (gx#syntax-e _%$%e192195192205%_)))
                        (let ((_%$%hd192199192216%_
                               (##car _%$%e192198192213%_))
                              (_%$%tl192200192218%_
                               (##cdr _%$%e192198192213%_)))
                          (if (gx#stx-pair? _%$%tl192200192218%_)
                              (let ((_%$%e192201192221%_
                                     (gx#syntax-e _%$%tl192200192218%_)))
                                (let ((_%$%hd192202192224%_
                                       (##car _%$%e192201192221%_))
                                      (_%$%tl192203192226%_
                                       (##cdr _%$%e192201192221%_)))
                                  (let ((_%expr192229%_ _%$%hd192202192224%_))
                                    (if (gx#stx-null? _%$%tl192203192226%_)
                                        (gx#core-expand-expression
                                         _%expr192229%_)
                                        (_%$%E192197192209%_)))))
                              (_%$%E192197192209%_))))
                      (_%$%E192197192209%_)))))
          (_%$%E192196192231%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind192153%_)
        (let* ((_%$%e192154192164%_ _%bind192153%_)
               (_%$%E192156192168%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192154192164%_)))
               (_%$%E192155192190%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192154192164%_)
                      (let ((_%$%e192157192172%_
                             (gx#syntax-e _%$%e192154192164%_)))
                        (let ((_%$%hd192158192175%_
                               (##car _%$%e192157192172%_))
                              (_%$%tl192159192177%_
                               (##cdr _%$%e192157192172%_)))
                          (let ((_%hd192180%_ _%$%hd192158192175%_))
                            (if (gx#stx-pair? _%$%tl192159192177%_)
                                (let ((_%$%e192160192182%_
                                       (gx#syntax-e _%$%tl192159192177%_)))
                                  (let ((_%$%hd192161192185%_
                                         (##car _%$%e192160192182%_))
                                        (_%$%tl192162192187%_
                                         (##cdr _%$%e192160192182%_)))
                                    (if (gx#stx-null? _%$%tl192162192187%_)
                                        (gx#core-bind-values!__0 _%hd192180%_)
                                        (_%$%E192156192168%_))))
                                (_%$%E192156192168%_)))))
                      (_%$%E192156192168%_)))))
          (_%$%E192155192190%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind192111%_ _%expr192112%_)
        (let* ((_%$%e192113192123%_ _%bind192111%_)
               (_%$%E192115192127%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192113192123%_)))
               (_%$%E192114192149%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192113192123%_)
                      (let ((_%$%e192116192131%_
                             (gx#syntax-e _%$%e192113192123%_)))
                        (let ((_%$%hd192117192134%_
                               (##car _%$%e192116192131%_))
                              (_%$%tl192118192136%_
                               (##cdr _%$%e192116192131%_)))
                          (let ((_%hd192139%_ _%$%hd192117192134%_))
                            (if (gx#stx-pair? _%$%tl192118192136%_)
                                (let ((_%$%e192119192141%_
                                       (gx#syntax-e _%$%tl192118192136%_)))
                                  (let ((_%$%hd192120192144%_
                                         (##car _%$%e192119192141%_))
                                        (_%$%tl192121192146%_
                                         (##cdr _%$%e192119192141%_)))
                                    (if (gx#stx-null? _%$%tl192121192146%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd192139%_)
                                              (cons _%expr192112%_ '()))
                                        (_%$%E192115192127%_))))
                                (_%$%E192115192127%_)))))
                      (_%$%E192115192127%_)))))
          (_%$%E192114192149%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx192065%_)
        (let* ((_%$%e192066192076%_ _%stx192065%_)
               (_%$%E192068192080%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192066192076%_)))
               (_%$%E192067192107%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192066192076%_)
                      (let ((_%$%e192069192084%_
                             (gx#syntax-e _%$%e192066192076%_)))
                        (let ((_%$%hd192070192087%_
                               (##car _%$%e192069192084%_))
                              (_%$%tl192071192089%_
                               (##cdr _%$%e192069192084%_)))
                          (if (gx#stx-pair? _%$%tl192071192089%_)
                              (let ((_%$%e192072192092%_
                                     (gx#syntax-e _%$%tl192071192089%_)))
                                (let ((_%$%hd192073192095%_
                                       (##car _%$%e192072192092%_))
                                      (_%$%tl192074192097%_
                                       (##cdr _%$%e192072192092%_)))
                                  (let* ((_%hd192100%_ _%$%hd192073192095%_)
                                         (_%body192102%_ _%$%tl192074192097%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd192100%_)
                                        (let ((_%expanders192104%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd192100%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd192100%_
                                              _%expanders192104%_)
                                             (gx#core-expand-local-block
                                              _%stx192065%_
                                              _%body192102%_))
                                           gx#current-expander-context
                                           (let ((__obj193865
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj193865)
                                             __obj193865)))
                                        (_%$%E192068192080%_)))))
                              (_%$%E192068192080%_))))
                      (_%$%E192068192080%_)))))
          (_%$%E192067192107%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx192014%_)
        (let* ((_%$%e192015192025%_ _%stx192014%_)
               (_%$%E192017192029%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192015192025%_)))
               (_%$%E192016192061%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192015192025%_)
                      (let ((_%$%e192018192033%_
                             (gx#syntax-e _%$%e192015192025%_)))
                        (let ((_%$%hd192019192036%_
                               (##car _%$%e192018192033%_))
                              (_%$%tl192020192038%_
                               (##cdr _%$%e192018192033%_)))
                          (if (gx#stx-pair? _%$%tl192020192038%_)
                              (let ((_%$%e192021192041%_
                                     (gx#syntax-e _%$%tl192020192038%_)))
                                (let ((_%$%hd192022192044%_
                                       (##car _%$%e192021192041%_))
                                      (_%$%tl192023192046%_
                                       (##cdr _%$%e192021192041%_)))
                                  (let* ((_%hd192049%_ _%$%hd192022192044%_)
                                         (_%body192051%_ _%$%tl192023192046%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd192049%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd192049%_
                                            (make-list
                                             (gx#stx-length _%hd192049%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%$%g192053192056%_
                                                     _%$%g192054192058%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%$%g192053192056%_
                                               _%$%g192054192058%_
                                               '#t))
                                            _%hd192049%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd192049%_))
                                           (gx#core-expand-local-block
                                            _%stx192014%_
                                            _%body192051%_))
                                         gx#current-expander-context
                                         (let ((__obj193866
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj193866)
                                           __obj193866))
                                        (_%$%E192017192029%_)))))
                              (_%$%E192017192029%_))))
                      (_%$%E192017192029%_)))))
          (_%$%E192016192061%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx191971%_)
        (if (gx#stx-list? _%stx191971%_)
            (gx#stx-andmap
             (lambda (_%bind191973%_)
               (let* ((_%$%e191974191984%_ _%bind191973%_)
                      (_%$%E191976191988%_ (lambda () '#f))
                      (_%$%E191975192010%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e191974191984%_)
                             (let ((_%$%e191977191992%_
                                    (gx#syntax-e _%$%e191974191984%_)))
                               (let ((_%$%hd191978191995%_
                                      (##car _%$%e191977191992%_))
                                     (_%$%tl191979191997%_
                                      (##cdr _%$%e191977191992%_)))
                                 (let ((_%hd192000%_ _%$%hd191978191995%_))
                                   (if (gx#stx-pair? _%$%tl191979191997%_)
                                       (let ((_%$%e191980192002%_
                                              (gx#syntax-e
                                               _%$%tl191979191997%_)))
                                         (let ((_%$%hd191981192005%_
                                                (##car _%$%e191980192002%_))
                                               (_%$%tl191982192007%_
                                                (##cdr _%$%e191980192002%_)))
                                           (if (gx#stx-null?
                                                _%$%tl191982192007%_)
                                               (gx#identifier? _%hd192000%_)
                                               (_%$%E191976191988%_))))
                                       (_%$%E191976191988%_)))))
                             (_%$%E191976191988%_)))))
                 (_%$%E191975192010%_)))
             _%stx191971%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind191927%_)
        (let* ((_%$%e191928191938%_ _%bind191927%_)
               (_%$%E191930191942%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191928191938%_)))
               (_%$%E191929191967%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191928191938%_)
                      (let ((_%$%e191931191946%_
                             (gx#syntax-e _%$%e191928191938%_)))
                        (let ((_%$%hd191932191949%_
                               (##car _%$%e191931191946%_))
                              (_%$%tl191933191951%_
                               (##cdr _%$%e191931191946%_)))
                          (if (gx#stx-pair? _%$%tl191933191951%_)
                              (let ((_%$%e191934191954%_
                                     (gx#syntax-e _%$%tl191933191951%_)))
                                (let ((_%$%hd191935191957%_
                                       (##car _%$%e191934191954%_))
                                      (_%$%tl191936191959%_
                                       (##cdr _%$%e191934191954%_)))
                                  (let ((_%expr191962%_ _%$%hd191935191957%_))
                                    (if (gx#stx-null? _%$%tl191936191959%_)
                                        (let ((_g193885_
                                               (gx#core-expand-expression+1
                                                _%expr191962%_)))
                                          (begin
                                            (let ((_g193886_
                                                   (if (##values? _g193885_)
                                                       (##values-length
                                                        _g193885_)
                                                       1)))
                                              (if (not (##fx= _g193886_ 2))
                                                  (error "Context expects 2 values"
                                                         _g193886_)))
                                            (let ((_%_191964%_
                                                   (##values-ref _g193885_ 0))
                                                  (_%e191965%_
                                                   (##values-ref _g193885_ 1)))
                                              _%e191965%_)))
                                        (_%$%E191930191942%_)))))
                              (_%$%E191930191942%_))))
                      (_%$%E191930191942%_)))))
          (_%$%E191929191967%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind191872%_ _%e191873%_ _%rebind?191874%_)
        (let* ((_%$%e191875191885%_ _%bind191872%_)
               (_%$%E191877191889%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191875191885%_)))
               (_%$%E191876191911%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191875191885%_)
                      (let ((_%$%e191878191893%_
                             (gx#syntax-e _%$%e191875191885%_)))
                        (let ((_%$%hd191879191896%_
                               (##car _%$%e191878191893%_))
                              (_%$%tl191880191898%_
                               (##cdr _%$%e191878191893%_)))
                          (let ((_%id191901%_ _%$%hd191879191896%_))
                            (if (gx#stx-pair? _%$%tl191880191898%_)
                                (let ((_%$%e191881191903%_
                                       (gx#syntax-e _%$%tl191880191898%_)))
                                  (let ((_%$%hd191882191906%_
                                         (##car _%$%e191881191903%_))
                                        (_%$%tl191883191908%_
                                         (##cdr _%$%e191881191903%_)))
                                    (if (gx#stx-null? _%$%tl191883191908%_)
                                        (gx#core-bind-syntax!__1
                                         _%id191901%_
                                         _%e191873%_
                                         _%rebind?191874%_)
                                        (_%$%E191877191889%_))))
                                (_%$%E191877191889%_)))))
                      (_%$%E191877191889%_)))))
          (_%$%E191876191911%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind191918%_ _%e191919%_)
        (let ((_%rebind?191921%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind191918%_
           _%e191919%_
           _%rebind?191921%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g193887_
        (let ((_g193888_ (##length _g193887_)))
          (cond ((##fx= _g193888_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g193887_))
                ((##fx= _g193888_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g193887_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g193887_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx191830%_)
        (let* ((_%$%e191831191841%_ _%stx191830%_)
               (_%$%E191833191845%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191831191841%_)))
               (_%$%E191832191867%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191831191841%_)
                      (let ((_%$%e191834191849%_
                             (gx#syntax-e _%$%e191831191841%_)))
                        (let ((_%$%hd191835191852%_
                               (##car _%$%e191834191849%_))
                              (_%$%tl191836191854%_
                               (##cdr _%$%e191834191849%_)))
                          (if (gx#stx-pair? _%$%tl191836191854%_)
                              (let ((_%$%e191837191857%_
                                     (gx#syntax-e _%$%tl191836191854%_)))
                                (let ((_%$%hd191838191860%_
                                       (##car _%$%e191837191857%_))
                                      (_%$%tl191839191862%_
                                       (##cdr _%$%e191837191857%_)))
                                  (let ((_%expr191865%_ _%$%hd191838191860%_))
                                    (if (gx#stx-null? _%$%tl191839191862%_)
                                        (gx#core-expand-expression
                                         _%expr191865%_)
                                        (_%$%E191833191845%_)))))
                              (_%$%E191833191845%_))))
                      (_%$%E191833191845%_)))))
          (_%$%E191832191867%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx191789%_)
        (let* ((_%$%e191790191800%_ _%stx191789%_)
               (_%$%E191792191804%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191790191800%_)))
               (_%$%E191791191826%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191790191800%_)
                      (let ((_%$%e191793191808%_
                             (gx#syntax-e _%$%e191790191800%_)))
                        (let ((_%$%hd191794191811%_
                               (##car _%$%e191793191808%_))
                              (_%$%tl191795191813%_
                               (##cdr _%$%e191793191808%_)))
                          (if (gx#stx-pair? _%$%tl191795191813%_)
                              (let ((_%$%e191796191816%_
                                     (gx#syntax-e _%$%tl191795191813%_)))
                                (let ((_%$%hd191797191819%_
                                       (##car _%$%e191796191816%_))
                                      (_%$%tl191798191821%_
                                       (##cdr _%$%e191796191816%_)))
                                  (let ((_%e191824%_ _%$%hd191797191819%_))
                                    (if (gx#stx-null? _%$%tl191798191821%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e191824%_)
                                                     '()))
                                         (gx#stx-source _%stx191789%_))
                                        (_%$%E191792191804%_)))))
                              (_%$%E191792191804%_))))
                      (_%$%E191792191804%_)))))
          (_%$%E191791191826%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx191748%_)
        (let* ((_%$%e191749191759%_ _%stx191748%_)
               (_%$%E191751191763%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191749191759%_)))
               (_%$%E191750191785%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191749191759%_)
                      (let ((_%$%e191752191767%_
                             (gx#syntax-e _%$%e191749191759%_)))
                        (let ((_%$%hd191753191770%_
                               (##car _%$%e191752191767%_))
                              (_%$%tl191754191772%_
                               (##cdr _%$%e191752191767%_)))
                          (if (gx#stx-pair? _%$%tl191754191772%_)
                              (let ((_%$%e191755191775%_
                                     (gx#syntax-e _%$%tl191754191772%_)))
                                (let ((_%$%hd191756191778%_
                                       (##car _%$%e191755191775%_))
                                      (_%$%tl191757191780%_
                                       (##cdr _%$%e191755191775%_)))
                                  (let ((_%e191783%_ _%$%hd191756191778%_))
                                    (if (gx#stx-null? _%$%tl191757191780%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e191783%_)
                                                     '()))
                                         (gx#stx-source _%stx191748%_))
                                        (_%$%E191751191763%_)))))
                              (_%$%E191751191763%_))))
                      (_%$%E191751191763%_)))))
          (_%$%E191750191785%_))))
    (define gx#core-expand-call%
      (lambda (_%stx191642%_)
        (letrec ((_%expand-runtime-call191644%_
                  (lambda (_%rator-expr191745%_ _%args191746%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr191745%_
                      (gx#stx-map1 gx#core-expand-expression _%args191746%_))
                     (gx#stx-source _%stx191642%_)))))
          (let* ((_%$%e191645191655%_ _%stx191642%_)
                 (_%$%E191647191659%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e191645191655%_)))
                 (_%$%E191646191741%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e191645191655%_)
                        (let ((_%$%e191648191663%_
                               (gx#syntax-e _%$%e191645191655%_)))
                          (let ((_%$%hd191649191666%_
                                 (##car _%$%e191648191663%_))
                                (_%$%tl191650191668%_
                                 (##cdr _%$%e191648191663%_)))
                            (if (gx#stx-pair? _%$%tl191650191668%_)
                                (let ((_%$%e191651191671%_
                                       (gx#syntax-e _%$%tl191650191668%_)))
                                  (let ((_%$%hd191652191674%_
                                         (##car _%$%e191651191671%_))
                                        (_%$%tl191653191676%_
                                         (##cdr _%$%e191651191671%_)))
                                    (let* ((_%rator191679%_
                                            _%$%hd191652191674%_)
                                           (_%args191681%_
                                            _%$%tl191653191676%_))
                                      (if (gx#stx-list? _%args191681%_)
                                          (let* ((_%rator-expr191683%_
                                                  (gx#core-expand-expression
                                                   _%rator191679%_))
                                                 (_%$%e191684191694%_
                                                  _%rator-expr191683%_)
                                                 (_%$%E191686191698%_
                                                  (lambda ()
                                                    (_%expand-runtime-call191644%_
                                                     _%rator-expr191683%_
                                                     _%args191681%_)))
                                                 (_%$%E191685191737%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%$%e191684191694%_)
                                                        (let ((_%$%e191687191702%_
                                                               (gx#syntax-e
                                                                _%$%e191684191694%_)))
                                                          (let ((_%$%hd191688191705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e191687191702%_))
                        (_%$%tl191689191707%_ (##cdr _%$%e191687191702%_)))
                    (if (and (gx#identifier? _%$%hd191688191705%_)
                             (gx#core-identifier=?
                              _%$%hd191688191705%_
                              '%#ref))
                        (if (gx#stx-pair? _%$%tl191689191707%_)
                            (let ((_%$%e191690191710%_
                                   (gx#syntax-e _%$%tl191689191707%_)))
                              (let ((_%$%hd191691191713%_
                                     (##car _%$%e191690191710%_))
                                    (_%$%tl191692191715%_
                                     (##cdr _%$%e191690191710%_)))
                                (let ((_%id191718%_ _%$%hd191691191713%_))
                                  (if (gx#stx-null? _%$%tl191692191715%_)
                                      (let ((_%$e191720%_
                                             (gx#resolve-identifier__0
                                              _%id191718%_)))
                                        (if _%$e191720%_
                                            (let _%again191725%_ ((_%bind191727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e191720%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_%$e191729%_
                                                     (if (##structure-instance-of?
                                                          _%bind191727%_
                                                          'gx#runtime-binding::t)
                                                         (##unchecked-structure-ref
                                                          _%bind191727%_
                                                          '6
                                                          '#f
                                                          '#f)
                                                         '#f)))
                                                (if _%$e191729%_
                                                    (gx#core-expand-expression
                                                     (gx#stx-wrap-source
                                                      (cons _%$e191729%_
                                                            _%args191681%_)
                                                      (gx#stx-source
                                                       _%stx191642%_)))
                                                    (if (##structure-direct-instance-of?
                                                         _%bind191727%_
                                                         'gx#import-binding::t)
                                                        (_%again191725%_
                                                         (##unchecked-structure-ref
                                                          _%bind191727%_
                                                          '5
                                                          '#f
                                                          '#f))
                                                        (_%expand-runtime-call191644%_
                                                         _%rator-expr191683%_
                                                         _%args191681%_)))))
                                            (_%expand-runtime-call191644%_
                                             _%rator-expr191683%_
                                             _%args191681%_)))
                                      (_%$%E191686191698%_)))))
                            (_%$%E191686191698%_))
                        (_%$%E191686191698%_))))
                (_%$%E191686191698%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E191685191737%_))
                                          (_%$%E191647191659%_)))))
                                (_%$%E191647191659%_))))
                        (_%$%E191647191659%_)))))
            (_%$%E191646191741%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx191575%_)
        (let* ((_%$%e191576191592%_ _%stx191575%_)
               (_%$%E191578191596%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191576191592%_)))
               (_%$%E191577191638%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191576191592%_)
                      (let ((_%$%e191579191600%_
                             (gx#syntax-e _%$%e191576191592%_)))
                        (let ((_%$%hd191580191603%_
                               (##car _%$%e191579191600%_))
                              (_%$%tl191581191605%_
                               (##cdr _%$%e191579191600%_)))
                          (if (gx#stx-pair? _%$%tl191581191605%_)
                              (let ((_%$%e191582191608%_
                                     (gx#syntax-e _%$%tl191581191605%_)))
                                (let ((_%$%hd191583191611%_
                                       (##car _%$%e191582191608%_))
                                      (_%$%tl191584191613%_
                                       (##cdr _%$%e191582191608%_)))
                                  (let ((_%test191616%_ _%$%hd191583191611%_))
                                    (if (gx#stx-pair? _%$%tl191584191613%_)
                                        (let ((_%$%e191585191618%_
                                               (gx#syntax-e
                                                _%$%tl191584191613%_)))
                                          (let ((_%$%hd191586191621%_
                                                 (##car _%$%e191585191618%_))
                                                (_%$%tl191587191623%_
                                                 (##cdr _%$%e191585191618%_)))
                                            (let ((_%K191626%_
                                                   _%$%hd191586191621%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl191587191623%_)
                                                  (let ((_%$%e191588191628%_
                                                         (gx#syntax-e
                                                          _%$%tl191587191623%_)))
                                                    (let ((_%$%hd191589191631%_
                                                           (##car _%$%e191588191628%_))
                                                          (_%$%tl191590191633%_
                                                           (##cdr _%$%e191588191628%_)))
                                                      (let ((_%E191636%_
                                                             _%$%hd191589191631%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl191590191633%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test191616%_)
                                 (cons (gx#core-expand-expression _%K191626%_)
                                       (cons (gx#core-expand-expression
                                              _%E191636%_)
                                             '()))))
                     (gx#stx-source _%stx191575%_))
                    (_%$%E191578191596%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E191578191596%_)))))
                                        (_%$%E191578191596%_)))))
                              (_%$%E191578191596%_))))
                      (_%$%E191578191596%_)))))
          (_%$%E191577191638%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx191534%_)
        (let* ((_%$%e191535191545%_ _%stx191534%_)
               (_%$%E191537191549%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191535191545%_)))
               (_%$%E191536191571%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191535191545%_)
                      (let ((_%$%e191538191553%_
                             (gx#syntax-e _%$%e191535191545%_)))
                        (let ((_%$%hd191539191556%_
                               (##car _%$%e191538191553%_))
                              (_%$%tl191540191558%_
                               (##cdr _%$%e191538191553%_)))
                          (if (gx#stx-pair? _%$%tl191540191558%_)
                              (let ((_%$%e191541191561%_
                                     (gx#syntax-e _%$%tl191540191558%_)))
                                (let ((_%$%hd191542191564%_
                                       (##car _%$%e191541191561%_))
                                      (_%$%tl191543191566%_
                                       (##cdr _%$%e191541191561%_)))
                                  (let ((_%id191569%_ _%$%hd191542191564%_))
                                    (if (gx#stx-null? _%$%tl191543191566%_)
                                        (if (gx#identifier? _%id191569%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id191569%_
                                                          _%stx191534%_)
                                                         '()))
                                             (gx#stx-source _%stx191534%_))
                                            (_%$%E191537191549%_))
                                        (_%$%E191537191549%_)))))
                              (_%$%E191537191549%_))))
                      (_%$%E191537191549%_)))))
          (_%$%E191536191571%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx191480%_)
        (let* ((_%$%e191481191494%_ _%stx191480%_)
               (_%$%E191483191498%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191481191494%_)))
               (_%$%E191482191530%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191481191494%_)
                      (let ((_%$%e191484191502%_
                             (gx#syntax-e _%$%e191481191494%_)))
                        (let ((_%$%hd191485191505%_
                               (##car _%$%e191484191502%_))
                              (_%$%tl191486191507%_
                               (##cdr _%$%e191484191502%_)))
                          (if (gx#stx-pair? _%$%tl191486191507%_)
                              (let ((_%$%e191487191510%_
                                     (gx#syntax-e _%$%tl191486191507%_)))
                                (let ((_%$%hd191488191513%_
                                       (##car _%$%e191487191510%_))
                                      (_%$%tl191489191515%_
                                       (##cdr _%$%e191487191510%_)))
                                  (let ((_%id191518%_ _%$%hd191488191513%_))
                                    (if (gx#stx-pair? _%$%tl191489191515%_)
                                        (let ((_%$%e191490191520%_
                                               (gx#syntax-e
                                                _%$%tl191489191515%_)))
                                          (let ((_%$%hd191491191523%_
                                                 (##car _%$%e191490191520%_))
                                                (_%$%tl191492191525%_
                                                 (##cdr _%$%e191490191520%_)))
                                            (let ((_%expr191528%_
                                                   _%$%hd191491191523%_))
                                              (if (gx#stx-null?
                                                   _%$%tl191492191525%_)
                                                  (if (gx#identifier?
                                                       _%id191518%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id191518%_
                            _%stx191480%_)
                           (cons (gx#core-expand-expression _%expr191528%_)
                                 '())))
               (gx#stx-source _%stx191480%_))
              (_%$%E191483191498%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E191483191498%_)))))
                                        (_%$%E191483191498%_)))))
                              (_%$%E191483191498%_))))
                      (_%$%E191483191498%_)))))
          (_%$%E191482191530%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx191325%_)
        (letrec ((_%generate191327%_
                  (lambda (_%body191357%_)
                    (let _%lp191359%_ ((_%rest191361%_ _%body191357%_)
                                       (_%ns191362%_
                                        (gx#core-context-namespace__0))
                                       (_%r191363%_ '()))
                      (let* ((_%$%e191364191379%_ _%rest191361%_)
                             (_%$%E191377191383%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%$%e191364191379%_)))
                             (_%$%E191373191387%_
                              (lambda ()
                                (if (gx#stx-null? _%$%e191364191379%_)
                                    (reverse _%r191363%_)
                                    (_%$%E191377191383%_))))
                             (_%$%E191366191444%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e191364191379%_)
                                    (let ((_%$%e191374191391%_
                                           (gx#syntax-e _%$%e191364191379%_)))
                                      (let ((_%$%hd191375191394%_
                                             (##car _%$%e191374191391%_))
                                            (_%$%tl191376191396%_
                                             (##cdr _%$%e191374191391%_)))
                                        (let* ((_%hd191399%_
                                                _%$%hd191375191394%_)
                                               (_%rest191401%_
                                                _%$%tl191376191396%_))
                                          (if (gx#identifier? _%hd191399%_)
                                              (_%lp191359%_
                                               _%rest191401%_
                                               _%ns191362%_
                                               (cons (cons _%hd191399%_
                                                           (cons (if _%ns191362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd191399%_
                              _%ns191362%_
                              '"#"
                              _%hd191399%_)
                             _%hd191399%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r191363%_))
                                              (let* ((_%$%e191402191412%_
                                                      _%hd191399%_)
                                                     (_%$%E191404191416%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%$%e191402191412%_)))
                                                     (_%$%E191403191440%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%$%e191402191412%_)
                                                            (let ((_%$%e191405191420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%e191402191412%_)))
                      (let ((_%$%hd191406191423%_ (##car _%$%e191405191420%_))
                            (_%$%tl191407191425%_ (##cdr _%$%e191405191420%_)))
                        (let ((_%id191428%_ _%$%hd191406191423%_))
                          (if (gx#stx-pair? _%$%tl191407191425%_)
                              (let ((_%$%e191408191430%_
                                     (gx#syntax-e _%$%tl191407191425%_)))
                                (let ((_%$%hd191409191433%_
                                       (##car _%$%e191408191430%_))
                                      (_%$%tl191410191435%_
                                       (##cdr _%$%e191408191430%_)))
                                  (let ((_%eid191438%_ _%$%hd191409191433%_))
                                    (if (gx#stx-null? _%$%tl191410191435%_)
                                        (if (and (gx#identifier? _%id191428%_)
                                                 (gx#identifier?
                                                  _%eid191438%_))
                                            (_%lp191359%_
                                             _%rest191401%_
                                             _%ns191362%_
                                             (cons (cons _%id191428%_
                                                         (cons _%eid191438%_
                                                               '()))
                                                   _%r191363%_))
                                            (_%$%E191404191416%_))
                                        (_%$%E191404191416%_)))))
                              (_%$%E191404191416%_)))))
                    (_%$%E191404191416%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E191403191440%_))))))
                                    (_%$%E191373191387%_))))
                             (_%$%E191365191476%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e191364191379%_)
                                    (let ((_%$%e191367191448%_
                                           (gx#syntax-e _%$%e191364191379%_)))
                                      (let ((_%$%hd191368191451%_
                                             (##car _%$%e191367191448%_))
                                            (_%$%tl191369191453%_
                                             (##cdr _%$%e191367191448%_)))
                                        (if (eq? (gx#stx-e
                                                  _%$%hd191368191451%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%$%tl191369191453%_)
                                                (let ((_%$%e191370191456%_
                                                       (gx#syntax-e
                                                        _%$%tl191369191453%_)))
                                                  (let ((_%$%hd191371191459%_
                                                         (##car _%$%e191370191456%_))
                                                        (_%$%tl191372191461%_
                                                         (##cdr _%$%e191370191456%_)))
                                                    (let* ((_%ns191464%_
                                                            _%$%hd191371191459%_)
                                                           (_%rest191466%_
                                                            _%$%tl191372191461%_)
                                                           (_%ns191474%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns191464%_)
                        (symbol->string (gx#stx-e _%ns191464%_))
                        (if (or (gx#stx-string? _%ns191464%_)
                                (gx#stx-false? _%ns191464%_))
                            (gx#stx-e _%ns191464%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx191325%_
                             _%ns191464%_)))))
              (_%lp191359%_ _%rest191466%_ _%ns191474%_ _%r191363%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E191366191444%_))
                                            (_%$%E191366191444%_))))
                                    (_%$%E191366191444%_)))))
                        (_%$%E191365191476%_))))))
          (let* ((_%$%e191328191335%_ _%stx191325%_)
                 (_%$%E191330191339%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e191328191335%_)))
                 (_%$%E191329191353%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e191328191335%_)
                        (let ((_%$%e191331191343%_
                               (gx#syntax-e _%$%e191328191335%_)))
                          (let ((_%$%hd191332191346%_
                                 (##car _%$%e191331191343%_))
                                (_%$%tl191333191348%_
                                 (##cdr _%$%e191331191343%_)))
                            (let ((_%body191351%_ _%$%tl191333191348%_))
                              (if (gx#stx-list? _%body191351%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate191327%_ _%body191351%_))
                                  (_%$%E191330191339%_)))))
                        (_%$%E191330191339%_)))))
            (_%$%E191329191353%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx191282%_)
        (let* ((_%$%e191283191293%_ _%stx191282%_)
               (_%$%E191285191297%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191283191293%_)))
               (_%$%E191284191321%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191283191293%_)
                      (let ((_%$%e191286191301%_
                             (gx#syntax-e _%$%e191283191293%_)))
                        (let ((_%$%hd191287191304%_
                               (##car _%$%e191286191301%_))
                              (_%$%tl191288191306%_
                               (##cdr _%$%e191286191301%_)))
                          (if (gx#stx-pair? _%$%tl191288191306%_)
                              (let ((_%$%e191289191309%_
                                     (gx#syntax-e _%$%tl191288191306%_)))
                                (let ((_%$%hd191290191312%_
                                       (##car _%$%e191289191309%_))
                                      (_%$%tl191291191314%_
                                       (##cdr _%$%e191289191309%_)))
                                  (let* ((_%hd191317%_ _%$%hd191290191312%_)
                                         (_%body191319%_ _%$%tl191291191314%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd191317%_)
                                             (gx#stx-list? _%body191319%_)
                                             (not (gx#stx-null?
                                                   _%body191319%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd191317%_)
                                         _%body191319%_)
                                        (_%$%E191285191297%_)))))
                              (_%$%E191285191297%_))))
                      (_%$%E191285191297%_)))))
          (_%$%E191284191321%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx191218%_)
        (letrec ((_%generate191220%_
                  (lambda (_%clause191250%_)
                    (let* ((_%$%e191251191258%_ _%clause191250%_)
                           (_%$%E191253191262%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx191218%_
                               _%clause191250%_)))
                           (_%$%E191252191278%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191251191258%_)
                                  (let ((_%$%e191254191266%_
                                         (gx#syntax-e _%$%e191251191258%_)))
                                    (let ((_%$%hd191255191269%_
                                           (##car _%$%e191254191266%_))
                                          (_%$%tl191256191271%_
                                           (##cdr _%$%e191254191266%_)))
                                      (let* ((_%hd191274%_
                                              _%$%hd191255191269%_)
                                             (_%body191276%_
                                              _%$%tl191256191271%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd191274%_)
                                                 (gx#stx-list? _%body191276%_)
                                                 (not (gx#stx-null?
                                                       _%body191276%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd191274%_)
                                                   _%body191276%_)
                                             (gx#stx-source _%clause191250%_))
                                            (_%$%E191253191262%_)))))
                                  (_%$%E191253191262%_)))))
                      (_%$%E191252191278%_)))))
          (let* ((_%$%e191221191228%_ _%stx191218%_)
                 (_%$%E191223191232%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e191221191228%_)))
                 (_%$%E191222191246%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e191221191228%_)
                        (let ((_%$%e191224191236%_
                               (gx#syntax-e _%$%e191221191228%_)))
                          (let ((_%$%hd191225191239%_
                                 (##car _%$%e191224191236%_))
                                (_%$%tl191226191241%_
                                 (##cdr _%$%e191224191236%_)))
                            (let ((_%clauses191244%_ _%$%tl191226191241%_))
                              (if (gx#stx-list? _%clauses191244%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate191220%_
                                    _%clauses191244%_))
                                  (_%$%E191223191232%_)))))
                        (_%$%E191223191232%_)))))
            (_%$%E191222191246%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx191119%_ _%form191120%_)
        (letrec ((_%generate191122%_
                  (lambda (_%bind191165%_)
                    (let* ((_%$%e191166191176%_ _%bind191165%_)
                           (_%$%E191168191180%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx191119%_
                               _%bind191165%_)))
                           (_%$%E191167191204%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191166191176%_)
                                  (let ((_%$%e191169191184%_
                                         (gx#syntax-e _%$%e191166191176%_)))
                                    (let ((_%$%hd191170191187%_
                                           (##car _%$%e191169191184%_))
                                          (_%$%tl191171191189%_
                                           (##cdr _%$%e191169191184%_)))
                                      (let ((_%ids191192%_
                                             _%$%hd191170191187%_))
                                        (if (gx#stx-pair? _%$%tl191171191189%_)
                                            (let ((_%$%e191172191194%_
                                                   (gx#syntax-e
                                                    _%$%tl191171191189%_)))
                                              (let ((_%$%hd191173191197%_
                                                     (##car _%$%e191172191194%_))
                                                    (_%$%tl191174191199%_
                                                     (##cdr _%$%e191172191194%_)))
                                                (let ((_%expr191202%_
                                                       _%$%hd191173191197%_))
                                                  (if (gx#stx-null?
                                                       _%$%tl191174191199%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids191192%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids191192%_)
                        (cons _%expr191202%_ '()))
                  (_%$%E191168191180%_))
              (_%$%E191168191180%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E191168191180%_)))))
                                  (_%$%E191168191180%_)))))
                      (_%$%E191167191204%_)))))
          (let* ((_%$%e191123191133%_ _%stx191119%_)
                 (_%$%E191125191137%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e191123191133%_)))
                 (_%$%E191124191161%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e191123191133%_)
                        (let ((_%$%e191126191141%_
                               (gx#syntax-e _%$%e191123191133%_)))
                          (let ((_%$%hd191127191144%_
                                 (##car _%$%e191126191141%_))
                                (_%$%tl191128191146%_
                                 (##cdr _%$%e191126191141%_)))
                            (if (gx#stx-pair? _%$%tl191128191146%_)
                                (let ((_%$%e191129191149%_
                                       (gx#syntax-e _%$%tl191128191146%_)))
                                  (let ((_%$%hd191130191152%_
                                         (##car _%$%e191129191149%_))
                                        (_%$%tl191131191154%_
                                         (##cdr _%$%e191129191149%_)))
                                    (let* ((_%hd191157%_ _%$%hd191130191152%_)
                                           (_%body191159%_
                                            _%$%tl191131191154%_))
                                      (if (and (gx#stx-list? _%hd191157%_)
                                               (gx#stx-list? _%body191159%_)
                                               (not (gx#stx-null?
                                                     _%body191159%_)))
                                          (gx#core-cons*
                                           _%form191120%_
                                           (gx#stx-map1
                                            _%generate191122%_
                                            _%hd191157%_)
                                           _%body191159%_)
                                          (_%$%E191125191137%_)))))
                                (_%$%E191125191137%_))))
                        (_%$%E191125191137%_)))))
            (_%$%E191124191161%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx191211%_)
        (let ((_%form191213%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx191211%_ _%form191213%_))))
    (define gx#macro-expand-let-values
      (lambda _g193889_
        (let ((_g193890_ (##length _g193889_)))
          (cond ((##fx= _g193890_ 1)
                 (apply gx#macro-expand-let-values__0 _g193889_))
                ((##fx= _g193890_ 2)
                 (apply gx#macro-expand-let-values__% _g193889_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g193889_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx191116%_)
        (gx#macro-expand-let-values__% _%stx191116%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx191114%_)
        (gx#macro-expand-let-values__% _%stx191114%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx191005%_)
        (let* ((_%$%e191006191032%_ _%stx191005%_)
               (_%$%E191018191036%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191006191032%_)))
               (_%$%E191008191078%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191006191032%_)
                      (let ((_%$%e191019191040%_
                             (gx#syntax-e _%$%e191006191032%_)))
                        (let ((_%$%hd191020191043%_
                               (##car _%$%e191019191040%_))
                              (_%$%tl191021191045%_
                               (##cdr _%$%e191019191040%_)))
                          (if (gx#stx-pair? _%$%tl191021191045%_)
                              (let ((_%$%e191022191048%_
                                     (gx#syntax-e _%$%tl191021191045%_)))
                                (let ((_%$%hd191023191051%_
                                       (##car _%$%e191022191048%_))
                                      (_%$%tl191024191053%_
                                       (##cdr _%$%e191022191048%_)))
                                  (let ((_%test191056%_ _%$%hd191023191051%_))
                                    (if (gx#stx-pair? _%$%tl191024191053%_)
                                        (let ((_%$%e191025191058%_
                                               (gx#syntax-e
                                                _%$%tl191024191053%_)))
                                          (let ((_%$%hd191026191061%_
                                                 (##car _%$%e191025191058%_))
                                                (_%$%tl191027191063%_
                                                 (##cdr _%$%e191025191058%_)))
                                            (let ((_%K191066%_
                                                   _%$%hd191026191061%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl191027191063%_)
                                                  (let ((_%$%e191028191068%_
                                                         (gx#syntax-e
                                                          _%$%tl191027191063%_)))
                                                    (let ((_%$%hd191029191071%_
                                                           (##car _%$%e191028191068%_))
                                                          (_%$%tl191030191073%_
                                                           (##cdr _%$%e191028191068%_)))
                                                      (let ((_%E191076%_
                                                             _%$%hd191029191071%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl191030191073%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test191056%_
                                                             _%K191066%_
                                                             _%E191076%_)
                                                            (_%$%E191018191036%_)))))
                                                  (_%$%E191018191036%_)))))
                                        (_%$%E191018191036%_)))))
                              (_%$%E191018191036%_))))
                      (_%$%E191018191036%_))))
               (_%$%E191007191110%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191006191032%_)
                      (let ((_%$%e191009191082%_
                             (gx#syntax-e _%$%e191006191032%_)))
                        (let ((_%$%hd191010191085%_
                               (##car _%$%e191009191082%_))
                              (_%$%tl191011191087%_
                               (##cdr _%$%e191009191082%_)))
                          (if (gx#stx-pair? _%$%tl191011191087%_)
                              (let ((_%$%e191012191090%_
                                     (gx#syntax-e _%$%tl191011191087%_)))
                                (let ((_%$%hd191013191093%_
                                       (##car _%$%e191012191090%_))
                                      (_%$%tl191014191095%_
                                       (##cdr _%$%e191012191090%_)))
                                  (let ((_%test191098%_ _%$%hd191013191093%_))
                                    (if (gx#stx-pair? _%$%tl191014191095%_)
                                        (let ((_%$%e191015191100%_
                                               (gx#syntax-e
                                                _%$%tl191014191095%_)))
                                          (let ((_%$%hd191016191103%_
                                                 (##car _%$%e191015191100%_))
                                                (_%$%tl191017191105%_
                                                 (##cdr _%$%e191015191100%_)))
                                            (let ((_%K191108%_
                                                   _%$%hd191016191103%_))
                                              (if (gx#stx-null?
                                                   _%$%tl191017191105%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test191098%_
                                                   _%K191108%_
                                                   '#!void)
                                                  (_%$%E191008191078%_)))))
                                        (_%$%E191008191078%_)))))
                              (_%$%E191008191078%_))))
                      (_%$%E191008191078%_)))))
          (_%$%E191007191110%_))))
    (define gx#free-identifier=?
      (lambda (_%xid190990%_ _%yid190991%_)
        (let ((_%xe190993%_ (gx#resolve-identifier__0 _%xid190990%_))
              (_%ye190994%_ (gx#resolve-identifier__0 _%yid190991%_)))
          (if (and _%xe190993%_ _%ye190994%_)
              (let ((_%$e190997%_ (eq? _%xe190993%_ _%ye190994%_)))
                (if _%$e190997%_
                    _%$e190997%_
                    (if (##structure-instance-of? _%xe190993%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye190994%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe190993%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye190994%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe190993%_ _%ye190994%_)
                  '#f
                  (gx#stx-eq? _%xid190990%_ _%yid190991%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid190971%_ _%yid190972%_)
        (letrec ((_%context190974%_
                  (lambda (_%e190988%_)
                    (if (##structure-direct-instance-of?
                         _%e190988%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e190988%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks190975%_
                  (lambda (_%e190983%_)
                    (if (symbol? _%e190983%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e190983%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e190983%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e190983%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap190976%_
                  (lambda (_%e190981%_)
                    (if (symbol? _%e190981%_)
                        _%e190981%_
                        (gx#syntax-local-unwrap _%e190981%_)))))
          (let ((_%x190978%_ (_%unwrap190976%_ _%xid190971%_))
                (_%y190979%_ (_%unwrap190976%_ _%yid190972%_)))
            (if (gx#stx-eq? _%x190978%_ _%y190979%_)
                (if (eq? (_%context190974%_ _%x190978%_)
                         (_%context190974%_ _%y190979%_))
                    (equal? (_%marks190975%_ _%x190978%_)
                            (_%marks190975%_ _%y190979%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx190969%_)
        (if (gx#identifier? _%stx190969%_)
            (gx#core-identifier=? _%stx190969%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx190967%_)
        (if (gx#identifier? _%stx190967%_)
            (gx#core-identifier=? _%stx190967%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx190910%_ _%where190911%_)
        (let _%lp190913%_ ((_%rest190915%_ (gx#syntax->list _%stx190910%_)))
          (let* ((_%$%rest190916190924%_ _%rest190915%_)
                 (_%$%else190918190932%_ (lambda () '#t))
                 (_%$%K190920190945%_
                  (lambda (_%rest190935%_ _%hd190936%_)
                    (if (gx#identifier? _%hd190936%_)
                        (if (__find (lambda (_%$%g190938190940%_)
                                      (gx#bound-identifier=?
                                       _%$%g190938190940%_
                                       _%hd190936%_))
                                    _%rest190935%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where190911%_
                             _%hd190936%_)
                            (_%lp190913%_ _%rest190935%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where190911%_
                         _%hd190936%_)))))
            (if (pair? _%$%rest190916190924%_)
                (let ((_%$%hd190921190948%_ (##car _%$%rest190916190924%_))
                      (_%$%tl190922190950%_ (##cdr _%$%rest190916190924%_)))
                  (let* ((_%hd190953%_ _%$%hd190921190948%_)
                         (_%rest190955%_ _%$%tl190922190950%_))
                    (_%$%K190920190945%_ _%rest190955%_ _%hd190953%_)))
                (_%$%else190918190932%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx190960%_)
        (let ((_%where190962%_ _%stx190960%_))
          (gx#check-duplicate-identifiers__% _%stx190960%_ _%where190962%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g193891_
        (let ((_g193892_ (##length _g193891_)))
          (cond ((##fx= _g193892_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g193891_))
                ((##fx= _g193892_ 2)
                 (apply gx#check-duplicate-identifiers__% _g193891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g193891_))))))
    (define gx#core-bind-values?
      (lambda (_%stx190902%_)
        (gx#stx-andmap
         (lambda (_%x190904%_)
           (let ((_%$e190906%_ (gx#identifier? _%x190904%_)))
             (if _%$e190906%_ _%$e190906%_ (gx#stx-false? _%x190904%_))))
         _%stx190902%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx190866%_ _%rebind?190867%_ _%phi190868%_ _%ctx190869%_)
        (gx#stx-for-each1
         (lambda (_%id190871%_)
           (if (gx#identifier? _%id190871%_)
               (gx#core-bind-runtime!__%
                _%id190871%_
                _%rebind?190867%_
                _%phi190868%_
                _%ctx190869%_)
               '#!void))
         _%stx190866%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx190876%_)
        (let* ((_%rebind?190878%_ '#f)
               (_%phi190880%_ (gx#current-expander-phi))
               (_%ctx190882%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx190876%_
           _%rebind?190878%_
           _%phi190880%_
           _%ctx190882%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx190884%_ _%rebind?190885%_)
        (let* ((_%phi190887%_ (gx#current-expander-phi))
               (_%ctx190889%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx190884%_
           _%rebind?190885%_
           _%phi190887%_
           _%ctx190889%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx190891%_ _%rebind?190892%_ _%phi190893%_)
        (let ((_%ctx190895%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx190891%_
           _%rebind?190892%_
           _%phi190893%_
           _%ctx190895%_))))
    (define gx#core-bind-values!
      (lambda _g193893_
        (let ((_g193894_ (##length _g193893_)))
          (cond ((##fx= _g193894_ 1) (apply gx#core-bind-values!__0 _g193893_))
                ((##fx= _g193894_ 2) (apply gx#core-bind-values!__1 _g193893_))
                ((##fx= _g193894_ 3) (apply gx#core-bind-values!__2 _g193893_))
                ((##fx= _g193894_ 4) (apply gx#core-bind-values!__% _g193893_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g193893_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx190861%_)
        (gx#stx-map1
         (lambda (_%x190863%_)
           (if (gx#identifier? _%x190863%_)
               (gx#core-quote-syntax__0 _%x190863%_)
               '#f))
         _%stx190861%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx190854%_)
        (if (gx#identifier? _%stx190854%_)
            (let* ((_%bind190856%_ (gx#resolve-identifier__0 _%stx190854%_))
                   (_%$e190858%_ (not _%bind190856%_)))
              (if _%$e190858%_
                  _%$e190858%_
                  (##structure-instance-of?
                   _%bind190856%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id190843%_ _%form190844%_)
        (let ((_%bind190846%_ (gx#resolve-identifier__0 _%id190843%_)))
          (if (##structure-instance-of? _%bind190846%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id190843%_)
              (if _%bind190846%_
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form190844%_
                   _%id190843%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id190843%_)))
                      (gx#core-quote-syntax__0 _%id190843%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form190844%_
                       _%id190843%_)))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id190798%_ _%rebind?190799%_ _%phi190800%_ _%ctx190801%_)
        (let* ((_%key190803%_ (gx#core-identifier-key _%id190798%_))
               (_%eid190805%_
                (gx#make-binding-id__%
                 _%key190803%_
                 '#f
                 _%phi190800%_
                 _%ctx190801%_))
               (_%bind190811%_
                (if (##structure-instance-of?
                     _%ctx190801%_
                     'gx#module-context::t)
                    (let ((__obj193870
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
                       __obj193870
                       _%eid190805%_
                       _%key190803%_
                       _%phi190800%_
                       _%ctx190801%_)
                      __obj193870)
                    (if (##structure-instance-of?
                         _%ctx190801%_
                         'gx#top-context::t)
                        (let ((__obj193869
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj193869
                           _%eid190805%_
                           _%key190803%_
                           _%phi190800%_)
                          __obj193869)
                        (if (##structure-instance-of?
                             _%ctx190801%_
                             'gx#local-context::t)
                            (let ((__obj193868
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj193868
                               _%eid190805%_
                               _%key190803%_
                               _%phi190800%_)
                              __obj193868)
                            (let ((__obj193867
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj193867
                               _%eid190805%_
                               _%key190803%_
                               _%phi190800%_)
                              __obj193867))))))
          (gx#bind-identifier!__%
           _%id190798%_
           _%bind190811%_
           _%rebind?190799%_
           _%phi190800%_
           _%ctx190801%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id190817%_)
        (let* ((_%rebind?190819%_ '#f)
               (_%phi190821%_ (gx#current-expander-phi))
               (_%ctx190823%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id190817%_
           _%rebind?190819%_
           _%phi190821%_
           _%ctx190823%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id190825%_ _%rebind?190826%_)
        (let* ((_%phi190828%_ (gx#current-expander-phi))
               (_%ctx190830%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id190825%_
           _%rebind?190826%_
           _%phi190828%_
           _%ctx190830%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id190832%_ _%rebind?190833%_ _%phi190834%_)
        (let ((_%ctx190836%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id190832%_
           _%rebind?190833%_
           _%phi190834%_
           _%ctx190836%_))))
    (define gx#core-bind-runtime!
      (lambda _g193895_
        (let ((_g193896_ (##length _g193895_)))
          (cond ((##fx= _g193896_ 1)
                 (apply gx#core-bind-runtime!__0 _g193895_))
                ((##fx= _g193896_ 2)
                 (apply gx#core-bind-runtime!__1 _g193895_))
                ((##fx= _g193896_ 3)
                 (apply gx#core-bind-runtime!__2 _g193895_))
                ((##fx= _g193896_ 4)
                 (apply gx#core-bind-runtime!__% _g193895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g193895_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id190750%_
               _%eid190751%_
               _%rebind?190752%_
               _%phi190753%_
               _%ctx190754%_)
        (let* ((_%key190756%_ (gx#core-identifier-key _%id190750%_))
               (_%bind190761%_
                (if (##structure-instance-of?
                     _%ctx190754%_
                     'gx#module-context::t)
                    (let ((__obj193873
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
                       __obj193873
                       _%eid190751%_
                       _%key190756%_
                       _%phi190753%_
                       _%ctx190754%_)
                      __obj193873)
                    (if (##structure-instance-of?
                         _%ctx190754%_
                         'gx#top-context::t)
                        (let ((__obj193872
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj193872
                           _%eid190751%_
                           _%key190756%_
                           _%phi190753%_)
                          __obj193872)
                        (let ((__obj193871
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj193871
                           _%eid190751%_
                           _%key190756%_
                           _%phi190753%_)
                          __obj193871)))))
          (gx#bind-identifier!__%
           _%id190750%_
           _%bind190761%_
           _%rebind?190752%_
           _%phi190753%_
           _%ctx190754%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id190767%_ _%eid190768%_)
        (let* ((_%rebind?190770%_ '#f)
               (_%phi190772%_ (gx#current-expander-phi))
               (_%ctx190774%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id190767%_
           _%eid190768%_
           _%rebind?190770%_
           _%phi190772%_
           _%ctx190774%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id190776%_ _%eid190777%_ _%rebind?190778%_)
        (let* ((_%phi190780%_ (gx#current-expander-phi))
               (_%ctx190782%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id190776%_
           _%eid190777%_
           _%rebind?190778%_
           _%phi190780%_
           _%ctx190782%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id190784%_ _%eid190785%_ _%rebind?190786%_ _%phi190787%_)
        (let ((_%ctx190789%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id190784%_
           _%eid190785%_
           _%rebind?190786%_
           _%phi190787%_
           _%ctx190789%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g193897_
        (let ((_g193898_ (##length _g193897_)))
          (cond ((##fx= _g193898_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g193897_))
                ((##fx= _g193898_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g193897_))
                ((##fx= _g193898_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g193897_))
                ((##fx= _g193898_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g193897_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g193897_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id190710%_
               _%eid190711%_
               _%rebind?190712%_
               _%phi190713%_
               _%ctx190714%_)
        (gx#bind-identifier!__%
         _%id190710%_
         (let ((__obj193874
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj193874
            _%eid190711%_
            (gx#core-identifier-key _%id190710%_)
            _%phi190713%_)
           __obj193874)
         _%rebind?190712%_
         _%phi190713%_
         _%ctx190714%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id190719%_ _%eid190720%_)
        (let* ((_%rebind?190722%_ '#f)
               (_%phi190724%_ (gx#current-expander-phi))
               (_%ctx190726%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id190719%_
           _%eid190720%_
           _%rebind?190722%_
           _%phi190724%_
           _%ctx190726%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id190728%_ _%eid190729%_ _%rebind?190730%_)
        (let* ((_%phi190732%_ (gx#current-expander-phi))
               (_%ctx190734%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id190728%_
           _%eid190729%_
           _%rebind?190730%_
           _%phi190732%_
           _%ctx190734%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id190736%_ _%eid190737%_ _%rebind?190738%_ _%phi190739%_)
        (let ((_%ctx190741%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id190736%_
           _%eid190737%_
           _%rebind?190738%_
           _%phi190739%_
           _%ctx190741%_))))
    (define gx#core-bind-extern!
      (lambda _g193899_
        (let ((_g193900_ (##length _g193899_)))
          (cond ((##fx= _g193900_ 2) (apply gx#core-bind-extern!__0 _g193899_))
                ((##fx= _g193900_ 3) (apply gx#core-bind-extern!__1 _g193899_))
                ((##fx= _g193900_ 4) (apply gx#core-bind-extern!__2 _g193899_))
                ((##fx= _g193900_ 5) (apply gx#core-bind-extern!__% _g193899_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g193899_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id190664%_
               _%e190665%_
               _%rebind?190666%_
               _%phi190667%_
               _%ctx190668%_)
        (gx#bind-identifier!__%
         _%id190664%_
         (let ((_%key190673%_ (gx#core-identifier-key _%id190664%_))
               (_%e190674%_
                (if (or (##structure-instance-of? _%e190665%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e190665%_
                         'gx#expander-context::t))
                    _%e190665%_
                    (##structure
                     gx#user-expander::t
                     _%e190665%_
                     _%ctx190668%_
                     _%phi190667%_))))
           (let ((__obj193875
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj193875
              (gx#make-binding-id__%
               _%key190673%_
               '#t
               _%phi190667%_
               _%ctx190668%_)
              _%key190673%_
              _%phi190667%_
              _%e190674%_)
             __obj193875))
         _%rebind?190666%_
         _%phi190667%_
         _%ctx190668%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id190679%_ _%e190680%_)
        (let* ((_%rebind?190682%_ '#f)
               (_%phi190684%_ (gx#current-expander-phi))
               (_%ctx190686%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id190679%_
           _%e190680%_
           _%rebind?190682%_
           _%phi190684%_
           _%ctx190686%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id190688%_ _%e190689%_ _%rebind?190690%_)
        (let* ((_%phi190692%_ (gx#current-expander-phi))
               (_%ctx190694%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id190688%_
           _%e190689%_
           _%rebind?190690%_
           _%phi190692%_
           _%ctx190694%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id190696%_ _%e190697%_ _%rebind?190698%_ _%phi190699%_)
        (let ((_%ctx190701%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id190696%_
           _%e190697%_
           _%rebind?190698%_
           _%phi190699%_
           _%ctx190701%_))))
    (define gx#core-bind-syntax!
      (lambda _g193901_
        (let ((_g193902_ (##length _g193901_)))
          (cond ((##fx= _g193902_ 2) (apply gx#core-bind-syntax!__0 _g193901_))
                ((##fx= _g193902_ 3) (apply gx#core-bind-syntax!__1 _g193901_))
                ((##fx= _g193902_ 4) (apply gx#core-bind-syntax!__2 _g193901_))
                ((##fx= _g193902_ 5) (apply gx#core-bind-syntax!__% _g193901_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g193901_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id190647%_ _%e190648%_ _%rebind?190649%_)
        (gx#core-bind-syntax!__%
         _%id190647%_
         _%e190648%_
         _%rebind?190649%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id190654%_ _%e190655%_)
        (let ((_%rebind?190657%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id190654%_
           _%e190655%_
           _%rebind?190657%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g193903_
        (let ((_g193904_ (##length _g193903_)))
          (cond ((##fx= _g193904_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g193903_))
                ((##fx= _g193904_ 3)
                 (apply gx#core-bind-root-syntax!__% _g193903_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g193903_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id190605%_
               _%alias-id190606%_
               _%rebind?190607%_
               _%phi190608%_
               _%ctx190609%_)
        (gx#bind-identifier!__%
         _%id190605%_
         (let* ((_%key190611%_ (gx#core-identifier-key _%id190605%_))
                (__obj193876
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj193876
            (gx#make-binding-id__%
             _%key190611%_
             '#t
             _%phi190608%_
             _%ctx190609%_)
            _%key190611%_
            _%phi190608%_
            _%alias-id190606%_)
           __obj193876)
         _%rebind?190607%_
         _%phi190608%_
         _%ctx190609%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id190616%_ _%alias-id190617%_)
        (let* ((_%rebind?190619%_ '#f)
               (_%phi190621%_ (gx#current-expander-phi))
               (_%ctx190623%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id190616%_
           _%alias-id190617%_
           _%rebind?190619%_
           _%phi190621%_
           _%ctx190623%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id190625%_ _%alias-id190626%_ _%rebind?190627%_)
        (let* ((_%phi190629%_ (gx#current-expander-phi))
               (_%ctx190631%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id190625%_
           _%alias-id190626%_
           _%rebind?190627%_
           _%phi190629%_
           _%ctx190631%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id190633%_ _%alias-id190634%_ _%rebind?190635%_ _%phi190636%_)
        (let ((_%ctx190638%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id190633%_
           _%alias-id190634%_
           _%rebind?190635%_
           _%phi190636%_
           _%ctx190638%_))))
    (define gx#core-bind-alias!
      (lambda _g193905_
        (let ((_g193906_ (##length _g193905_)))
          (cond ((##fx= _g193906_ 2) (apply gx#core-bind-alias!__0 _g193905_))
                ((##fx= _g193906_ 3) (apply gx#core-bind-alias!__1 _g193905_))
                ((##fx= _g193906_ 4) (apply gx#core-bind-alias!__2 _g193905_))
                ((##fx= _g193906_ 5) (apply gx#core-bind-alias!__% _g193905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g193905_))))))
    (define gx#make-binding-id__%
      (lambda (_%key190555%_ _%syntax?190556%_ _%phi190557%_ _%ctx190558%_)
        (if (uninterned-symbol? _%key190555%_)
            (##gensym 'L)
            (if (pair? _%key190555%_)
                (gensym (##car _%key190555%_))
                (if (##structure-instance-of? _%ctx190558%_ 'gx#top-context::t)
                    (let ((_%ns190563%_
                           (gx#core-context-namespace__% _%ctx190558%_)))
                      (if (and (fxzero? _%phi190557%_) (not _%syntax?190556%_))
                          (if _%ns190563%_
                              (make-symbol__1 _%ns190563%_ '"#" _%key190555%_)
                              _%key190555%_)
                          (if _%syntax?190556%_
                              (make-symbol__1
                               (let ((_%$e190567%_ _%ns190563%_))
                                 (if _%$e190567%_ _%$e190567%_ '""))
                               '"[:"
                               (number->string _%phi190557%_)
                               '":]#"
                               _%key190555%_)
                              (make-symbol__1
                               (let ((_%$e190571%_ _%ns190563%_))
                                 (if _%$e190571%_ _%$e190571%_ '""))
                               '"["
                               (number->string _%phi190557%_)
                               '"]#"
                               _%key190555%_))))
                    (gensym _%key190555%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key190578%_)
        (let* ((_%syntax?190580%_ '#f)
               (_%phi190582%_ (gx#current-expander-phi))
               (_%ctx190584%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key190578%_
           _%syntax?190580%_
           _%phi190582%_
           _%ctx190584%_))))
    (define gx#make-binding-id__1
      (lambda (_%key190586%_ _%syntax?190587%_)
        (let* ((_%phi190589%_ (gx#current-expander-phi))
               (_%ctx190591%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key190586%_
           _%syntax?190587%_
           _%phi190589%_
           _%ctx190591%_))))
    (define gx#make-binding-id__2
      (lambda (_%key190593%_ _%syntax?190594%_ _%phi190595%_)
        (let ((_%ctx190597%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key190593%_
           _%syntax?190594%_
           _%phi190595%_
           _%ctx190597%_))))
    (define gx#make-binding-id
      (lambda _g193907_
        (let ((_g193908_ (##length _g193907_)))
          (cond ((##fx= _g193908_ 1) (apply gx#make-binding-id__0 _g193907_))
                ((##fx= _g193908_ 2) (apply gx#make-binding-id__1 _g193907_))
                ((##fx= _g193908_ 3) (apply gx#make-binding-id__2 _g193907_))
                ((##fx= _g193908_ 4) (apply gx#make-binding-id__% _g193907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g193907_))))))))
